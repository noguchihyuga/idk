function to_string(nger)
    if typeof(nger) == "string" then
        return '"' .. nger .. '"'
    end
	if typeof(nger) == "Vector3" or typeof(nger) == "CFrame" then
		return string.format("%s.new(%s)", typeof(nger), tostring(nger))
    elseif typeof(nger) == "Vector2" then
        return string.format("%s.new(%s)", typeof(nger), tostring(nger))
	elseif typeof(nger) == "UDim2" then
		return string.format("UDim2.new(%s, %s, %s, %s)", 
			tostring(nger.X.Scale), tostring(nger.X.Offset), 
			tostring(nger.Y.Scale), tostring(nger.Y.Offset))

	elseif typeof(nger) == "UDim" then
		return string.format("UDim.new(%s, %s)", tostring(nger.Scale), tostring(nger.Offset))

	elseif typeof(nger) == "Rect" then
		return string.format("Rect.new(%s, %s, %s, %s)", 
			tostring(nger.Min.X), tostring(nger.Min.Y), 
			tostring(nger.Max.X), tostring(nger.Max.Y))

	elseif typeof(nger) == "Color3" then
		return string.format("Color3.new(%s, %s, %s)", tostring(nger.R), tostring(nger.G), tostring(nger.B))

	elseif typeof(nger) == "BrickColor" then
		return string.format("BrickColor.new(\"%s\")", nger.Name)

	elseif typeof(nger) == "EnumItem" then
		return tostring(nger)

	elseif typeof(nger) == "NumberSequence" then
		local keypoints = {}
		for _, kp in ipairs(nger.Keypoints) do
			table.insert(keypoints, to_string(kp))
		end
		return string.format("NumberSequence.new({%s})", table.concat(keypoints, ", "))

	elseif typeof(nger) == "NumberSequenceKeypoint" then
		return string.format("NumberSequenceKeypoint.new(%s, %s, %s)", tostring(nger.Time), tostring(nger.Value), tostring(nger.Envelope))

	elseif typeof(nger) == "ColorSequence" then
		local keypoints = {}
		for _, kp in ipairs(nger.Keypoints) do
			table.insert(keypoints, to_string(kp))
		end
		return string.format("ColorSequence.new({%s})", table.concat(keypoints, ", "))

	elseif typeof(nger) == "ColorSequenceKeypoint" then
		return string.format("ColorSequenceKeypoint.new(%s, %s)", tostring(nger.Time), to_string(nger.Value))

	elseif typeof(nger) == "Instance" then
		return string.format("--[[ Instance: %s ]]", nger:GetFullName())

	end
	return tostring(nger)
