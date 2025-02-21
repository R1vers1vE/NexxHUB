local ExpGui = Instance.new("ScreenGui")
local Back = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local Back2 = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Front = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local UIGradient_2 = Instance.new("UIGradient")
local UICorner_3 = Instance.new("UICorner")
local Button1 = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local Button2 = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local Button3 = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local Button6 = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local Button5 = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local Button4 = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local Button9 = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local Button8 = Instance.new("TextButton")
local UICorner_11 = Instance.new("UICorner")
local Button7 = Instance.new("TextButton")
local UICorner_12 = Instance.new("UICorner")
local Button12 = Instance.new("TextButton")
local UICorner_13 = Instance.new("UICorner")
local Button11 = Instance.new("TextButton")
local UICorner_14 = Instance.new("UICorner")
local Button10 = Instance.new("TextButton")
local UICorner_15 = Instance.new("UICorner")

--Properties:

ExpGui.Name = "ExpGui"
ExpGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ExpGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ExpGui.DisplayOrder = 1

Back.Name = "Back"
Back.Parent = ExpGui
Back.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Back.BackgroundTransparency = 1.000
Back.BorderColor3 = Color3.fromRGB(0, 0, 0)
Back.BorderSizePixel = 0
Back.Position = UDim2.new(0.274032474, 0, 0.24626866, 0)
Back.Selectable = true
Back.Size = UDim2.new(0.451310873, 0, 0.51243782, 0)
Back.Image = "rbxassetid://12817567427"

UICorner.CornerRadius = UDim.new(0, 25)
UICorner.Parent = Back

Back2.Name = "Back2"
Back2.Parent = Back
Back2.Active = true
Back2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Back2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Back2.BorderSizePixel = 0
Back2.LayoutOrder = 1
Back2.Position = UDim2.new(0.118116617, 0, 0.119415879, 0)
Back2.Selectable = true
Back2.Size = UDim2.new(0.764868617, 0, 0.757281542, 0)
Back2.ZIndex = 900

TextLabel.Parent = Back2
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0197629184, 0, -0.022435898, 0)
TextLabel.Size = UDim2.new(0.49005425, 0, 0.160256416, 0)
TextLabel.Font = Enum.Font.Unknown
TextLabel.Text = "Scripted by Nexx Dev"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

Front.Name = "Front"
Front.Parent = Back2
Front.Active = true
Front.BackgroundColor3 = Color3.fromRGB(106, 106, 106)
Front.BorderColor3 = Color3.fromRGB(0, 0, 0)
Front.BorderSizePixel = 0
Front.Position = UDim2.new(0.0197629184, 0, 0.101703055, 0)
Front.Size = UDim2.new(0.962025344, 0, 0.858974338, 0)
Front.ZIndex = 99999

UICorner_2.CornerRadius = UDim.new(0, 25)
UICorner_2.Parent = Front

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(25, 0, 72)), ColorSequenceKeypoint.new(0.32, Color3.fromRGB(26, 0, 75)), ColorSequenceKeypoint.new(0.47, Color3.fromRGB(43, 0, 122)), ColorSequenceKeypoint.new(0.67, Color3.fromRGB(70, 0, 182)), ColorSequenceKeypoint.new(0.92, Color3.fromRGB(41, 0, 116)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(31, 0, 88))}
UIGradient.Rotation = 23
UIGradient.Parent = Front

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(25, 0, 72)), ColorSequenceKeypoint.new(0.32, Color3.fromRGB(26, 0, 75)), ColorSequenceKeypoint.new(0.47, Color3.fromRGB(43, 0, 122)), ColorSequenceKeypoint.new(0.67, Color3.fromRGB(70, 0, 182)), ColorSequenceKeypoint.new(0.92, Color3.fromRGB(41, 0, 116)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(31, 0, 88))}
UIGradient_2.Rotation = 23
UIGradient_2.Parent = Back2

UICorner_3.CornerRadius = UDim.new(0, 25)
UICorner_3.Parent = Back2

Button1.Name = "Button1"
Button1.Parent = Back2
Button1.BackgroundColor3 = Color3.fromRGB(35, 0, 111)
Button1.BorderColor3 = Color3.fromRGB(255, 255, 255)
Button1.BorderSizePixel = 0
Button1.Position = UDim2.new(0.0408536009, 0, 0.137198612, 0)
Button1.Selectable = false
Button1.Size = UDim2.new(0.283905953, 0, 0.160256416, 0)
Button1.ZIndex = 9999999
Button1.Font = Enum.Font.Unknown
Button1.Text = "Infinity Yield"
Button1.TextColor3 = Color3.fromRGB(255, 255, 255)
Button1.TextScaled = true
Button1.TextSize = 14.000
Button1.TextWrapped = true

