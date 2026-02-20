-- LunarUI
-- Your personal UI framework foundation

local LunarUI = {}
LunarUI.__index = LunarUI

-- Services
local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Default Theme
local DefaultTheme = {
	Accent = Color3.fromRGB(255, 255, 255),
	Background = Color3.fromRGB(15, 15, 15),
	Text = Color3.fromRGB(255, 255, 255),
	Border = Color3.fromRGB(40, 40, 40),

	Window = Color3.fromRGB(20, 20, 20),
	WindowBorder = Color3.fromRGB(50, 50, 50),

	TitleBar = Color3.fromRGB(25, 25, 25),
	TitleBarText = Color3.fromRGB(255, 255, 255),

	Button = Color3.fromRGB(35, 35, 35),
	ButtonText = Color3.fromRGB(255, 255, 255),
	ButtonBorder = Color3.fromRGB(50, 50, 50),
}

-- Constructor
function LunarUI.new(config)
	local self = setmetatable({}, LunarUI)

	self.Theme = DefaultTheme
	self.Name = config.Name or "LunarUI"
	self.Size = config.Size or UDim2.fromOffset(500, 350)

	self:_Init()

	return self
end

-- Init GUI
function LunarUI:_Init()
	self.Gui = Instance.new("ScreenGui")
	self.Gui.Name = self.Name
	self.Gui.ResetOnSpawn = false
	self.Gui.Parent = player:WaitForChild("PlayerGui")

	self.Window = Instance.new("Frame")
	self.Window.Size = self.Size
	self.Window.Position = UDim2.fromScale(0.5, 0.5)
	self.Window.AnchorPoint = Vector2.new(0.5, 0.5)
	self.Window.BackgroundColor3 = self.Theme.Window
	self.Window.BorderColor3 = self.Theme.WindowBorder
	self.Window.Parent = self.Gui

	-- TitleBar
	self.TitleBar = Instance.new("Frame")
	self.TitleBar.Size = UDim2.new(1, 0, 0, 40)
	self.TitleBar.BackgroundColor3 = self.Theme.TitleBar
	self.TitleBar.BorderSizePixel = 0
	self.TitleBar.Parent = self.Window

	self.TitleLabel = Instance.new("TextLabel")
	self.TitleLabel.Size = UDim2.new(1, -10, 1, 0)
	self.TitleLabel.Position = UDim2.fromOffset(10, 0)
	self.TitleLabel.BackgroundTransparency = 1
	self.TitleLabel.Text = self.Name
	self.TitleLabel.Font = Enum.Font.GothamBold
	self.TitleLabel.TextSize = 16
	self.TitleLabel.TextColor3 = self.Theme.TitleBarText
	self.TitleLabel.Parent = self.TitleBar
end

-- Create Button
function LunarUI:CreateButton(config)
	local button = Instance.new("TextButton")
	button.Size = UDim2.fromOffset(150, 40)
	button.Position = UDim2.fromOffset(30, 80)
	button.Text = config.Name or "Button"
	button.Font = Enum.Font.Gotham
	button.TextSize = 14
	button.BackgroundColor3 = self.Theme.Button
	button.BorderColor3 = self.Theme.ButtonBorder
	button.TextColor3 = self.Theme.ButtonText
	button.Parent = self.Window

	if config.Callback then
		button.MouseButton1Click:Connect(config.Callback)
	end

	return button
end

-- Return constructor function for loadstring
return function(config)
	return LunarUI.new(config or {})
end