end
local defaultproperties = {
	ScreenGui = {
		Enabled = "true",
		ResetOnSpawn = "true",
		ZIndexBehavior = "Enum.ZIndexBehavior.Global",
		IgnoreGuiInset = "false",
	},

	BillboardGui = {
		Enabled = "true",
		AlwaysOnTop = "false",
		LightInfluence = "1",
		MaxDistance = "0",
		Size = "UDim2.new(1,0,1,0)",
		StudsOffset = "Vector3.new(0,0,0)",
	},

	SurfaceGui = {
		Enabled = "true",
		Active = "true",
		CanvasSize = "Vector2.new(800, 600)",
		Face = "Enum.NormalId.Front",
		AlwaysOnTop = "false",
		LightInfluence = "1",
	},

	Frame = {
		BackgroundColor3 = "Color3.fromRGB(255, 255, 255)",
		BackgroundTransparency = "0",
		BorderColor3 = "Color3.fromRGB(27, 42, 53)",
		BorderSizePixel = "1",
		ClipsDescendants = "false",
		Visible = "true",
		ZIndex = "1",
		Rotation = "0",
		Size = "UDim2.new(1, 0, 1, 0)",
		Position = "UDim2.new(0, 0, 0, 0)",
		Active = "false",
	},

	TextLabel = {
		Text = "\"Label\"",
		TextColor3 = "Color3.fromRGB(0, 0, 0)",
		TextTransparency = "0",
		Font = "Enum.Font.Legacy",
		TextScaled = "false",
		TextSize = "14",
		TextWrapped = "false",
		TextStrokeTransparency = "1",
		TextStrokeColor3 = "Color3.fromRGB(0, 0, 0)",
		TextXAlignment = "Enum.TextXAlignment.Center",
		TextYAlignment = "Enum.TextYAlignment.Center",
	},

	TextButton = {
		Text = "\"Button\"",
		TextColor3 = "Color3.fromRGB(0, 0, 0)",
		Font = "Enum.Font.Legacy",
		TextSize = "14",
		AutoButtonColor = "true",
	},

	TextBox = {
		Text = "\"\"",
		TextColor3 = "Color3.fromRGB(0, 0, 0)",
		Font = "Enum.Font.Legacy",
		TextSize = "14",
		ClearTextOnFocus = "true",
		MultiLine = "false",
		CursorPosition = "-1",
	},

	ImageLabel = {
		Image = "\"\"",
		ImageColor3 = "Color3.fromRGB(255, 255, 255)",
		ImageTransparency = "0",
		ScaleType = "Enum.ScaleType.Stretch",
		SliceCenter = "Rect.new(0, 0, 0, 0)",
		TileSize = "UDim2.new(1, 0, 1, 0)",
	},

	ImageButton = {
		Image = "\"\"",
		ImageColor3 = "Color3.fromRGB(255, 255, 255)",
		ImageTransparency = "0",
		ScaleType = "Enum.ScaleType.Stretch",
		AutoButtonColor = "true",
	},

	ViewportFrame = {
		Ambient = "Color3.fromRGB(200, 200, 200)",
		LightDirection = "Vector3.new(0, -1, 0)",
		LightColor = "Color3.fromRGB(255, 255, 255)",
	},

	ScrollingFrame = {
		ScrollBarThickness = "12",
		CanvasSize = "UDim2.new(0, 0, 0, 0)",
		CanvasPosition = "Vector2.new(0, 0)",
		ScrollingEnabled = "true",
		ElasticBehavior = "Enum.ElasticBehavior.WhenScrollable",
		HorizontalScrollBarInset = "Enum.ScrollBarInset.None",
		VerticalScrollBarInset = "Enum.ScrollBarInset.None",
		AutomaticCanvasSize = "Enum.AutomaticSize.None",
	},

	-- UI Constraints & Layouts
	UIAspectRatioConstraint = {
		AspectRatio = "1",
		AspectType = "Enum.AspectType.FitWithinMaxSize",
		DominantAxis = "Enum.DominantAxis.Width",
	},

	UISizeConstraint = {
		MaxSize = "Vector2.new(math.huge, math.huge)",
		MinSize = "Vector2.new(0, 0)",
	},

	UITextSizeConstraint = {
		MaxTextSize = "100",
		MinTextSize = "1",
	},

	UIPadding = {
		PaddingBottom = "UDim.new(0,0)",
		PaddingLeft = "UDim.new(0,0)",
		PaddingRight = "UDim.new(0,0)",
		PaddingTop = "UDim.new(0,0)",
	},

	UIListLayout = {
		FillDirection = "Enum.FillDirection.Vertical",
		Padding = "UDim.new(0,0)",
		HorizontalAlignment = "Enum.HorizontalAlignment.Center",
		VerticalAlignment = "Enum.VerticalAlignment.Top",
		SortOrder = "Enum.SortOrder.LayoutOrder",
	},

	UIGridLayout = {
		CellSize = "UDim2.new(0,100,0,100)",
		CellPadding = "UDim2.new(0,0,0,0)",
		FillDirectionMaxCells = "0",
		StartCorner = "Enum.StartCorner.TopLeft",
		FillDirection = "Enum.FillDirection.Horizontal",
		HorizontalAlignment = "Enum.HorizontalAlignment.Center",
		VerticalAlignment = "Enum.VerticalAlignment.Top",
		SortOrder = "Enum.SortOrder.LayoutOrder",
	},

	UITableLayout = {
		FillDirection = "Enum.FillDirection.Horizontal",
		SortOrder = "Enum.SortOrder.LayoutOrder",
	},

	UIPageLayout = {
		Circular = "false",
		Animated = "true",
		EasingDirection = "Enum.EasingDirection.InOut",
		EasingStyle = "Enum.EasingStyle.Quad",
		FillDirection = "Enum.FillDirection.Horizontal",
		GamepadInputEnabled = "true",
		ScrollWheelInputEnabled = "true",
		TouchInputEnabled = "true",
		TweenTime = "0.5",
	},

	-- UI Modifiers
	UICorner = {
		CornerRadius = "UDim.new(0,0)",
	},

	UIStroke = {
		ApplyStrokeMode = "Enum.ApplyStrokeMode.Contextual",
		Color = "Color3.fromRGB(0,0,0)",
		LineJoinMode = "Enum.LineJoinMode.Round",
		Thickness = "1",
		Transparency = "0",
		Enabled = "true",
	},

	UIGradient = {
		Color = "ColorSequence.new(Color3.new(1,1,1))",
		Rotation = "0",
		Transparency = "NumberSequence.new(0)",
		Offset = "Vector2.new(0,0)",
	},
}