UICorner_4.CornerRadius = UDim.new(0, 13)
UICorner_4.Parent = Button1

Button2.Name = "Button2"
Button2.Parent = Back2
Button2.BackgroundColor3 = Color3.fromRGB(35, 0, 111)
Button2.BorderColor3 = Color3.fromRGB(255, 255, 255)
Button2.BorderSizePixel = 0
Button2.Position = UDim2.new(0.357309282, 0, 0.137198612, 0)
Button2.Selectable = false
Button2.Size = UDim2.new(0.283905953, 0, 0.160256416, 0)
Button2.ZIndex = 9999999
Button2.Font = Enum.Font.Unknown
Button2.Text = "-"
Button2.TextColor3 = Color3.fromRGB(255, 255, 255)
Button2.TextScaled = true
Button2.TextSize = 14.000
Button2.TextWrapped = true

UICorner_5.CornerRadius = UDim.new(0, 13)
UICorner_5.Parent = Button2

Button3.Name = "Button3"
Button3.Parent = Back2
Button3.BackgroundColor3 = Color3.fromRGB(35, 0, 111)
Button3.BorderColor3 = Color3.fromRGB(255, 255, 255)
Button3.BorderSizePixel = 0
Button3.Position = UDim2.new(0.675573289, 0, 0.137198612, 0)
Button3.Selectable = false
Button3.Size = UDim2.new(0.283905953, 0, 0.160256416, 0)
Button3.ZIndex = 9999999
Button3.Font = Enum.Font.Unknown
Button3.Text = "-"
Button3.TextColor3 = Color3.fromRGB(255, 255, 255)
Button3.TextScaled = true
Button3.TextSize = 14.000
Button3.TextWrapped = true

UICorner_6.CornerRadius = UDim.new(0, 13)
UICorner_6.Parent = Button3

Button6.Name = "Button6"
Button6.Parent = Back2
Button6.BackgroundColor3 = Color3.fromRGB(35, 0, 111)
Button6.BorderColor3 = Color3.fromRGB(255, 255, 255)
Button6.BorderSizePixel = 0
Button6.Position = UDim2.new(0.673765004, 0, 0.335916579, 0)
Button6.Selectable = false
Button6.Size = UDim2.new(0.283905953, 0, 0.160256416, 0)
Button6.ZIndex = 9999999
Button6.Font = Enum.Font.Unknown
Button6.Text = "-"
Button6.TextColor3 = Color3.fromRGB(255, 255, 255)
Button6.TextScaled = true
Button6.TextSize = 14.000
Button6.TextWrapped = true

UICorner_7.CornerRadius = UDim.new(0, 13)
UICorner_7.Parent = Button6

Button5.Name = "Button5"
Button5.Parent = Back2
Button5.BackgroundColor3 = Color3.fromRGB(35, 0, 111)
Button5.BorderColor3 = Color3.fromRGB(255, 255, 255)
Button5.BorderSizePixel = 0
Button5.Position = UDim2.new(0.355500966, 0, 0.335916579, 0)
Button5.Selectable = false
Button5.Size = UDim2.new(0.283905953, 0, 0.160256416, 0)
Button5.ZIndex = 9999999
Button5.Font = Enum.Font.Unknown
Button5.Text = "-"
Button5.TextColor3 = Color3.fromRGB(255, 255, 255)
Button5.TextScaled = true
Button5.TextSize = 14.000
Button5.TextWrapped = true

UICorner_8.CornerRadius = UDim.new(0, 13)
UICorner_8.Parent = Button5

Button4.Name = "Button4"
Button4.Parent = Back2
Button4.BackgroundColor3 = Color3.fromRGB(35, 0, 111)
Button4.BorderColor3 = Color3.fromRGB(255, 255, 255)
Button4.BorderSizePixel = 0
Button4.Position = UDim2.new(0.0390452817, 0, 0.335916579, 0)
Button4.Selectable = false
Button4.Size = UDim2.new(0.283905953, 0, 0.160256416, 0)
Button4.ZIndex = 9999999
Button4.Font = Enum.Font.Unknown
Button4.Text = "-"
Button4.TextColor3 = Color3.fromRGB(255, 255, 255)
Button4.TextScaled = true
Button4.TextSize = 14.000
Button4.TextWrapped = true

UICorner_9.CornerRadius = UDim.new(0, 13)
UICorner_9.Parent = Button4

