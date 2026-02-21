local Theme = {}
--Theme.__index = Theme

--// Default Theme (COLORS ARE WRONG)
Theme.theme = {
	-- Core
	Name ="Default",
	Accent = Color3.fromRGB(255, 255, 255),
	Text = Color3.fromRGB(255, 255, 255),
	TextDisabled = Color3.fromRGB(153, 153, 153),
	Border = Color3.fromRGB(114, 114, 114),
	Shadow = Color3.fromRGB(0, 0, 0),

	-- Buttons
	Button = Color3.fromRGB(255, 255, 255),
	ButtonBorder = Color3.fromRGB(0, 0, 0),
	ButtonText = Color3.fromRGB(0, 0, 0),
	ButtonTextDisabled = Color3.fromRGB(127, 127, 127),

	-- Sliders
	Slider = Color3.fromRGB(255, 255, 255),
	SliderBorder = Color3.fromRGB(0, 0, 0),
	SliderFill = Color3.fromRGB(0, 0, 0),

	-- Switches / Toggles
	Switch = Color3.fromRGB(0, 0, 0),
	SwitchBorder = Color3.fromRGB(0, 0, 0),
	SwitchFill = Color3.fromRGB(255, 255, 255),

	Toggle = Color3.fromRGB(0, 0, 0),
	ToggleBorder = Color3.fromRGB(0, 0, 0),
	ToggleFill = Color3.fromRGB(255, 255, 255),

	-- Tabs
	Tab = Color3.fromRGB(0, 0, 0),
	TabBorder = Color3.fromRGB(0, 0, 0),
	TabFill = Color3.fromRGB(255, 255, 255),
	TabText = Color3.fromRGB(255, 255, 255),
	TabTextDisabled = Color3.fromRGB(127, 127, 127),
	TabUnderline = Color3.fromRGB(255, 255, 255),

	-- Inputs
	TextBox = Color3.fromRGB(0, 0, 0),
	TextBoxBorder = Color3.fromRGB(0, 0, 0),
	TextBoxText = Color3.fromRGB(255, 255, 255),

	Checkbox = Color3.fromRGB(0, 0, 0),
	CheckboxBorder = Color3.fromRGB(0, 0, 0),
	CheckboxFill = Color3.fromRGB(255, 255, 255),

	Dropdown = Color3.fromRGB(0, 0, 0),
	DropdownBorder = Color3.fromRGB(0, 0, 0),

	-- Misc
	ScrollThumb = Color3.fromRGB(100, 100, 100),

	Tooltip = Color3.fromRGB(0, 0, 0),
	TooltipBorder = Color3.fromRGB(0, 0, 0),
	TooltipText = Color3.fromRGB(255, 255, 255),

	-- Window / Titlebar
	Window = Color3.fromRGB(0, 0, 0),
	WindowBorder = Color3.fromRGB(0, 0, 0),

	TitleBar = Color3.fromRGB(0, 0, 0),
	TitleBarBorder = Color3.fromRGB(0, 0, 0),
	TitleBarText = Color3.fromRGB(255, 255, 255),

	TitleBarIcon = Color3.fromRGB(255, 255, 255),
	TitleBarIconHover = Color3.fromRGB(220, 220, 220),
	TitleBarIconPress = Color3.fromRGB(180, 180, 180),

	TitleBarClose = Color3.fromRGB(255, 0, 0),
	TitleBarCloseHover = Color3.fromRGB(170, 0, 0),
	TitleBarClosePress = Color3.fromRGB(100, 0, 0),
}

return Theme