local UIProperties = {
	"Active",
	"AnchorPoint",
	"AutomaticSize",
	"BackgroundColor3",
	"BackgroundTransparency",
	"BorderColor3",
	"BorderMode",
	"BorderSizePixel",
	"ClipsDescendants",
	"Draggable",
	"LayoutOrder",
	"NextSelectionDown",
	"NextSelectionLeft",
	"NextSelectionRight",
	"NextSelectionUp",
	"Position",
	"Rotation",
	"Selectable",
	"SelectionOrder",
	"Size",
	"SizeConstraint",
	"Transparency",
	"Visible",
	"ZIndex",
	"Font",
	"LineHeight",
	"RichText",
	"Text",
	"TextColor3",
	"TextScaled",
	"TextSize",
	"TextStrokeColor3",
	"TextStrokeTransparency",
	"TextTransparency",
	"TextTruncate",
	"TextWrapped",
	"TextXAlignment",
	"TextYAlignment",
	"MaxVisibleGraphemes",
	"AutoButtonColor",
	"Modal",
	"Selected",
	"Style",
	"ClearTextOnFocus",
	"CursorPosition",
	"Font",
	"LineHeight",
	"MultiLine",
	"PlaceholderColor3",
	"PlaceholderText",
	"ShowNativeInput",
	"Text",
	"TextColor3",
	"TextEditable",
	"TextScaled",
	"TextSize",
	"TextStrokeColor3",
	"TextStrokeTransparency",
	"TextTransparency",
	"TextTruncate",
	"TextWrapped",
	"TextXAlignment",
	"TextYAlignment",
	"Image",
	"ImageColor3",
	"ImageRectOffset",
	"ImageRectSize",
	"ImageTransparency",
	"ScaleType",
	"SliceCenter",
	"SliceScale",
	"HoverImage",
	"PressedImage",
	"DisabledImage",
	"AutoButtonColor",
	"Modal",
	"Selected",
	"Style",
	"AbsoluteWindowSize",
	"CanvasPosition",
	"CanvasSize",
	"ElasticBehavior",
	"HorizontalScrollBarInset",
	"ScrollBarImageColor3",
	"ScrollBarImageTransparency",
	"ScrollBarThickness",
	"ScrollingDirection",
	"ScrollingEnabled",
	"VerticalScrollBarInset",
	"VerticalScrollBarPosition",
	"Looped",
	"Playing",
	"TimePosition",
	"Video",
	"Volume",
	"CornerRadius",
	"Color",
	"Enabled",
	"Offset",
	"Rotation",
	"Transparency",
	"ApplyStrokeMode",
	"Color",
	"Enabled",
	"LineJoinMode",
	"Thickness",
	"Transparency",
	"PaddingBottom",
	"PaddingLeft",
	"PaddingRight",
	"PaddingTop",
	"AspectRatio",
	"AspectType",
	"DominantAxis",
	"FillDirection",
	"HorizontalAlignment",
	"Padding",
	"SortOrder",
	"VerticalAlignment",
	"AbsoluteCellCount",
	"AbsoluteCellSize",
	"CellPadding",
	"CellSize",
	"FillDirection",
	"HorizontalAlignment",
	"SortOrder",
	"StartCorner",
	"VerticalAlignment",
}
function getproperties(ins)
	local properties = {}
	for i, v in pairs(UIProperties) do
		local jet,clove = pcall(function()
			return ins[v]
		end)
		if jet then
			if not defaultproperties[ins.ClassName][v] and tostring(ins[v]) or to_string(ins[v]) and to_string(ins[v]) ~= "nil" and defaultproperties[ins.ClassName][v] and to_string(ins[v]) ~= defaultproperties[ins.ClassName][v] then
				properties[v] = to_string(ins[v])
			end
			--properties[v] = to_string(ins[v])
			--print(v .. " - " .. to_string(ins[v]))
		end
	end
	for i, v in pairs(properties) do
		if v == "nil" then
			properties[i] = nil
		end
	end
	return properties