Button9.Name = "Button9"
Button9.Parent = Back2
Button9.BackgroundColor3 = Color3.fromRGB(35, 0, 111)
Button9.BorderColor3 = Color3.fromRGB(255, 255, 255)
Button9.BorderSizePixel = 0
Button9.Position = UDim2.new(0.675573289, 0, 0.550660133, 0)
Button9.Selectable = false
Button9.Size = UDim2.new(0.283905953, 0, 0.160256416, 0)
Button9.ZIndex = 9999999
Button9.Font = Enum.Font.Unknown
Button9.Text = "-"
Button9.TextColor3 = Color3.fromRGB(255, 255, 255)
Button9.TextScaled = true
Button9.TextSize = 14.000
Button9.TextWrapped = true

UICorner_10.CornerRadius = UDim.new(0, 13)
UICorner_10.Parent = Button9

Button8.Name = "Button8"
Button8.Parent = Back2
Button8.BackgroundColor3 = Color3.fromRGB(35, 0, 111)
Button8.BorderColor3 = Color3.fromRGB(255, 255, 255)
Button8.BorderSizePixel = 0
Button8.Position = UDim2.new(0.357309282, 0, 0.550660133, 0)
Button8.Selectable = false
Button8.Size = UDim2.new(0.283905953, 0, 0.160256416, 0)
Button8.ZIndex = 9999999
Button8.Font = Enum.Font.Unknown
Button8.Text = "-"
Button8.TextColor3 = Color3.fromRGB(255, 255, 255)
Button8.TextScaled = true
Button8.TextSize = 14.000
Button8.TextWrapped = true

UICorner_11.CornerRadius = UDim.new(0, 13)
UICorner_11.Parent = Button8

Button7.Name = "Button7"
Button7.Parent = Back2
Button7.BackgroundColor3 = Color3.fromRGB(35, 0, 111)
Button7.BorderColor3 = Color3.fromRGB(255, 255, 255)
Button7.BorderSizePixel = 0
Button7.Position = UDim2.new(0.0408536009, 0, 0.550660133, 0)
Button7.Selectable = false
Button7.Size = UDim2.new(0.283905953, 0, 0.160256416, 0)
Button7.ZIndex = 9999999
Button7.Font = Enum.Font.Unknown
Button7.Text = "-"
Button7.TextColor3 = Color3.fromRGB(255, 255, 255)
Button7.TextScaled = true
Button7.TextSize = 14.000
Button7.TextWrapped = true

UICorner_12.CornerRadius = UDim.new(0, 13)
UICorner_12.Parent = Button7

Button12.Name = "Button12"
Button12.Parent = Back2
Button12.BackgroundColor3 = Color3.fromRGB(35, 0, 111)
Button12.BorderColor3 = Color3.fromRGB(255, 255, 255)
Button12.BorderSizePixel = 0
Button12.Position = UDim2.new(0.675573289, 0, 0.755788386, 0)
Button12.Selectable = false
Button12.Size = UDim2.new(0.283905953, 0, 0.160256416, 0)
Button12.ZIndex = 9999999
Button12.Font = Enum.Font.Unknown
Button12.Text = "-"
Button12.TextColor3 = Color3.fromRGB(255, 255, 255)
Button12.TextScaled = true
Button12.TextSize = 14.000
Button12.TextWrapped = true

UICorner_13.CornerRadius = UDim.new(0, 13)
UICorner_13.Parent = Button12

Button11.Name = "Button11"
Button11.Parent = Back2
Button11.BackgroundColor3 = Color3.fromRGB(35, 0, 111)
Button11.BorderColor3 = Color3.fromRGB(255, 255, 255)
Button11.BorderSizePixel = 0
Button11.Position = UDim2.new(0.357309282, 0, 0.755788386, 0)
Button11.Selectable = false
Button11.Size = UDim2.new(0.283905953, 0, 0.160256416, 0)
Button11.ZIndex = 9999999
Button11.Font = Enum.Font.Unknown
Button11.Text = "-"
Button11.TextColor3 = Color3.fromRGB(255, 255, 255)
Button11.TextScaled = true
Button11.TextSize = 14.000
Button11.TextWrapped = true

UICorner_14.CornerRadius = UDim.new(0, 13)
UICorner_14.Parent = Button11

Button10.Name = "Button10"
Button10.Parent = Back2
Button10.BackgroundColor3 = Color3.fromRGB(35, 0, 111)
Button10.BorderColor3 = Color3.fromRGB(255, 255, 255)
Button10.BorderSizePixel = 0
Button10.Position = UDim2.new(0.0408536009, 0, 0.755788386, 0)
Button10.Selectable = false
Button10.Size = UDim2.new(0.283905953, 0, 0.160256416, 0)
Button10.ZIndex = 9999999
Button10.Font = Enum.Font.Unknown
Button10.Text = "-"
Button10.TextColor3 = Color3.fromRGB(255, 255, 255)
Button10.TextScaled = true
Button10.TextSize = 14.000
Button10.TextWrapped = true

