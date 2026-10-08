loadstring(game:HttpGet("https://raw.githubusercontent.com/GZSSF/script3/95a45577475502cfbf546ae9ca8fc4f00b61eb83/script3"))()

loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()

loadstring(game:HttpGet("https://raw.githubusercontent.com/protezzx/Player-joined-left/refs/heads/main/Antifling%20script",true))()




-- > Declarations < --

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local LP = Players.LocalPlayer

local roles
local highlightEnabled = false
local Murder, Sheriff, Hero

-- > Functions < --

function CreateHighlight() -- создаём Highlight для новых игроков
	if highlightEnabled then
		for i, v in pairs(Players:GetChildren()) do
			if v ~= LP and v.Character and not v.Character:FindFirstChild("Highlight") then
				Instance.new("Highlight", v.Character)
			end
		end
	end
end

function UpdateHighlights() -- обновляем цвета по ролям
	if highlightEnabled then
		for _, v in pairs(Players:GetChildren()) do
			if v ~= LP and v.Character and v.Character:FindFirstChild("Highlight") then
				local Highlight = v.Character:FindFirstChild("Highlight")

				if v.Name == Sheriff and IsAlive(v) then
					Highlight.FillColor = Color3.fromRGB(0, 0, 225) -- Синий для Шерифа
				elseif HasGun(v) and IsAlive(v) then
					Highlight.FillColor = Color3.fromRGB(0, 0, 225) -- Синий для нового Шерифа/Героя с пистолетом
				elseif v.Name == Murder and IsAlive(v) then
					Highlight.FillColor = Color3.fromRGB(225, 0, 0) -- Красный для Убийцы
				elseif v.Name == Hero and IsAlive(v) and not IsAlive(game.Players[Sheriff]) then
					Highlight.FillColor = Color3.fromRGB(255, 250, 0) -- Жёлтый для Героя
				else
					Highlight.FillColor = Color3.fromRGB(0, 0, 0) -- Зелёный для остальных
				end
			end
		end
	end
end

function IsAlive(Player) -- проверка жив ли игрок
	if not Player or not roles then return false end
	for i, v in pairs(roles) do
		if Player.Name == i then
			if not v.Killed and not v.Dead then
				return true
			else
				return false
			end
		end
	end
	return false
end

function HasGun(Player) -- проверка есть ли пистолет
	if not roles then return false end
	for i, v in pairs(roles) do
		if Player.Name == i and v.HasGun then
			return true
		end
	end
	return false
end

function ToggleHighlights()
	highlightEnabled = not highlightEnabled

	if highlightEnabled then
		print("[Highlights] ON")
	else
		print("[Highlights] OFF")
		-- Удаляем все Highlight при выключении
		for _, v in pairs(Players:GetChildren()) do
			if v.Character and v.Character:FindFirstChild("Highlight") then
				v.Character:FindFirstChild("Highlight"):Destroy()
			end
		end
	end
end

-- > Input < --

UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end
	if input.KeyCode == Enum.KeyCode.Y then
		ToggleHighlights()
	end
end)

-- > Loops < --

RunService.RenderStepped:Connect(function()
	if highlightEnabled then
		local data = ReplicatedStorage:FindFirstChild("GetPlayerData", true)
		if not data then return end
		roles = data:InvokeServer()
		for i, v in pairs(roles) do
			if v.Role == "Murderer" then
				Murder = i
			elseif v.Role == "Sheriff" then
				Sheriff = i
			elseif v.Role == "Hero" then
				Hero = i
			end
		end
		CreateHighlight()
		UpdateHighlights()
	end
end)