end
local cache1 = {}
local cache2 = {}
local cache3 = {}
local cache4 = {}
local biendakhaibao = 1
local hs = game:GetService("HttpService")
local CODE = "--[[ GUI 2 LUA - Made by nguyen linh chi - open source ]]\n"
local targetins = game:GetService("CoreGui")["Nousigi Hub GUI"].Main.MainContainer.Concacontainer.Concacmain.MainPage.Page1.PageList["Misc Shop_Dot"]["Redeem Code_Row"]
cache1[targetins] = hs:GenerateGUID(false)
cache2[cache1[targetins]] = {
	["FullName"] = targetins:GetFullName(),
	["Parent"] = {
		["bien"] = "NONE",
	},
	["bien"] = "noguchi_",
	["khaibaochua"] = false,
	["Instance"] = targetins,
	["GUID"] = cache1[targetins]
}
local cache2_vm = cache2[cache1[targetins]]
if not cache2_vm["khaibaochua"] then
	cache2_vm["bien"] = "noguchi_" .. tostring(biendakhaibao)
	biendakhaibao = biendakhaibao + 1
	cache2_vm["khaibaochua"] = true
	CODE = CODE .. string.format('local %s = Instance.new("%s")\n', cache2_vm["bien"], cache2_vm["Instance"].ClassName)
end
local properties = getproperties(targetins)
for i, v in pairs(properties) do
	if v then
		CODE = CODE .. string.format('\n%s.%s = %s', cache2_vm["bien"], i, v)
	end
end
for i, v in pairs(targetins:GetDescendants()) do
	if defaultproperties[v.ClassName] then
		if not cache1[v] then
			cache1[v] = hs:GenerateGUID(false)
			cache2[cache1[v]] = {
				["FullName"] = v:GetFullName(),
				["Parent"] = {
					["bien"] = "NONE",
				},
				["bien"] = "noguchi_",
				["khaibaochua"] = false,
				["Instance"] = v,
				["GUID"] = cache1[v]
			}
			
		end
		local cache2_v = cache2[cache1[v]]
		if not cache2_v["khaibaochua"] then
			cache2_v["bien"] = "noguchi_" .. tostring(biendakhaibao)
			biendakhaibao = biendakhaibao + 1
			cache2_v["khaibaochua"] = true
			CODE = CODE .. string.format('\n \n-- %s\nlocal %s = Instance.new("%s", %s)\n',v:GetFullName(), cache2_v["bien"], cache2_v["Instance"].ClassName, cache2[cache1[cache2_v["Instance"].Parent]].bien)
		end
		local properties = getproperties(v)
		for i2, v2 in pairs(properties) do
			if v2 then
				CODE = CODE .. string.format('\n%s.%s = %s', cache2_v["bien"], i2, v2)
			end
		end
		--local property = string.format('%s.%s')
		
	end
end
rconsoleprint(CODE .. "\n")