UICorner_15.CornerRadius = UDim.new(0, 13)
UICorner_15.Parent = Button10

-- Scripts:

local function KRNQ_fake_script() -- Button1.LocalScript 
	local script = Instance.new('LocalScript', Button1)

	local button = script.Parent
	button.MouseButton1Click:Connect(function()
		print("Запуск Infinite Yield...")
	
		loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
	end)
end
coroutine.wrap(KRNQ_fake_script)()
local function SEQFSX_fake_script() -- Back.SmoothDrag 
	local script = Instance.new('LocalScript', Back)

	local frame = script.Parent
	local dragging
	local dragSpeed = 0.2
	local dragStart = nil
	local startPos = nil
	local uis = game:GetService'UserInputService'
	local TweenService = game:GetService'TweenService'
	local function updateInput(inp)
		local e = inp.Position - dragStart
		local pos = UDim2.new(
			startPos.X.Scale,
			startPos.X.Offset + e.X, 
			startPos.Y.Scale, 
			startPos.Y.Offset + e.Y
		)
		TweenService:Create(frame, TweenInfo.new(dragSpeed), {Position = pos}):Play()
		TweenService:Create(frame, TweenInfo.new(dragSpeed), {Position = pos}):Play()
	end
	
	frame.InputBegan:Connect(function(inp)
		if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = inp.Position
			startPos = frame.Position
			inp.Changed:Connect(function()
				if inp.UserInputState == Enum.UserInputState.End then
					dragging =  false
				end
			end)
		end 
	end)
	
	uis.InputChanged:Connect(function(inp)
			if inp.UserInputType == Enum.UserInputType.MouseMovement or inp.UserInputType == Enum.UserInputType.Touch then
				if dragging then
					updateInput(inp)
				end
			end
	end)
end
coroutine.wrap(SEQFSX_fake_script)()
local function DFXRFFH_fake_script() -- ExpGui.Activate 
	local script = Instance.new('LocalScript', ExpGui)

	local UserInputService = game:GetService("UserInputService")
	local TweenService = game:GetService("TweenService")
	
	local ExpGui = script.Parent
	local fadeDuration = 0.09
	local isVisible = false
	
	-- Устанавливаем прозрачность и отключаем объект при старте
	local function setTransparency(transparency)
		for _, element in pairs(ExpGui:GetDescendants()) do
			if element:IsA("Frame") or element:IsA("TextLabel") or element:IsA("TextButton") or element:IsA("ImageLabel") then
				if element:IsA("Frame") or element:IsA("TextButton") then
					element.BackgroundTransparency = transparency
				end
				if element:IsA("TextLabel") or element:IsA("TextButton") then
					element.TextTransparency = transparency
				end
				if element:IsA("ImageLabel") then
					element.ImageTransparency = transparency
				end
			end
		end
	end
	
	setTransparency(1) -- Устанавливаем полную прозрачность
	ExpGui.Enabled = false -- Отключаем объект при старте
	
	local function toggleGui()
		local targetTransparency = isVisible and 1 or 0
	
		local tweenInfo = TweenInfo.new(
			fadeDuration,
			Enum.EasingStyle.Linear,
			Enum.EasingDirection.InOut
		)
	
		local tweens = {}
		local tweenCompleted = 0
	
		-- Включаем объект, если он становится видимым
		if not isVisible then
			ExpGui.Enabled = true
		end
	
		for _, element in pairs(ExpGui:GetDescendants()) do
			if element:IsA("Frame") or element:IsA("TextLabel") or element:IsA("TextButton") or element:IsA("ImageLabel") then
				local tweenProperties = {}
	
				if element:IsA("Frame") or element:IsA("TextButton") then
					tweenProperties.BackgroundTransparency = targetTransparency
				end
				if element:IsA("TextLabel") or element:IsA("TextButton") then
					tweenProperties.TextTransparency = targetTransparency
				end
				if element:IsA("ImageLabel") then
					tweenProperties.ImageTransparency = targetTransparency
				end
	
				local tween = TweenService:Create(element, tweenInfo, tweenProperties)
				table.insert(tweens, tween)
	
				tween.Completed:Connect(function()
					tweenCompleted = tweenCompleted + 1
					if tweenCompleted == #tweens and targetTransparency == 1 then
						ExpGui.Enabled = false -- Отключаем объект, если он стал невидимым
					end
				end)
	
				tween:Play()
			end
		end
	
		isVisible = not isVisible
	end
	
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then return end
	
		if input.KeyCode == Enum.KeyCode.RightShift then
			toggleGui()
		end
	end)
end
coroutine.wrap(DFXRFFH_fake_script)()