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





-- > Declarations < --

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local LP = Players.LocalPlayer

local isBusy = false -- защита от повторного нажатия пока идёт телепорт

-- > Function < --

local function TeleportUnderMap()
	if isBusy then return end

	local character = LP.Character
	if not character then return end

	local hrp = character:FindFirstChild("HumanoidRootPart")
	if not hrp then return end

	isBusy = true

	workspace.FallenPartsDestroyHeight = -1000
	local lastCFrame = hrp.CFrame

	hrp.CFrame = CFrame.new(Vector3.new(0, -500, 0))

	task.wait(0.7)

	-- проверяем что персонаж ещё существует
	if hrp and hrp.Parent then
		hrp.CFrame = lastCFrame
	end

	workspace.FallenPartsDestroyHeight = -500

	isBusy = false
end

-- > Input < --

UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end
	if input.KeyCode == Enum.KeyCode.U then
		TeleportUnderMap()
	end
end)















--[[
	Крестик вместо курсора мыши + вместо шифтлока
	Без картинок, всё рисуется кодом
]]

local Players     = game:GetService("Players")
local UIS         = game:GetService("UserInputService")
local RunService  = game:GetService("RunService")
local CoreGui     = game:GetService("CoreGui")
local player      = Players.LocalPlayer

-- ============ НАСТРОЙКИ ============
local CURSOR_SIZE    = 14   -- размер крестика курсора
local CURSOR_THICK   = 2    -- толщина линий
local SHIFTLOCK_SIZE = 10   -- размер крестика в шифтлоке
local SHIFTLOCK_THICK = 2
local COLOR          = Color3.fromRGB(255, 255, 255) -- белый
local OUTLINE_COLOR  = Color3.fromRGB(0, 0, 0)       -- чёрная обводка
local OUTLINE        = true
-- ===================================

-- чистим старое
for _, v in ipairs(CoreGui:GetChildren()) do
	if v.Name == "MyCrosshairGui" then v:Destroy() end
end
for _, v in ipairs(player:WaitForChild("PlayerGui"):GetChildren()) do
	if v.Name == "MyCrosshairGui" then v:Destroy() end
end

UIS.MouseIconEnabled = false

-- создаём гуи
local gui = Instance.new("ScreenGui")
gui.Name = "MyCrosshairGui"
gui.IgnoreGuiInset = true
gui.ResetOnSpawn = false
gui.DisplayOrder = 2147483647

local ok = pcall(function() gui.Parent = CoreGui end)
if not ok or not gui.Parent then
	gui.Parent = player:WaitForChild("PlayerGui")
end

-- функция создания крестика
local function makeCrosshair(parent, size, thick)
	local holder = Instance.new("Frame")
	holder.Name = "Crosshair"
	holder.Size = UDim2.fromOffset(size, size)
	holder.BackgroundTransparency = 1
	holder.AnchorPoint = Vector2.new(0.5, 0.5)
	holder.ZIndex = 10
	holder.Parent = parent

	local function line(w, h, pos, color, z)
		local f = Instance.new("Frame")
		f.Size = UDim2.fromOffset(w, h)
		f.Position = UDim2.new(0.5, pos.X, 0.5, pos.Y)
		f.AnchorPoint = Vector2.new(0.5, 0.5)
		f.BackgroundColor3 = color
		f.BorderSizePixel = 0
		f.ZIndex = z
		f.Parent = holder
		return f
	end

	-- обводка (чуть толще, чёрная, сзади)
	if OUTLINE then
		line(size + 2, thick + 2, Vector2.new(0, 0), OUTLINE_COLOR, 1) -- горизонт
		line(thick + 2, size + 2, Vector2.new(0, 0), OUTLINE_COLOR, 1) -- вертикал
	end

	-- сам крестик (белый, спереди)
	line(size, thick, Vector2.new(0, 0), COLOR, 2) -- горизонтальная линия
	line(thick, size, Vector2.new(0, 0), COLOR, 2) -- вертикальная линия

	return holder
end

-- КУРСОР
local cursor = makeCrosshair(gui, CURSOR_SIZE, CURSOR_THICK)

-- ШИФТЛОК
local shift = makeCrosshair(gui, SHIFTLOCK_SIZE, SHIFTLOCK_THICK)
shift.Visible = false

-- позиция шифтлока — центр экрана
local function setShiftPos()
	local cam = workspace.CurrentCamera
	if cam then
		local vp = cam.ViewportSize
		shift.Position = UDim2.fromOffset(vp.X / 2, vp.Y / 2)
	end
end
setShiftPos()
workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(setShiftPos)

-- движение курсора + переключение
RunService.RenderStepped:Connect(function()
	local loc = UIS:GetMouseLocation()
	cursor.Position = UDim2.fromOffset(loc.X, loc.Y)

	if UIS.MouseBehavior == Enum.MouseBehavior.LockCenter then
		shift.Visible = true
		cursor.Visible = false
	else
		shift.Visible = false
		cursor.Visible = true
	end
end)

-- цикл на случай если игра включает системный курсор обратно
task.spawn(function()
	while task.wait(0.2) do
		if UIS.MouseIconEnabled then
			UIS.MouseIconEnabled = false
		end
		if not gui.Parent then
			pcall(function() gui.Parent = CoreGui end)
			if not gui.Parent then gui.Parent = player:WaitForChild("PlayerGui") end
		end
	end
end)

print("[Crosshair] Крестик установлен")
