-- Goody Unnamed UI v2.3.7 | Local Setting persistence + blue key labels
-- Source: user supplied Unnamed Library.lua; revised for stable tabs and modern settings
local library = {
    Flags = {},
    Version = "2.3.7",
    SectionsOpened = false,
    Theme = "Dark",
    Author = "Goody",
    LoadingTitle = "Loading...",
    LoadingSeconds = 3
}
library.flags = library.Flags
library.theme = library.Theme

local Themes = {
    ["Dark"] = {
        Topbar = Color3.fromRGB(30, 30, 35),
        TabContainer = Color3.fromRGB(25, 25, 30),
        Lines = Color3.fromRGB(50, 50, 55),
        HoverTabFrame = Color3.fromRGB(53, 53, 57),
        ItemUIStroke = Color3.fromRGB(41, 41, 50),
        TabFrame = Color3.fromRGB(35, 35, 40),
        SectionFrame = Color3.fromRGB(30, 30, 35),
        TabText = Color3.fromRGB(237, 237, 237),
        ItemText = Color3.fromRGB(237, 237, 237),
        ItemUIStrokeSelected = Color3.fromRGB(80, 201, 206),
        DropdownIcon = Color3.fromRGB(175, 175, 175),
        SectionText = Color3.fromRGB(237, 237, 237),
        SelectedTabFrame = Color3.fromRGB(65, 65, 70),
        ItemFrame = Color3.fromRGB(35, 35, 40),
        HoverItemFrame = Color3.fromRGB(53, 53, 57),
        SectionUIStroke = Color3.fromRGB(37, 37, 44),
        MainUIStroke = Color3.fromRGB(54, 54, 63),
        Main = Color3.fromRGB(20, 20, 25),
        Shadow = Color3.fromRGB(20, 20, 25),
        TabUIStroke = Color3.fromRGB(39, 39, 47),
        SliderOuter = Color3.fromRGB(60, 60, 70),
        SliderInner = Color3.fromRGB(80, 201, 206),
        ToggleOuter = Color3.fromRGB(35, 35, 40),
        InputPlaceHolder = Color3.fromRGB(60, 60, 65),
        ToggleOuterEnabled = Color3.fromRGB(53, 53, 61),
        ToggleOuterUIStroke = Color3.fromRGB(54, 54, 62),
        ToggleOuterUIStrokeEnabled = Color3.fromRGB(67, 67, 77),
        ToggleInner = Color3.fromRGB(66, 66, 76),
        ToggleInnerEnabled = Color3.fromRGB(80, 201, 206),
        ContainerHolder = Color3.fromRGB(26, 26, 31),
        HighlightUIStroke = Color3.fromRGB(79, 79, 86),
        Highlight = Color3.fromRGB(80, 201, 206)
    },
    ["Tokyo Night"] = {
        Topbar = Color3.fromRGB(39, 40, 57),
        TabContainer = Color3.fromRGB(31, 32, 45),
        Lines = Color3.fromRGB(62, 63, 90),
        HoverTabFrame = Color3.fromRGB(52, 53, 76),
        ItemUIStroke = Color3.fromRGB(51, 53, 75),
        TabFrame = Color3.fromRGB(39, 40, 57),
        SectionFrame = Color3.fromRGB(31, 32, 45),
        TabText = Color3.fromRGB(237, 237, 237),
        ItemText = Color3.fromRGB(237, 237, 237),
        SectionText = Color3.fromRGB(237, 237, 237),
        ItemUIStrokeSelected = Color3.fromRGB(255, 183, 38),
        SelectedTabFrame = Color3.fromRGB(70, 72, 102),
        ItemFrame = Color3.fromRGB(39, 40, 57),
        HoverItemFrame = Color3.fromRGB(50, 52, 74),
        DropdownIcon = Color3.fromRGB(175, 175, 175),
        SectionUIStroke = Color3.fromRGB(45, 46, 66),
        MainUIStroke = Color3.fromRGB(64, 67, 100),
        Main = Color3.fromRGB(26, 27, 38),
        Shadow = Color3.fromRGB(26, 27, 38),
        SliderOuter = Color3.fromRGB(56, 59, 83),
        SliderInner = Color3.fromRGB(255, 183, 38),
        TabUIStroke = Color3.fromRGB(55, 56, 80),
        InputPlaceHolder = Color3.fromRGB(70, 73, 94),
        ToggleOuter = Color3.fromRGB(56, 59, 83),
        ToggleOuterEnabled = Color3.fromRGB(77, 82, 115),
        ToggleOuterUIStroke = Color3.fromRGB(76, 79, 112),
        ToggleOuterUIStrokeEnabled = Color3.fromRGB(255, 183, 38),
        ToggleInner = Color3.fromRGB(76, 79, 112),
        ToggleInnerEnabled = Color3.fromRGB(255, 183, 38),
        ContainerHolder = Color3.fromRGB(32, 32, 47),
        HighlightUIStroke = Color3.fromRGB(86, 89, 127),
        Highlight = Color3.fromRGB(253, 191, 67)
    },
    ["Starry Night"] = {
        Topbar = Color3.fromRGB(21, 26, 33),
        TabContainer = Color3.fromRGB(19, 23, 30),
        Lines = Color3.fromRGB(44, 53, 67),
        HoverTabFrame = Color3.fromRGB(41, 49, 65),
        ItemUIStroke = Color3.fromRGB(42, 49, 65),
        TabFrame = Color3.fromRGB(34, 41, 54),
        SectionFrame = Color3.fromRGB(23, 27, 35),
        TabText = Color3.fromRGB(237, 237, 237),
        ItemText = Color3.fromRGB(237, 237, 237),
        SectionText = Color3.fromRGB(237, 237, 237),
        ItemUIStrokeSelected = Color3.fromRGB(255, 211, 105),
        SelectedTabFrame = Color3.fromRGB(53, 64, 84),
        ItemFrame = Color3.fromRGB(32, 37, 49),
        HoverItemFrame = Color3.fromRGB(43, 50, 67),
        DropdownIcon = Color3.fromRGB(175, 175, 175),
        SectionUIStroke = Color3.fromRGB(35, 41, 54),
        MainUIStroke = Color3.fromRGB(54, 65, 85),
        Main = Color3.fromRGB(19, 22, 29),
        InputPlaceHolder = Color3.fromRGB(57, 66, 89),
        Shadow = Color3.fromRGB(19, 22, 29),
        SliderOuter = Color3.fromRGB(48, 56, 75),
        SliderInner = Color3.fromRGB(255, 211, 105),
        TabUIStroke = Color3.fromRGB(45, 54, 71),
        ToggleOuter = Color3.fromRGB(48, 56, 75),
        ToggleOuterEnabled = Color3.fromRGB(58, 68, 91),
        ToggleOuterUIStroke = Color3.fromRGB(42, 49, 65),
        ToggleOuterUIStrokeEnabled = Color3.fromRGB(255, 211, 105),
        ToggleInner = Color3.fromRGB(77, 90, 121),
        ToggleInnerEnabled = Color3.fromRGB(255, 211, 105),
        ContainerHolder = Color3.fromRGB(25, 32, 43),
        HighlightUIStroke = Color3.fromRGB(79, 94, 124),
        Highlight = Color3.fromRGB(255, 229, 121)
    }
}

local HttpService = game:GetService("HttpService")
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local MarketplaceService = game:GetService("MarketplaceService")
local Players = game:GetService("Players")
local VirtualUser = game:GetService("VirtualUser")

local Mouse = game.Players.LocalPlayer:GetMouse()

local Blacklist = {Enum.KeyCode.Unknown, Enum.KeyCode.CapsLock, Enum.KeyCode.Escape, Enum.KeyCode.Tab, Enum.KeyCode.Return, Enum.KeyCode.Backspace, Enum.KeyCode.Space, Enum.KeyCode.W, Enum.KeyCode.A, Enum.KeyCode.S, Enum.KeyCode.D}

-- Asset helpers: work even when executor file APIs are unavailable.
local requestFn = (syn and syn.request) or (http and http.request) or http_request or request or httprequest
local getAssetFn = getcustomasset or getsynasset
local isFolderFn = isfolder or syn_isfolder or is_folder
local makeFolderFn = makefolder or make_folder or createfolder or create_folder
local isFileFn = isfile or is_file

local function LoadIcon(name, fallback)
    local path = "Unnamed/" .. name .. ".png"
    if type(getAssetFn) == "function" and type(isFolderFn) == "function"
        and type(makeFolderFn) == "function" and type(writefile) == "function"
        and type(requestFn) == "function" then
        local ok, result = pcall(function()
            if not isFolderFn("Unnamed") then makeFolderFn("Unnamed") end
            if not (type(isFileFn) == "function" and isFileFn(path)) then
                local response = requestFn({
                    Url = "https://raw.githubusercontent.com/Rain-Design/Unnamed/main/Icons/" .. name .. ".png",
                    Method = "GET"
                })
                if response and response.Body then writefile(path, response.Body) end
            end
            return getAssetFn(path)
        end)
        if ok and result then return result end
    end
    return fallback
end

local ShadowAsset = LoadIcon("UnnamedShadow", "rbxassetid://0")
local ChevronAsset = LoadIcon("Chevron", "rbxassetid://6031091004")
local CircleAsset = LoadIcon("Circle", "rbxassetid://6031094678")

function  library:Darken(clr3)
	local z,x,brightness = clr3:ToHSV()
	brightness = math.clamp(brightness - 0.5, 0, 1)
	
	return Color3.fromHSV(z,x,brightness)
end

function library:GetXY(GuiObject)
	local Max, May = GuiObject.AbsoluteSize.X, GuiObject.AbsoluteSize.Y
	local Px, Py = math.clamp(Mouse.X - GuiObject.AbsolutePosition.X, 0, Max), math.clamp(Mouse.Y - GuiObject.AbsolutePosition.Y, 0, May)
	return Px/Max, Py/May
end

local notifications = Instance.new("ScreenGui")
notifications.Name = HttpService:GenerateGUID(true)
notifications.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
notifications.Parent = CoreGui

local notificationHolder = Instance.new("Frame")
notificationHolder.Name = "NotificationHolder"
notificationHolder.AnchorPoint = Vector2.new(0, 0.5)
notificationHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
notificationHolder.BackgroundTransparency = 1
notificationHolder.Position = UDim2.new(0, 0, 0.5, 0)
notificationHolder.Size = UDim2.new(1, 0, 1, 100)
notificationHolder.Parent = notifications

local uIListLayout = Instance.new("UIListLayout")
uIListLayout.Name = "UIListLayout"
uIListLayout.Padding = UDim.new(0, 3)
uIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
uIListLayout.Parent = notificationHolder

local uIPadding = Instance.new("UIPadding")
uIPadding.Name = "UIPadding"
uIPadding.PaddingBottom = UDim.new(0, 55)
uIPadding.PaddingRight = UDim.new(0, 5)
uIPadding.Parent = notificationHolder

function library:Notification(Info)
Info.Title = Info.Title or "Notification"
Info.Description = Info.Description or "Placeholder"
Info.Timeout = Info.Timeout or nil
Info.Callback = Info.Callback or function() end

local Theme = Themes[library.Theme]

if Theme == nil then
    error("[Goody UI] Unknown theme: " .. tostring(library.Theme), 0)
end

local notificationMain = Instance.new("Frame")
notificationMain.Name = "NotificationMain"
notificationMain.BackgroundColor3 = Theme.Main
notificationMain.BackgroundTransparency = 0.04
notificationMain.BorderSizePixel = 0
notificationMain.ClipsDescendants = true
notificationMain.Position = UDim2.new(0.739, 0, 0.885, 0)
notificationMain.Size = UDim2.new(0, 0, 0, 95)
notificationMain.Parent = notificationHolder

local notificationMainUIStroke = Instance.new("UIStroke")
notificationMainUIStroke.Name = "NotificationMainUIStroke"
notificationMainUIStroke.Color = Theme.MainUIStroke
notificationMainUIStroke.Parent = notificationMain
notificationMainUIStroke.Enabled = false

local notificationMainUICorner = Instance.new("UICorner")
notificationMainUICorner.Name = "NotificationMainUICorner"
notificationMainUICorner.CornerRadius = UDim.new(0, 5)
notificationMainUICorner.Parent = notificationMain

local notificationName = Instance.new("TextLabel")
notificationName.Name = "NotificationName"
notificationName.Font = Enum.Font.GothamBold
notificationName.Text = Info.Title
notificationName.TextColor3 = Theme.SectionText
notificationName.TextSize = 14
notificationName.TextXAlignment = Enum.TextXAlignment.Left
notificationName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
notificationName.BackgroundTransparency = 1
notificationName.Position = UDim2.new(0, 6, 0, 0)
notificationName.Size = UDim2.new(0, 330, 0, 34)
notificationName.ZIndex = 2
notificationName.Parent = notificationMain

local topbar = Instance.new("Frame")
topbar.Name = "Topbar"
topbar.BackgroundColor3 = Theme.Topbar
topbar.BorderSizePixel = 0
topbar.Size = UDim2.new(1, 0, 0, 34)
topbar.Parent = notificationMain

local topbarUICorner = Instance.new("UICorner")
topbarUICorner.Name = "TopbarUICorner"
topbarUICorner.CornerRadius = UDim.new(0, 5)
topbarUICorner.Parent = topbar

local notificationTopbarLine = Instance.new("Frame")
notificationTopbarLine.Name = "NotificationTopbarLine"
notificationTopbarLine.AnchorPoint = Vector2.new(0.5, 1)
notificationTopbarLine.BackgroundColor3 = Theme.Lines
notificationTopbarLine.BorderSizePixel = 0
notificationTopbarLine.Position = UDim2.new(0.5, 0, 1, 0)
notificationTopbarLine.Size = UDim2.new(1, 0, 0, 1)
notificationTopbarLine.Parent = topbar

local notificationCloseButton = Instance.new("ImageButton")
notificationCloseButton.Name = "NotificationCloseButton"
notificationCloseButton.Image = "rbxassetid://10738425363"
notificationCloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
notificationCloseButton.ImageColor3 = Theme.SectionText
notificationCloseButton.BackgroundTransparency = 1
notificationCloseButton.Position = UDim2.new(0, 315, 0, 9)
notificationCloseButton.Size = UDim2.new(0, 17, 0, 17)
notificationCloseButton.Visible = false
notificationCloseButton.Parent = topbar

local notificationTime = Instance.new("TextLabel")
notificationTime.Name = "NotificationTime"
notificationTime.Font = Enum.Font.GothamBold
notificationTime.Text = "36"
notificationTime.TextColor3 = Theme.SectionText
notificationTime.TextSize = 14
notificationTime.TextXAlignment = Enum.TextXAlignment.Right
notificationTime.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
notificationTime.BackgroundTransparency = 1
notificationTime.Position = UDim2.new(0, 6, 0, 0)
notificationTime.Size = UDim2.new(0, 324, 0, 34)
notificationTime.Visible = false
notificationTime.ZIndex = 2
notificationTime.Parent = topbar

local textFrame = Instance.new("Frame")
textFrame.Name = "TextFrame"
textFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textFrame.BackgroundTransparency = 1
textFrame.Position = UDim2.new(0, 0, 0.358, 0)
textFrame.Size = UDim2.new(1, 0, -0.0737, 68)
textFrame.Parent = notificationMain

local notificationDescription = Instance.new("TextLabel")
notificationDescription.Name = "NotificationDescription"
notificationDescription.Font = Enum.Font.GothamBold
notificationDescription.Text = Info.Description
notificationDescription.TextColor3 = Theme.SectionText
notificationDescription.TextSize = 13
notificationDescription.TextWrapped = true
notificationDescription.TextXAlignment = Enum.TextXAlignment.Left
notificationDescription.TextYAlignment = Enum.TextYAlignment.Top
notificationDescription.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
notificationDescription.BackgroundTransparency = 1
notificationDescription.Position = UDim2.new(0, 6, 0, 6)
notificationDescription.Size = UDim2.new(0, 330, 0, 55)
notificationDescription.ZIndex = 2
notificationDescription.Parent = textFrame

if not Info.Timeout then
    notificationCloseButton.Visible = true

    notificationCloseButton.MouseButton1Click:Connect(function()
        task.spawn(Info.Callback)
        local timedout = TweenService:Create(notificationMain, TweenInfo.new(.25, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 0, 0, 95)})
        timedout:Play()
        timedout.Completed:Wait()
        notificationMainUIStroke.Enabled = false
        notificationMain:Destroy()
    end)
end

local show = TweenService:Create(notificationMain, TweenInfo.new(.25, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 336, 0, 95)})
notificationMainUIStroke.Enabled = true
show:Play()

if Info.Timeout then
    notificationTime.Visible = true
    local Timeout = Info.Timeout
    notificationTime.Text = tostring(Timeout)
    task.spawn(function()
        while Timeout > 0 do
            task.wait(1)
            Timeout = Timeout - 1
            notificationTime.Text = tostring(Timeout)
        end
        task.spawn(Info.Callback)
        local timedout = TweenService:Create(notificationMain, TweenInfo.new(.25, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 0, 0, 95)})
        timedout:Play()
        timedout.Completed:Wait()
        notificationMainUIStroke.Enabled = false
        notificationMain:Destroy()
    end)
end
end

function library:Window(Info)
Info.Text = Info.Text or "Window"

local Theme = Themes[library.Theme]

if Theme == nil then
    error("[Goody UI] Unknown theme: " .. tostring(library.Theme), 0)
end

local window = {}
local SelectedTab = nil
local WindowConnections = {}
local HotkeyChanged = Instance.new("BindableEvent")
local TabEntries = {}
local CaptureHotkey = false
local LoadingFinished = false
local IsShowing = true
local WindowClosed = false
local Hotkey = Enum.KeyCode.RightControl
-- Each window owns its Anti-AFK state and connection.
local AntiAFKEnabled = true
local AntiAFKHandled = 0
local AntiAFKLastError = nil
local WindowAuthor = Info.Author or library.Author or "Goody"
local WindowLoadingTitle = Info.LoadingTitle or library.LoadingTitle or "Loading..."
local WindowLoadingSeconds = tonumber(Info.LoadingSeconds or library.LoadingSeconds or 3) or 3
WindowLoadingSeconds = math.max(0, WindowLoadingSeconds)
local LoadingStart = os.clock()

-- UI-only persistence. Never stores game-specific flags, sliders or farm settings.
-- Requires executor readfile/writefile. Falls back safely to defaults when unavailable.
local SettingsDirectory = "GoodyHub"
local SettingsPath = SettingsDirectory .. "/UISettings.json"
local CanReadSettings = type(readfile) == "function"
local CanWriteSettings = type(writefile) == "function"
local FileExists = isfile or is_file
local CreateFolder = makefolder or make_folder or createfolder or create_folder
local FolderExists = isfolder or is_folder
local SaveGeneration = 0
local SavedSettings = {Hotkey = "RightControl", AntiAFK = true}

local function SaveUISettingsNow()
    if not CanWriteSettings then return false end
    local ok, err = pcall(function()
        if type(CreateFolder) == "function" then
            if type(FolderExists) ~= "function" or not FolderExists(SettingsDirectory) then
                CreateFolder(SettingsDirectory)
            end
        end
        local payload = HttpService:JSONEncode({
            Version = 1,
            Hotkey = Hotkey.Name,
            AntiAFK = AntiAFKEnabled
        })
        writefile(SettingsPath, payload)
    end)
    if not ok then warn("[Goody UI] Cannot save UI settings:", err) end
    return ok
end

local function QueueUISettingsSave()
    SaveGeneration = SaveGeneration + 1
    local generation = SaveGeneration
    task.delay(0.35, function()
        if WindowClosed or generation ~= SaveGeneration then return end
        SaveUISettingsNow()
    end)
end

local function LoadUISettings()
    if not CanReadSettings then return end
    local ok, data = pcall(function()
        if type(FileExists) == "function" and not FileExists(SettingsPath) then return nil end
        return HttpService:JSONDecode(readfile(SettingsPath))
    end)
    if not ok or type(data) ~= "table" then return end
    if type(data.Hotkey) == "string" then SavedSettings.Hotkey = data.Hotkey end
    if type(data.AntiAFK) == "boolean" then SavedSettings.AntiAFK = data.AntiAFK end
end
LoadUISettings()
AntiAFKEnabled = SavedSettings.AntiAFK


local unnamed = Instance.new("ScreenGui")
unnamed.Name = HttpService:GenerateGUID(true)
unnamed.ZIndexBehavior = Enum.ZIndexBehavior.Global
unnamed.Parent = CoreGui

local shadow = Instance.new("ScreenGui")
shadow.Name = HttpService:GenerateGUID(true)
shadow.DisplayOrder = -1
shadow.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
shadow.Parent = CoreGui

local mainShadow = Instance.new("ImageLabel")
mainShadow.Name = "MainShadow"
mainShadow.Image = ShadowAsset
mainShadow.ImageColor3 = Theme.Shadow
mainShadow.ImageTransparency = 0.2
mainShadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mainShadow.BackgroundTransparency = 1
mainShadow.Position = UDim2.new(0.339, 0, 0.279, 0)
mainShadow.Size = UDim2.new(0, 520, 0, 370)
mainShadow.Parent = shadow

local main = Instance.new("CanvasGroup")
main.Name = "Main"
main.BackgroundColor3 = Theme.Main
main.BorderSizePixel = 0
main.Position = UDim2.new(0.345, 0, 0.291, 0)
main.Size = UDim2.new(0, 500, 0, 350)
main.Parent = unnamed
main.ClipsDescendants = true
main.GroupTransparency = 1

local uICorner = Instance.new("UICorner")
uICorner.Name = "UICorner"
uICorner.CornerRadius = UDim.new(0, 7)
uICorner.Parent = main

local topbar = Instance.new("Frame")
topbar.Name = "Topbar"
topbar.BackgroundColor3 = Theme.Topbar
topbar.BorderSizePixel = 0
topbar.Size = UDim2.new(0, 500, 0, 34)
topbar.Parent = main

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
    local delta = input.Position - dragStart
    main.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    mainShadow.Position = UDim2.new(startPos.X.Scale, (startPos.X.Offset + delta.X) - 10, startPos.Y.Scale, (startPos.Y.Offset + delta.Y) - 10)
end

topbar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = main.Position

        input.Changed:Connect(function()
        	if input.UserInputState == Enum.UserInputState.End then
        		dragging = false
        	end
        end)
    end
end)

topbar.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)

local uICorner1 = Instance.new("UICorner")
uICorner1.Name = "UICorner"
uICorner1.CornerRadius = UDim.new(0, 3)
uICorner1.Parent = topbar

local topbarLine = Instance.new("Frame")
topbarLine.Name = "TopbarLine"
topbarLine.AnchorPoint = Vector2.new(0.5, 1)
topbarLine.BackgroundColor3 = Theme.Lines
topbarLine.BorderSizePixel = 0
topbarLine.Position = UDim2.new(0.5, 0, 1, 0)
topbarLine.Size = UDim2.new(0, 500, 0, 1)
topbarLine.ZIndex = 2
topbarLine.Parent = topbar

local windowName = Instance.new("TextLabel")
windowName.Name = "WindowName"
windowName.Font = Enum.Font.GothamBold
windowName.Text = Info.Text
windowName.TextColor3 = Color3.fromRGB(255, 255, 255)
windowName.TextSize = 13
windowName.TextTransparency = 0.1
windowName.TextXAlignment = Enum.TextXAlignment.Left
windowName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
windowName.BackgroundTransparency = 1
windowName.Position = UDim2.new(0, 6, 0, 0)
windowName.Size = UDim2.new(0, 111, 0, 34)
windowName.Parent = topbar

-- Live window metadata: compact, left-aligned and right-anchored.
-- Arrange actual rendered text width with 12px gaps, anchored to the avatar.
local Players = game:GetService("Players")
local TextService = game:GetService("TextService")
local localPlayer = Players.LocalPlayer
local function HeaderText(name, value, width, color)
    local label = Instance.new("TextLabel")
    label.Name = name
    label.BackgroundTransparency = 1
    label.Font = Enum.Font.GothamMedium
    label.Text = value
    label.TextColor3 = color or Theme.TabText
    label.TextSize = 10
    label.TextTruncate = Enum.TextTruncate.AtEnd
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.Size = UDim2.fromOffset(width, 34)
    label.Parent = topbar
    return label
end

local fpsLabel = HeaderText("FPS", "-- FPS", 46, Theme.Highlight)
local gameLabel = HeaderText("GameName", game.Name, 100, Theme.TabText)
local playerName = HeaderText("DisplayName", localPlayer and localPlayer.DisplayName or "Player", 86, Theme.TabText)
local avatar = Instance.new("ImageLabel")
avatar.Name = "Avatar"
avatar.BackgroundColor3 = Theme.TabFrame
avatar.BackgroundTransparency = 0
avatar.Position = UDim2.fromOffset(426, 6)
avatar.Size = UDim2.fromOffset(22, 22)
avatar.Parent = topbar
local avatarCorner = Instance.new("UICorner")
avatarCorner.CornerRadius = UDim.new(1, 0)
avatarCorner.Parent = avatar

local HEADER_GAP = 12
local function TextPixelWidth(label, maxWidth)
    local measured = TextService:GetTextSize(
        label.Text, label.TextSize, label.Font, Vector2.new(1000, 34)
    ).X
    return math.clamp(math.ceil(measured) + 2, 20, maxWidth)
end
local function UpdateHeaderLayout()
    if not topbar.Parent then return end
    local playerWidth = TextPixelWidth(playerName, 86)
    local gameWidth = TextPixelWidth(gameLabel, 100)
    local fpsWidth = TextPixelWidth(fpsLabel, 46)
    local playerX = avatar.Position.X.Offset - HEADER_GAP - playerWidth
    local gameX = playerX - HEADER_GAP - gameWidth
    local fpsX = gameX - HEADER_GAP - fpsWidth
    -- Keep title readable on narrow windows; shorten the game label first.
    if fpsX < 132 then
        gameWidth = math.max(24, gameWidth - (132 - fpsX))
        gameX = playerX - HEADER_GAP - gameWidth
        fpsX = gameX - HEADER_GAP - fpsWidth
    end
    playerName.Position = UDim2.fromOffset(playerX, 0)
    playerName.Size = UDim2.fromOffset(playerWidth, 34)
    gameLabel.Position = UDim2.fromOffset(gameX, 0)
    gameLabel.Size = UDim2.fromOffset(gameWidth, 34)
    fpsLabel.Position = UDim2.fromOffset(fpsX, 0)
    fpsLabel.Size = UDim2.fromOffset(fpsWidth, 34)
end
UpdateHeaderLayout()

task.spawn(function()
    if not localPlayer then return end
    local ok, image = pcall(function()
        return Players:GetUserThumbnailAsync(localPlayer.UserId,
            Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100)
    end)
    if ok and avatar.Parent then avatar.Image = image end
end)

task.spawn(function()
    local ok, info = pcall(function()
        return MarketplaceService:GetProductInfo(game.PlaceId, Enum.InfoType.Asset)
    end)
    if ok and info and type(info.Name) == "string" and gameLabel.Parent then
        gameLabel.Text = info.Name
        UpdateHeaderLayout()
    end
end)

local frames, elapsed = 0, 0
table.insert(WindowConnections, RunService.RenderStepped:Connect(function(dt)
    if WindowClosed then return end
    frames = frames + 1
    elapsed = elapsed + dt
    if elapsed >= 0.5 then
        fpsLabel.Text = tostring(math.floor(frames / elapsed + 0.5)) .. " FPS"
        frames, elapsed = 0, 0
        UpdateHeaderLayout()
    end
end))

local closeButton = Instance.new("ImageButton")
closeButton.Name = "CloseButton"
closeButton.Image = "rbxassetid://10738425363"
closeButton.ImageTransparency = 0.1
closeButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
closeButton.BackgroundTransparency = 1
closeButton.Position = UDim2.new(0.954, 3, 0.235, 0)
closeButton.Size = UDim2.new(0, 17, 0, 17)
closeButton.Parent = topbar

closeButton.MouseEnter:Connect(function()
    TweenService:Create(closeButton, TweenInfo.new(.125, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageColor3 = Color3.fromRGB(255, 66, 66)}):Play()
end)

closeButton.MouseLeave:Connect(function()
    TweenService:Create(closeButton, TweenInfo.new(.125, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageColor3 = Color3.fromRGB(255, 255, 255)}):Play()
end)

local function DestroyWindow()
    if WindowClosed then return end
    SaveUISettingsNow()
    WindowClosed = true
    for _, connection in ipairs(WindowConnections) do
        if connection.Connected then connection:Disconnect() end
    end
    table.clear(WindowConnections)
    HotkeyChanged:Destroy()
    if unnamed.Parent then unnamed:Destroy() end
    if shadow.Parent then shadow:Destroy() end
    -- notifications is library-scoped; do not destroy it when one window closes.
end
closeButton.MouseButton1Click:Connect(DestroyWindow)
function window:Destroy() DestroyWindow() end

local minimizeButton = Instance.new("ImageButton")
minimizeButton.Name = "ImageButton"
minimizeButton.Image = "rbxassetid://10664064072"
minimizeButton.ImageTransparency = 0.1
minimizeButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
minimizeButton.BackgroundTransparency = 1
minimizeButton.Position = UDim2.new(0.954, -18, 0.235, 0)
minimizeButton.Size = UDim2.new(0, 17, 0, 17)
minimizeButton.Parent = topbar

minimizeButton.MouseEnter:Connect(function()
    TweenService:Create(minimizeButton, TweenInfo.new(.125, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageColor3 = Theme.Highlight}):Play()
end)

minimizeButton.MouseLeave:Connect(function()
    TweenService:Create(minimizeButton, TweenInfo.new(.125, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageColor3 = Color3.fromRGB(255, 255, 255)}):Play()
end)

local Minimized = false

minimizeButton.MouseButton1Click:Connect(function()
    if WindowClosed then return end
    Minimized = not Minimized
    topbar.TopbarLine.Visible = not Minimized
    mainShadow.Visible = not Minimized
    TweenService:Create(main, TweenInfo.new(0.2, Enum.EasingStyle.Quad,
        Enum.EasingDirection.Out), {
        Size = Minimized and UDim2.fromOffset(500,34) or UDim2.fromOffset(500,350)
    }):Play()
end)

local uIStroke = Instance.new("UIStroke")
uIStroke.Name = "UIStroke"
uIStroke.Color = Theme.MainUIStroke
uIStroke.Parent = main

local tabContainer = Instance.new("Frame")
tabContainer.Name = "TabContainer"
tabContainer.BackgroundColor3 = Theme.TabContainer
tabContainer.BorderSizePixel = 0
tabContainer.Position = UDim2.new(-0.012, 6, 0.0971, 0)
tabContainer.Size = UDim2.new(0, 131, 0, 316)
tabContainer.Parent = main

local settingsDivider = Instance.new("Frame")
settingsDivider.Name = "SettingsDivider"
settingsDivider.BackgroundColor3 = Theme.Lines
settingsDivider.BorderSizePixel = 0
settingsDivider.Position = UDim2.fromOffset(13, 270)
settingsDivider.Size = UDim2.fromOffset(104, 1)
settingsDivider.Parent = tabContainer


local tabContainerLine = Instance.new("Frame")
tabContainerLine.Name = "TabContainerLine"
tabContainerLine.AnchorPoint = Vector2.new(1, 0)
tabContainerLine.BackgroundColor3 = Theme.Lines
tabContainerLine.BorderSizePixel = 0
tabContainerLine.Position = UDim2.new(1, 0, 0, 0)
tabContainerLine.Size = UDim2.new(0, 1, 0, 316)
tabContainerLine.ZIndex = 2
tabContainerLine.Parent = tabContainer

local tabContainerScrolling = Instance.new("ScrollingFrame")
tabContainerScrolling.Name = "TabContainerScrolling"
tabContainerScrolling.AutomaticCanvasSize = Enum.AutomaticSize.Y
tabContainerScrolling.CanvasSize = UDim2.new()
tabContainerScrolling.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
tabContainerScrolling.ScrollBarThickness = 0
tabContainerScrolling.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tabContainerScrolling.BackgroundTransparency = 1
tabContainerScrolling.BorderSizePixel = 0
tabContainerScrolling.Position = UDim2.new(0, 0, 0, 6)
tabContainerScrolling.Size = UDim2.new(0, 128, 0, 261)
tabContainerScrolling.Parent = tabContainer

local uIListLayout = Instance.new("UIListLayout")
uIListLayout.Name = "UIListLayout"
uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout.Parent = tabContainerScrolling

local containers = Instance.new("ScrollingFrame")
containers.Name = "Containers"
containers.AutomaticCanvasSize = Enum.AutomaticSize.Y
containers.CanvasSize = UDim2.new()
containers.ScrollBarThickness = 0
containers.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
containers.BackgroundTransparency = 1
containers.BorderSizePixel = 0
containers.Position = UDim2.new(0.262, 1, 0.097, 0)
containers.Selectable = false
containers.Size = UDim2.new(0, 368, 0, 310)
containers.Parent = main

-- Window-local Anti-AFK: no extra ScreenGui or additional hotkey.
-- The server may implement independent idle checks; this is best effort.
table.insert(WindowConnections, Players.LocalPlayer.Idled:Connect(function()
    if WindowClosed or not AntiAFKEnabled then return end
    local ok, err = pcall(function()
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new(0, 0))
    end)
    if ok then
        AntiAFKHandled = AntiAFKHandled + 1
        AntiAFKLastError = nil
        print("[Unnamed UI] Anti-AFK idle event handled:", AntiAFKHandled)
    else
        AntiAFKLastError = tostring(err)
        warn("[Unnamed UI] Anti-AFK unavailable:", AntiAFKLastError)
    end
end))

function window:GetAntiAFK()
    return AntiAFKEnabled
end
function window:GetAntiAFKStats()
    return { Enabled = AntiAFKEnabled, Handled = AntiAFKHandled, LastError = AntiAFKLastError }
end

-- Window methods for scripts that need explicit control.
local function NormalizeKeyCode(key)
    if typeof(key) == "EnumItem" and key.EnumType == Enum.KeyCode then
        return key ~= Enum.KeyCode.Unknown and key or nil
    end
    if type(key) ~= "string" then return nil end
    local raw = key:upper():gsub("%s+", "")
    local aliases = { INS = "Insert", DEL = "Delete", CTRL = "RightControl",
        RCTRL = "RightControl", LCTRL = "LeftControl", PGUP = "PageUp",
        PGDN = "PageDown", ESC = "Escape", RETURN = "Return" }
    local normalized = aliases[raw]
    if not normalized then
        if raw:match("^F%d+$") then
            normalized = raw
        elseif #raw == 1 and raw:match("^[A-Z0-9]$") then
            normalized = raw
        else
            normalized = raw:sub(1,1) .. raw:sub(2):lower()
        end
    end
    local ok, value = pcall(function() return Enum.KeyCode[normalized] end)
    if ok and value and value ~= Enum.KeyCode.Unknown then return value end
    return nil
end

-- Restore saved hotkey only after NormalizeKeyCode is available.
do
    local restored = NormalizeKeyCode(SavedSettings.Hotkey)
    if restored then Hotkey = restored end
end

-- HotkeyChanged is declared at window scope
function window:SetHotkey(key)
    local value = NormalizeKeyCode(key)
    if not value then return false end
    Hotkey = value
    HotkeyChanged:Fire(value)
    QueueUISettingsSave()
    return true
end
function window:GetHotkey() return Hotkey end
function window:SetVisible(state)
    if WindowClosed then return end
    IsShowing = not not state
    if IsShowing then
        unnamed.Enabled = true
        shadow.Enabled = LoadingFinished
        if LoadingFinished then
            TweenService:Create(main, TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {GroupTransparency = 0}):Play()
        end
    else
        if not LoadingFinished then
            unnamed.Enabled = false
            return
        end
        local fade = TweenService:Create(main, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
            {GroupTransparency = 1})
        fade:Play()
        fade.Completed:Once(function()
            if not WindowClosed and not IsShowing then
                unnamed.Enabled = false
                shadow.Enabled = false
            end
        end)
    end
end
function window:ToggleVisible() self:SetVisible(not IsShowing) end

local HotkeyCaptureCallback = nil
function window:CaptureHotkey(callback)
    if WindowClosed then return end
    CaptureHotkey = true
    HotkeyCaptureCallback = callback
end

table.insert(WindowConnections, UserInputService.InputBegan:Connect(function(input, processed)
    if WindowClosed then return end
    if CaptureHotkey then
        if input.UserInputType == Enum.UserInputType.Keyboard then
            CaptureHotkey = false
            local accepted = window:SetHotkey(input.KeyCode)
            if HotkeyCaptureCallback then
                HotkeyCaptureCallback(accepted, Hotkey)
            end
            HotkeyCaptureCallback = nil
        end
        return
    end
    if processed or UserInputService:GetFocusedTextBox() then return end
    if input.KeyCode == Hotkey then window:ToggleVisible() end
end))

-- The splash stays for 3 seconds (configurable) without blocking UI construction.
main.Visible = false
shadow.Enabled = false
local loading = Instance.new("CanvasGroup")
loading.Name = "LoadingScreen"
loading.AnchorPoint = Vector2.new(0.5, 0.5)
loading.Position = UDim2.fromScale(0.5, 0.5)
loading.Size = UDim2.fromOffset(262, 138)
loading.BackgroundColor3 = Theme.Main
loading.BorderSizePixel = 0
loading.GroupTransparency = 0
loading.Parent = unnamed
local loadCorner = Instance.new("UICorner")
loadCorner.CornerRadius = UDim.new(0, 12)
loadCorner.Parent = loading
local loadStroke = Instance.new("UIStroke")
loadStroke.Color = Theme.MainUIStroke
loadStroke.Parent = loading
local function LoadingText(name, text, size, position, area, alignment)
    local lbl = Instance.new("TextLabel")
    lbl.Name = name
    lbl.Text = text
    lbl.Font = Enum.Font.GothamBold
    lbl.TextColor3 = Theme.SectionText
    lbl.TextSize = size
    lbl.TextXAlignment = alignment
    lbl.BackgroundTransparency = 1
    lbl.Position = position
    lbl.Size = area
    lbl.Parent = loading
    return lbl
end
LoadingText("LibraryName", Info.Text, 12, UDim2.fromOffset(13, 10), UDim2.new(1,-26,0,20), Enum.TextXAlignment.Left)
LoadingText("LoadingTitle", WindowLoadingTitle, 20, UDim2.fromOffset(12, 46), UDim2.new(1,-24,0,39), Enum.TextXAlignment.Center)
LoadingText("Author", "By " .. tostring(WindowAuthor), 11, UDim2.new(0,13,1,-30), UDim2.new(1,-26,0,19), Enum.TextXAlignment.Right)

-- Centered loading animation: Loading. → Loading.. → Loading...
local dotsLabel = LoadingText("LoadingDots", "Loading.", 11,
    UDim2.fromOffset(12, 92), UDim2.new(1,-24,0,20), Enum.TextXAlignment.Center)
dotsLabel.TextColor3 = Theme.Highlight
local loadBarBack = Instance.new("Frame")
loadBarBack.Name = "ProgressTrack"
loadBarBack.BackgroundColor3 = Theme.Lines
loadBarBack.BorderSizePixel = 0
loadBarBack.Position = UDim2.fromOffset(26, 118)
loadBarBack.Size = UDim2.new(1,-52,0,3)
loadBarBack.Parent = loading
Instance.new("UICorner", loadBarBack).CornerRadius = UDim.new(1,0)
local loadBar = Instance.new("Frame")
loadBar.Name = "Progress"
loadBar.BackgroundColor3 = Theme.Highlight
loadBar.BorderSizePixel = 0
loadBar.Size = UDim2.fromScale(0,1)
loadBar.Parent = loadBarBack
Instance.new("UICorner", loadBar).CornerRadius = UDim.new(1,0)
TweenService:Create(loadBar, TweenInfo.new(WindowLoadingSeconds, Enum.EasingStyle.Linear),
    {Size = UDim2.fromScale(1,1)}):Play()

task.spawn(function()
    local tickCount = 0
    while not WindowClosed and loading.Parent and os.clock() - LoadingStart < WindowLoadingSeconds do
        tickCount = tickCount + 1
        dotsLabel.Text = "Loading" .. string.rep(".", (tickCount - 1) % 3 + 1)
        task.wait(0.3)
    end
    if WindowClosed or not unnamed.Parent then return end
    local remaining = WindowLoadingSeconds - (os.clock() - LoadingStart)
    if remaining > 0 then task.wait(remaining) end
    if WindowClosed or not unnamed.Parent then return end
    local out = TweenService:Create(loading, TweenInfo.new(0.2), {GroupTransparency = 1})
    out:Play()
    out.Completed:Wait()
    if WindowClosed or not unnamed.Parent then return end
    loading:Destroy()
    LoadingFinished = true
    main.Visible = true
    if IsShowing then
        shadow.Enabled = true
        TweenService:Create(main, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {GroupTransparency = 0}):Play()
    end
end)

function window:Tab(Info)
Info.Text = Info.Text or "Tab"

local tabtable = {}

local tab = Instance.new("Frame")
tab.Name = "Tab"
tab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tab.BackgroundTransparency = 1
tab.BorderSizePixel = 0
tab.Size = UDim2.new(0, 118, 0, 29)
if Info.Pinned then
    tab.Name = "PinnedTab"
    tab.Position = UDim2.fromOffset(6, 279)
    tab.Parent = tabContainer
else
    tab.Parent = tabContainerScrolling
end

local tabFrame = Instance.new("Frame")
tabFrame.Name = "TabFrame"
tabFrame.AnchorPoint = Vector2.new(.5, .5)
tabFrame.Position = UDim2.new(.5, 0, .5, 0)
tabFrame.BackgroundColor3 = Theme.TabFrame
tabFrame.BorderSizePixel = 0
tabFrame.Size = UDim2.new(0, 118, 0, 25)
tabFrame.Parent = tab

local uICorner2 = Instance.new("UICorner")
uICorner2.Name = "UICorner"
uICorner2.CornerRadius = UDim.new(0, 5)
uICorner2.Parent = tabFrame

local tabuIStroke = Instance.new("UIStroke")
tabuIStroke.Name = "UIStroke"
tabuIStroke.Color = Theme.TabUIStroke
tabuIStroke.Parent = tabFrame

local tabButton = Instance.new("TextButton")
tabButton.Name = "TabButton"
tabButton.Font = Enum.Font.SourceSans
tabButton.Text = ""
tabButton.TextColor3 = Color3.fromRGB(0, 0, 0)
tabButton.TextSize = 14
tabButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tabButton.BackgroundTransparency = 1
tabButton.Size = UDim2.new(0, 118, 0, 25)
tabButton.Parent = tabFrame

local tabName = Instance.new("TextLabel")
tabName.Name = "TabName"
tabName.Font = Enum.Font.GothamBold
tabName.Text = Info.Text
tabName.TextColor3 = Theme.TabText
tabName.TextSize = 12
tabName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tabName.BackgroundTransparency = 1
tabName.Size = UDim2.new(0, 118, 0, 25)
tabName.Parent = tabFrame

tabFrame.MouseEnter:Connect(function()
    if SelectedTab == nil or SelectedTab ~= tab then
        TweenService:Create(tabFrame, TweenInfo.new(.125, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundColor3 = Theme.HoverTabFrame}):Play()
        TweenService:Create(tabName, TweenInfo.new(.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 122,0, 25)}):Play()
        TweenService:Create(tabFrame, TweenInfo.new(.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 122,0, 25)}):Play()
    end
end)

tabFrame.MouseLeave:Connect(function()
    if SelectedTab == nil or SelectedTab ~= tab then
        TweenService:Create(tabFrame, TweenInfo.new(.125, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundColor3 = Theme.TabFrame}):Play()
        TweenService:Create(tabFrame, TweenInfo.new(.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 118,0, 25)}):Play()
        TweenService:Create(tabName, TweenInfo.new(.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 118,0, 25)}):Play()
    end
end)

local uIPadding = Instance.new("UIPadding")
uIPadding.Name = "UIPadding"
uIPadding.PaddingBottom = UDim.new(1, 0)
uIPadding.PaddingLeft = UDim.new(0, 6)
uIPadding.Parent = tabContainerScrolling

local tabContent = Instance.new("CanvasGroup")
tabContent.Name = "TabContent"
tabContent.BackgroundTransparency = 1
tabContent.Size = UDim2.fromScale(1,1)
tabContent.GroupTransparency = 1
tabContent.Visible = false
tabContent.Parent = containers

local Left = Instance.new("ScrollingFrame")
Left.Name = "Left"
Left.AutomaticCanvasSize = Enum.AutomaticSize.Y
Left.CanvasSize = UDim2.new()
Left.ScrollBarThickness = 0
Left.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Left.BackgroundTransparency = 1
Left.Visible = true
Left.BorderSizePixel = 0
Left.Position = UDim2.new(0, 0, 0.0195, 0)
Left.Selectable = false
Left.Size = UDim2.new(0, 182, 0, 306)
Left.Parent = tabContent

local leftPadding = Instance.new("UIPadding")
leftPadding.Name = "UIPadding"
leftPadding.PaddingLeft = UDim.new(0, 6)
leftPadding.PaddingTop = UDim.new(0, 1)
leftPadding.Parent = Left

local uIListLayout1 = Instance.new("UIListLayout")
uIListLayout1.Name = "UIListLayout"
uIListLayout1.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout1.Parent = Left

local Right = Instance.new("ScrollingFrame")
Right.Name = "Right"
Right.AutomaticCanvasSize = Enum.AutomaticSize.Y
Right.CanvasSize = UDim2.new()
Right.ScrollBarThickness = 0
Right.AnchorPoint = Vector2.new(1, 0)
Right.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Right.BackgroundTransparency = 1
Right.BorderSizePixel = 0
Right.Visible = true
Right.Position = UDim2.new(1, 0, 0.0194, 0)
Right.Selectable = false
Right.Size = UDim2.new(0, 182, 0, 306)
Right.Parent = tabContent

local uIListLayout2 = Instance.new("UIListLayout")
uIListLayout2.Name = "UIListLayout"
uIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout2.Parent = Right

local rightPadding = Instance.new("UIPadding")
rightPadding.Name = "UIPadding"
rightPadding.PaddingLeft = UDim.new(0, 1)
rightPadding.PaddingTop = UDim.new(0, 1)
rightPadding.Parent = Right

local Sections = 1000

function tabtable:Section(Info)
Info.Text = Info.Text or "Section"
Info.Side = Info.Side or "Left"
if Info.Opened == nil then Info.Opened = library.SectionsOpened end

Sections = Sections - 3

local sectiontable = {}

local section = Instance.new("Frame")
section.Name = "Section"
section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
section.BackgroundTransparency = 1
section.Size = UDim2.new(0, 175, 0, 33)

local SectionOpened = Instance.new("BoolValue", section)
SectionOpened.Value = Info.Opened

if Info.Side == "Left" then
    section.Parent = Left
else
    section.Parent = Right
end

local sectionFrame = Instance.new("Frame")
sectionFrame.Name = "SectionFrame"
sectionFrame.BackgroundColor3 = Theme.SectionFrame
sectionFrame.BorderSizePixel = 0
sectionFrame.Size = UDim2.new(0, 175, 0, 28)
sectionFrame.Parent = section

local sectionUICorner = Instance.new("UICorner")
sectionUICorner.Name = "SectionUICorner"
sectionUICorner.CornerRadius = UDim.new(0, 5)
sectionUICorner.Parent = sectionFrame

local sectionName = Instance.new("TextLabel")
sectionName.Name = "SectionName"
sectionName.Font = Enum.Font.GothamBold
sectionName.Text = Info.Text
sectionName.TextColor3 = Theme.SectionText
sectionName.TextSize = 12
sectionName.TextXAlignment = Enum.TextXAlignment.Left
sectionName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sectionName.BackgroundTransparency = 1
sectionName.Position = UDim2.new(0.0343, 0, 0, 0)
sectionName.Size = UDim2.new(0, 138, 0, 28)
sectionName.Parent = sectionFrame
sectionName.ZIndex = Sections + 2

local sectionButton = Instance.new("TextButton")
sectionButton.Name = "SectionButton"
sectionButton.Font = Enum.Font.GothamBold
sectionButton.Text = ""
sectionButton.TextColor3 = Color3.fromRGB(255, 255, 255)
sectionButton.AutoButtonColor = false
sectionButton.BackgroundTransparency = 1
sectionButton.BorderSizePixel = 0
sectionButton.BackgroundColor3 = Theme.SectionFrame
sectionButton.Size = UDim2.new(0, 175, 0, 28)
sectionButton.Parent = sectionFrame
sectionButton.ZIndex = Sections + 1

local sectionIcon = Instance.new("ImageLabel")
sectionIcon.Name = "SectionIcon"
sectionIcon.Image = ChevronAsset
sectionIcon.ImageColor3 = Theme.SectionText
sectionIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sectionIcon.BackgroundTransparency = 1
sectionIcon.Position = UDim2.new(0, 155, 0, 5)
sectionIcon.Rotation = 90
sectionIcon.Selectable = false
sectionIcon.Size = UDim2.new(0, 17, 0, 17)
sectionIcon.Parent = sectionFrame
sectionIcon.ZIndex = Sections + 2

local containerHolder = Instance.new("Frame")
containerHolder.Name = "ContainerHolder"
containerHolder.BackgroundColor3 = Theme.ContainerHolder
containerHolder.BackgroundTransparency = 0
containerHolder.ClipsDescendants = true
containerHolder.BorderSizePixel = 0
containerHolder.Visible = false
containerHolder.Position = UDim2.new(0, 0, 0, 28)
containerHolder.Size = UDim2.new(0, 175, 0, 0)
containerHolder.Parent = sectionFrame

local itemContainer = Instance.new("Frame")
itemContainer.Name = "ItemContainer"
itemContainer.BackgroundColor3 = Theme.ContainerHolder
itemContainer.BorderSizePixel = 0
itemContainer.Size = UDim2.new(0, 175, 0, 0)
itemContainer.Parent = containerHolder

-- Stable, idempotent Section layout. No delayed triple-toggle.
local OpenedSec = (Info.Opened == true)
local function RecalculateSection()
    local total = 0
    for _, child in ipairs(itemContainer:GetChildren()) do
        if child:IsA("GuiObject") then
            total = total + child.Size.Y.Offset
        end
    end
    section.Size = UDim2.fromOffset(175, OpenedSec and (total + 33) or 33)
    sectionFrame.Size = UDim2.fromOffset(175, OpenedSec and (total + 28) or 28)
    containerHolder.Position = UDim2.fromOffset(0, 28)
    containerHolder.Size = UDim2.fromOffset(175, OpenedSec and total or 0)
    containerHolder.Visible = OpenedSec
    itemContainer.Size = UDim2.fromOffset(175, total)
    sectionIcon.Rotation = OpenedSec and -90 or 90
    SectionOpened.Value = OpenedSec
end

function sectiontable:SetOpened(state)
    OpenedSec = not not state
    RecalculateSection()
    TweenService:Create(sectionIcon, TweenInfo.new(0.16, Enum.EasingStyle.Quad),
        {ImageTransparency = OpenedSec and 0 or 0.25}):Play()
    TweenService:Create(sectionFrame, TweenInfo.new(0.16, Enum.EasingStyle.Quad),
        {BackgroundColor3 = OpenedSec and Theme.SectionFrame or Theme.TabFrame}):Play()
end
function sectiontable:Select()
    self:SetOpened(not OpenedSec)
end
function sectiontable:IsOpened() return OpenedSec end

sectionButton.MouseButton1Click:Connect(function()
    sectiontable:Select()
end)

local itemUIListLayout = Instance.new("UIListLayout")
itemUIListLayout.Name = "ItemUIListLayout"
itemUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
itemUIListLayout.Parent = itemContainer

itemContainer.ChildAdded:Connect(function(child)
    if child:IsA("GuiObject") then
        RecalculateSection()
        child:GetPropertyChangedSignal("Size"):Connect(RecalculateSection)
    end
end)
itemContainer.ChildRemoved:Connect(RecalculateSection)
RecalculateSection()

local sectionUIStroke = Instance.new("UIStroke")
sectionUIStroke.Name = "SectionUIStroke"
sectionUIStroke.Color = Theme.SectionUIStroke
sectionUIStroke.Parent = sectionFrame

function sectiontable:Keybind(Info)
Info.Text = Info.Text or "Keybind"
Info.Default = Info.Default or Enum.KeyCode.Alt
Info.Callback = Info.Callback or function() end

local PressKey = Info.Default

local keybind = Instance.new("Frame")
keybind.Name = "Keybind"
keybind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
keybind.BackgroundTransparency = 1
keybind.Size = UDim2.new(0, 175, 0, 28)
keybind.Parent = itemContainer

local keybindFrame = Instance.new("Frame")
keybindFrame.Name = "KeybindFrame"
keybindFrame.AnchorPoint = Vector2.new(0.5, 0.5)
keybindFrame.BackgroundColor3 = Theme.ItemFrame
keybindFrame.BorderSizePixel = 0
keybindFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
keybindFrame.Size = UDim2.new(0, 171, 0, 24)
keybindFrame.Parent = keybind

local keybindText = Instance.new("TextLabel")
keybindText.Name = "KeybindText"
keybindText.Font = Enum.Font.GothamBold
keybindText.Text = Info.Text
keybindText.TextColor3 = Theme.ItemText
keybindText.TextSize = 12
keybindText.TextXAlignment = Enum.TextXAlignment.Left
keybindText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
keybindText.BackgroundTransparency = 1
keybindText.Position = UDim2.new(0.0234, 0, 0, 0)
keybindText.Size = UDim2.new(0, 167, 0, 24)
keybindText.Parent = keybindFrame

local keybindTextButton = Instance.new("TextButton")
keybindTextButton.Name = "keybindTextButton"
keybindTextButton.Font = Enum.Font.SourceSans
keybindTextButton.Text = ""
keybindTextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
keybindTextButton.TextSize = 14
keybindTextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
keybindTextButton.BackgroundTransparency = 1
keybindTextButton.Size = UDim2.new(0, 171, 0, 24)
keybindTextButton.Parent = keybindFrame

local keybindUIStroke = Instance.new("UIStroke")
keybindUIStroke.Name = "keybindUIStroke"
keybindUIStroke.Color = Theme.ItemUIStroke
keybindUIStroke.Parent = keybindFrame

local keybindOuter = Instance.new("Frame")
keybindOuter.Name = "KeybindOuter"
keybindOuter.AnchorPoint = Vector2.new(1, 0)
keybindOuter.BackgroundColor3 = Theme.ToggleOuter
keybindOuter.Position = UDim2.new(0.152, 139, 0.125, 2)
keybindOuter.Size = UDim2.new(0, 30, 0, 14)
keybindOuter.Parent = keybindFrame

local keybindOuterUIStroke = Instance.new("UIStroke")
keybindOuterUIStroke.Name = "keybindOuterUIStroke"
keybindOuterUIStroke.Color = Theme.ToggleOuterUIStroke
keybindOuterUIStroke.Parent = keybindOuter

local keybindUICorner = Instance.new("UICorner")
keybindUICorner.Name = "keybindUICorner"
keybindUICorner.CornerRadius = UDim.new(0, 5)
keybindUICorner.Parent = keybindOuter

local keybindOuterText = Instance.new("TextLabel")
keybindOuterText.Name = "KeybindOuterText"
keybindOuterText.Font = Enum.Font.GothamBold
keybindOuterText.Text = PressKey.Name
keybindOuterText.TextColor3 = Color3.fromRGB(77, 163, 255)
keybindOuterText.TextSize = 12
keybindOuterText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
keybindOuterText.BackgroundTransparency = 1
keybindOuterText.Size = UDim2.new(1, 0, 0, 14)
keybindOuterText.Parent = keybindOuter

keybindFrame.MouseEnter:Connect(function()
    TweenService:Create(keybindFrame, TweenInfo.new(.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundColor3 = Theme.HoverItemFrame}):Play()
end)

keybindFrame.MouseLeave:Connect(function()
    TweenService:Create(keybindFrame, TweenInfo.new(.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundColor3 = Theme.ItemFrame}):Play()
end)

local TextBounds = keybindOuterText.TextBounds

keybindOuter.Size = UDim2.new(0, TextBounds.X + 10, 0, 14)

keybindOuterText:GetPropertyChangedSignal("Text"):Connect(function()
    TextBounds = keybindOuterText.TextBounds
    
    keybindOuter.Size = UDim2.new(0, TextBounds.X + 10, 0, 14)
end)

local KeybindConnection
local Changing = false

keybindTextButton.MouseButton1Click:Connect(function()
    if KeybindConnection then KeybindConnection:Disconnect() end
    Changing = true
    keybindOuterText.Text = "..."
    keybindOuterUIStroke.Color = Theme.ItemUIStrokeSelected
    KeybindConnection = UserInputService.InputBegan:Connect(function(Key, gameProcessed)
        if not table.find(Blacklist, Key.KeyCode) and not gameProcessed then
            KeybindConnection:Disconnect()
            keybindOuterText.Text = Key.KeyCode.Name
            keybindOuterUIStroke.Color = Theme.ToggleOuterUIStroke
            PressKey = Key.KeyCode
            wait(.1)
            Changing = false
        end
    end)
end)

UserInputService.InputBegan:Connect(function(Key, gameProcessed)
    if not Changing and Key.KeyCode == PressKey and not gameProcessed then
        task.spawn(Info.Callback)
    end
end)
end

function sectiontable:Slider(Info)
Info.Text = Info.Text or "Slider"
Info.Flag = Info.Flag or nil
Info.Default = Info.Default or 5
Info.Minimum = Info.Minimum or 0
Info.Maximum = Info.Maximum or 10
Info.Postfix = Info.Postfix or ""
Info.Step = tonumber(Info.Step) or 1
if Info.Step <= 0 then Info.Step = 1 end
Info.Callback = Info.Callback or function() end

if Info.Minimum > Info.Maximum then
    local ValueBefore = Info.Minimum
    Info.Minimum, Info.Maximum = Info.Maximum, ValueBefore
    end
    
    Info.Default = math.clamp(Info.Default, Info.Minimum, Info.Maximum)
    local DefaultScale = (Info.Maximum == Info.Minimum) and 0 or ((Info.Default - Info.Minimum) / (Info.Maximum - Info.Minimum))

local slider = Instance.new("Frame")
slider.Name = "Slider"
slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
slider.BackgroundTransparency = 1
slider.Position = UDim2.new(0, 0, 4, 0)
slider.Size = UDim2.new(0, 175, 0, 36)
slider.Parent = itemContainer

local sliderFrame = Instance.new("Frame")
sliderFrame.Name = "sliderFrame"
sliderFrame.BackgroundColor3 = Theme.ItemFrame
sliderFrame.BorderSizePixel = 0
sliderFrame.Position = UDim2.new(0, 2, 0, 2)
sliderFrame.Size = UDim2.new(0, 171, 0, 32)
sliderFrame.Parent = slider

local sliderText = Instance.new("TextLabel")
sliderText.Name = "sliderText"
sliderText.Font = Enum.Font.GothamBold
sliderText.Text = Info.Text
sliderText.TextColor3 = Theme.ItemText
sliderText.TextSize = 12
sliderText.TextXAlignment = Enum.TextXAlignment.Left
sliderText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sliderText.BackgroundTransparency = 1
sliderText.Position = UDim2.new(0.0234, 0, 0, 0)
sliderText.Size = UDim2.new(0, 167, 0, 24)
sliderText.Parent = sliderFrame

local sliderUIStroke = Instance.new("UIStroke")
sliderUIStroke.Name = "sliderUIStroke"
sliderUIStroke.Color = Theme.ItemUIStroke
sliderUIStroke.Parent = sliderFrame

local sliderValueText = Instance.new("TextLabel")
sliderValueText.Name = "sliderValueText"
sliderValueText.Font = Enum.Font.GothamBold
sliderValueText.Text = tostring(Info.Default)..Info.Postfix
sliderValueText.TextColor3 = Theme.ItemText
sliderValueText.TextSize = 12
sliderValueText.TextXAlignment = Enum.TextXAlignment.Right
sliderValueText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sliderValueText.BackgroundTransparency = 1
sliderValueText.Position = UDim2.new(0.0234, 0, 0, 0)
sliderValueText.Size = UDim2.new(0, 163, 0, 24)
sliderValueText.Parent = sliderFrame

local sliderOuter = Instance.new("Frame")
sliderOuter.Name = "sliderOuter"
sliderOuter.BackgroundColor3 = Theme.SliderOuter
sliderOuter.BorderSizePixel = 0
sliderOuter.Position = UDim2.new(0, 4, 0, 22)
sliderOuter.Size = UDim2.new(0, 163, 0, 5)
sliderOuter.Parent = sliderFrame

local sliderOuterUICorner = Instance.new("UICorner")
sliderOuterUICorner.Name = "UICorner"
sliderOuterUICorner.CornerRadius = UDim.new(0, 100)
sliderOuterUICorner.Parent = sliderOuter

local sliderInner = Instance.new("Frame")
sliderInner.Name = "sliderInner"
sliderInner.BackgroundColor3 = Theme.SliderInner
sliderInner.BorderSizePixel = 0
sliderInner.Size = UDim2.new(DefaultScale, 0, 0, 5)
sliderInner.Parent = sliderOuter

local sliderInnerUICorner = Instance.new("UICorner")
sliderInnerUICorner.Name = "UICorner"
sliderInnerUICorner.CornerRadius = UDim.new(0, 100)
sliderInnerUICorner.Parent = sliderInner

local dragIcon = Instance.new("ImageLabel")
dragIcon.Name = "dragIcon"
dragIcon.Image = CircleAsset
dragIcon.ImageColor3 = Theme.ItemText
dragIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
dragIcon.BackgroundTransparency = 1
dragIcon.BorderSizePixel = 0
dragIcon.Position = UDim2.new(DefaultScale, -5, 0, -2)
dragIcon.Size = UDim2.new(0, 9, 0, 9)
dragIcon.Parent = sliderOuter

local dragButton = Instance.new("TextButton")
dragButton.Name = "dragButton"
dragButton.Font = Enum.Font.SourceSans
dragButton.Text = ""
dragButton.TextColor3 = Color3.fromRGB(0, 0, 0)
dragButton.TextSize = 14
dragButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
dragButton.BackgroundTransparency = 1
dragButton.Size = UDim2.new(0, 9, 0, 9)
dragButton.Parent = dragIcon

sliderFrame.MouseEnter:Connect(function()
    TweenService:Create(sliderFrame, TweenInfo.new(.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundColor3 = Theme.HoverItemFrame}):Play()
end)

sliderFrame.MouseLeave:Connect(function()
    TweenService:Create(sliderFrame, TweenInfo.new(.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundColor3 = Theme.ItemFrame}):Play()
    TweenService:Create(sliderUIStroke, TweenInfo.new(.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Color = Theme.ItemUIStroke}):Play()
end)

dragButton.MouseButton1Down:Connect(function()
    TweenService:Create(sliderUIStroke, TweenInfo.new(.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Color = Theme.ItemUIStrokeSelected}):Play()
end)

dragButton.MouseButton1Up:Connect(function()
    TweenService:Create(sliderUIStroke, TweenInfo.new(.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Color = Theme.ItemUIStroke}):Play()
end)

task.spawn(Info.Callback, Info.Default)
if Info.Flag then
    library.Flags[Info.Flag] = Info.Default
end

local MinSize = 0
local MaxSize = 1

local SizeFromScale = (MinSize +  (MaxSize - MinSize)) * DefaultScale
SizeFromScale = SizeFromScale - (SizeFromScale % 2)

dragButton.MouseButton1Down:Connect(function() -- Skidded from material ui hehe, sorry
	local MouseMove, MouseKill
	MouseMove = Mouse.Move:Connect(function()
		local Px = library:GetXY(sliderOuter)
		SizeFromScale = (MinSize +  (MaxSize - MinSize)) * Px
		local unrounded = Info.Minimum + (Info.Maximum - Info.Minimum) * Px
        local increments = math.floor((unrounded - Info.Minimum) / Info.Step + 0.5)
        local Value = math.clamp(Info.Minimum + increments * Info.Step, Info.Minimum, Info.Maximum)
        -- Avoid float tails (e.g. 0.44500000000000006)
        Value = math.floor(Value * 1000000 + 0.5) / 1000000
		SizeFromScale = SizeFromScale - (SizeFromScale % 2)
		TweenService:Create(sliderInner, TweenInfo.new(0.09, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Size = UDim2.new(Px,0,0,5)}):Play()
        local iconpos = math.clamp(Px, 0.00981, 0.99141)
        TweenService:Create(dragIcon, TweenInfo.new(0.09, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Position = UDim2.new(iconpos,-5,0,-2)}):Play()
		if Info.Flag then
		    library.Flags[Info.Flag] = Value
		end
		sliderValueText.Text = tostring(Value)..Info.Postfix
		task.spawn(Info.Callback, Value)
	end)
	MouseKill = UserInputService.InputEnded:Connect(function(UserInput)
		if UserInput.UserInputType == Enum.UserInputType.MouseButton1 then
			MouseMove:Disconnect()
			MouseKill:Disconnect()
		end
	end)
end)
end

function sectiontable:Input(Info)
Info.Text = Info.Text or "Input"
Info.Flag = Info.Flag or nil
Info.Callback = Info.Callback or function() end

local input = Instance.new("Frame")
input.Name = "Input"
input.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
input.BackgroundTransparency = 1
input.Size = UDim2.new(0, 175, 0, 28)
input.Parent = itemContainer

local inputFrame = Instance.new("Frame")
inputFrame.Name = "InputFrame"
inputFrame.AnchorPoint = Vector2.new(0.5, 0.5)
inputFrame.BackgroundColor3 =Theme.ItemFrame
inputFrame.BorderSizePixel = 0
inputFrame.ClipsDescendants = true
inputFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
inputFrame.Size = UDim2.new(0, 171, 0, 24)
inputFrame.Parent = input

local inputUIStroke = Instance.new("UIStroke")
inputUIStroke.Name = "buttonUIStroke"
inputUIStroke.Color = Theme.ItemUIStroke
inputUIStroke.Parent = inputFrame

local textBox = Instance.new("TextBox")
textBox.Name = "TextBox"
textBox.CursorPosition = -1
textBox.Font = Enum.Font.GothamBold
textBox.PlaceholderColor3 = Theme.InputPlaceHolder
textBox.PlaceholderText = Info.Text
textBox.Text = ""
textBox.TextColor3 = Theme.ItemText
textBox.TextSize = 12
textBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textBox.BackgroundTransparency = 1
textBox.Size = UDim2.new(0, 171, 0, 24)
textBox.Parent = inputFrame

inputFrame.MouseEnter:Connect(function()
    TweenService:Create(inputFrame, TweenInfo.new(.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundColor3 = Theme.HoverItemFrame}):Play()
end)

inputFrame.MouseLeave:Connect(function()
    TweenService:Create(inputFrame, TweenInfo.new(.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundColor3 = Theme.ItemFrame}):Play()
end)

textBox.Focused:Connect(function()
    TweenService:Create(inputUIStroke, TweenInfo.new(.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Color = Theme.ItemUIStrokeSelected}):Play()
end)

textBox.FocusLost:Connect(function()
    TweenService:Create(inputUIStroke, TweenInfo.new(.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Color = Theme.ItemUIStroke}):Play()
    task.spawn(Info.Callback, textBox.Text)
    if Info.Flag ~= nil then
		library.Flags[Info.Flag] = textBox.Text
	end
end)
end

function sectiontable:Dropdown(Info)
Info.Text = Info.Text or "Dropdown"
Info.Flag = Info.Flag or nil
Info.Default = Info.Default or nil
Info.List = Info.List or {}
Info.Callback = Info.Callback or function() end
Info.ChangeTextOnPick = Info.ChangeTextOnPick or false

local insidedropdown = {}

local dropdown = Instance.new("Frame")
dropdown.Name = "Dropdown"
dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
dropdown.BackgroundTransparency = 1
dropdown.Position = UDim2.new(0, 0, 3, 0)
dropdown.Size = UDim2.new(0, 175, 0, 28)
dropdown.Parent = itemContainer

local dropdownFrame = Instance.new("Frame")
dropdownFrame.Name = "dropdownFrame"
dropdownFrame.BackgroundColor3 = Theme.ItemFrame
dropdownFrame.BorderSizePixel = 0
dropdownFrame.Position = UDim2.new(0, 2, 0, 2)
dropdownFrame.Size = UDim2.new(0, 171, 0, 24)
dropdownFrame.Parent = dropdown

local dropdownText = Instance.new("TextLabel")
dropdownText.Name = "dropdownText"
dropdownText.Font = Enum.Font.GothamBold
dropdownText.Text = Info.Text
dropdownText.TextColor3 = Theme.ItemText
dropdownText.TextSize = 12
dropdownText.TextXAlignment = Enum.TextXAlignment.Left
dropdownText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
dropdownText.BackgroundTransparency = 1
dropdownText.Position = UDim2.new(0.0234, 0, 0, 0)
dropdownText.Size = UDim2.new(0, 167, 0, 24)
dropdownText.Parent = dropdownFrame

local dropdownTextButton = Instance.new("TextButton")
dropdownTextButton.Name = "dropdownTextButton"
dropdownTextButton.Font = Enum.Font.SourceSans
dropdownTextButton.Text = ""
dropdownTextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
dropdownTextButton.TextSize = 14
dropdownTextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
dropdownTextButton.BackgroundTransparency = 1
dropdownTextButton.Size = UDim2.new(0, 171, 0, 24)
dropdownTextButton.Parent = dropdownFrame

local dropdownUIStroke = Instance.new("UIStroke")
dropdownUIStroke.Name = "dropdownUIStroke"
dropdownUIStroke.Color = Theme.ItemUIStroke
dropdownUIStroke.Parent = dropdownFrame

local dropdownIcon = Instance.new("ImageLabel")
dropdownIcon.Name = "dropdownIcon"
dropdownIcon.Image = ChevronAsset
dropdownIcon.ImageColor3 = Theme.ItemText
dropdownIcon.Active = true
dropdownIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
dropdownIcon.BackgroundTransparency = 1
dropdownIcon.Position = UDim2.new(0, 155, 0, 5)
dropdownIcon.Rotation = 90
dropdownIcon.Size = UDim2.new(0, 17, 0, 17)
dropdownIcon.ZIndex = 2
dropdownIcon.Parent = dropdown

local dropdownContainer = Instance.new("Frame")
dropdownContainer.Name = "dropdownContainer"
dropdownContainer.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
dropdownContainer.BackgroundTransparency = 1
dropdownContainer.BorderSizePixel = 0
dropdownContainer.ClipsDescendants = true
dropdownContainer.Position = UDim2.new(0, 2, 0, 24)
dropdownContainer.Size = UDim2.new(0, 171, 0, 0)
dropdownContainer.Parent = dropdown

local dropdownUIListLayout = Instance.new("UIListLayout")
dropdownUIListLayout.Name = "dropdownUIListLayout"
dropdownUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
dropdownUIListLayout.Parent = dropdownContainer

dropdownFrame.MouseEnter:Connect(function()
    TweenService:Create(dropdownFrame, TweenInfo.new(.125, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundColor3 = Theme.HoverItemFrame}):Play()
end)

dropdownFrame.MouseLeave:Connect(function()
    TweenService:Create(dropdownFrame, TweenInfo.new(.125, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundColor3 = Theme.ItemFrame}):Play()
    TweenService:Create(dropdownUIStroke, TweenInfo.new(.125, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Color = Theme.ItemUIStroke}):Play()
end)

dropdownTextButton.MouseButton1Down:Connect(function()
    TweenService:Create(dropdownUIStroke, TweenInfo.new(.125, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Color = Theme.ItemUIStrokeSelected}):Play()
end)

dropdownTextButton.MouseButton1Up:Connect(function()
    TweenService:Create(dropdownUIStroke, TweenInfo.new(.125, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Color = Theme.ItemUIStroke}):Play()
end)

if Info.Default then
    task.spawn(Info.Callback, Info.Default)
    if Info.Flag then
        library.Flags[Info.Flag] = Info.Default
    end
    if Info.ChangeTextOnPick then
        dropdownText.Text = Info.Default
    end
end


local DropdownOpened = false
local DropdownOptions = {}
local function RedrawDropdown()
    local optionHeight = #DropdownOptions * 24
    dropdown.Size = UDim2.fromOffset(175, DropdownOpened and (28 + optionHeight) or 28)
    dropdownFrame.Size = UDim2.fromOffset(171, 24)
    dropdownContainer.Size = UDim2.fromOffset(171, DropdownOpened and optionHeight or 0)
    TweenService:Create(dropdownIcon, TweenInfo.new(0.16, Enum.EasingStyle.Quad),
        {Rotation = DropdownOpened and -90 or 90}):Play()
    dropdownContainer.ClipsDescendants = true
    RecalculateSection()
end

function insidedropdown:Add(str)
    str = tostring(str)
    for _, opt in ipairs(DropdownOptions) do
        if opt.Text == str then return end
    end
    local dropdownElement = Instance.new("Frame")
    dropdownElement.Name = "dropdownElement"
    dropdownElement.BackgroundTransparency = 1
    dropdownElement.Size = UDim2.fromOffset(171, 24)
    dropdownElement.Parent = dropdownContainer
    local label = Instance.new("TextLabel")
    label.Name = "dropdownElementText"
    label.Font = Enum.Font.GothamBold
    label.Text = str
    label.TextColor3 = Theme.ItemText
    label.TextSize = 12
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.BackgroundTransparency = 1
    label.Position = UDim2.fromOffset(4,0)
    label.Size = UDim2.fromOffset(162,24)
    label.Parent = dropdownElement
    local button = Instance.new("TextButton")
    button.Name = "dropdownElementButton"
    button.Text = ""
    button.BackgroundTransparency = 1
    button.Size = UDim2.fromScale(1,1)
    button.Parent = dropdownElement
    button.MouseButton1Click:Connect(function()
        if Info.Flag then library.Flags[Info.Flag] = str end
        if Info.ChangeTextOnPick then dropdownText.Text = str end
        DropdownOpened = false
        RedrawDropdown()
        task.spawn(Info.Callback, str)
    end)
    table.insert(DropdownOptions, {Text = str, Frame = dropdownElement})
    RedrawDropdown()
end

function insidedropdown:Remove(str)
    for i = #DropdownOptions, 1, -1 do
        local opt = DropdownOptions[i]
        if opt.Text == str then
            opt.Frame:Destroy()
            table.remove(DropdownOptions,i)
        end
    end
    RedrawDropdown()
end

function insidedropdown:Clear()
    for _, opt in ipairs(DropdownOptions) do opt.Frame:Destroy() end
    table.clear(DropdownOptions)
    RedrawDropdown()
end

for _, v in ipairs(Info.List) do insidedropdown:Add(v) end

SectionOpened:GetPropertyChangedSignal("Value"):Connect(function()
    if not SectionOpened.Value and DropdownOpened then
        DropdownOpened = false
        RedrawDropdown()
    end
end)

dropdownTextButton.MouseButton1Click:Connect(function()
    DropdownOpened = not DropdownOpened
    RedrawDropdown()
end)
RedrawDropdown()

return insidedropdown
end

function sectiontable:Toggle(Info)
Info.Text = Info.Text or "Toggle"
Info.Default = Info.Default or false
Info.Flag = Info.Flag or nil
Info.Callback = Info.Callback or function() end

local toggletable = {}

if Info.Flag then
    library.Flags[Info.Flag] = Info.Default
end

local Enabled = false

local toggle = Instance.new("Frame")
toggle.Name = "Toggle"
toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
toggle.BackgroundTransparency = 1
toggle.Size = UDim2.new(0, 175, 0, 28)
toggle.Parent = itemContainer

local toggleFrame = Instance.new("Frame")
toggleFrame.Name = "ToggleFrame"
toggleFrame.AnchorPoint = Vector2.new(0.5, 0.5)
toggleFrame.BackgroundColor3 = Theme.ItemFrame
toggleFrame.BorderSizePixel = 0
toggleFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
toggleFrame.Size = UDim2.new(0, 171, 0, 24)
toggleFrame.Parent = toggle

local toggleText = Instance.new("TextLabel")
toggleText.Name = "toggleText"
toggleText.Font = Enum.Font.GothamBold
toggleText.Text = Info.Text
toggleText.TextColor3 = Theme.ItemText
toggleText.TextSize = 12
toggleText.TextXAlignment = Enum.TextXAlignment.Left
toggleText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
toggleText.BackgroundTransparency = 1
toggleText.Position = UDim2.new(0.0234, 0, 0, 0)
toggleText.Size = UDim2.new(0, 167, 0, 24)
toggleText.Parent = toggleFrame

local toggleTextButton = Instance.new("TextButton")
toggleTextButton.Name = "toggleTextButton"
toggleTextButton.Font = Enum.Font.SourceSans
toggleTextButton.Text = ""
toggleTextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
toggleTextButton.TextSize = 14
toggleTextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
toggleTextButton.BackgroundTransparency = 1
toggleTextButton.Size = UDim2.new(0, 171, 0, 24)
toggleTextButton.Parent = toggleFrame

local toggleUIStroke = Instance.new("UIStroke")
toggleUIStroke.Name = "toggleUIStroke"
toggleUIStroke.Color = Theme.ItemUIStroke
toggleUIStroke.Parent = toggleFrame

toggleFrame.MouseEnter:Connect(function()
    TweenService:Create(toggleFrame, TweenInfo.new(.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundColor3 = Theme.HoverItemFrame}):Play()
end)

toggleFrame.MouseLeave:Connect(function()
    TweenService:Create(toggleFrame, TweenInfo.new(.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundColor3 = Theme.ItemFrame}):Play()
    TweenService:Create(toggleUIStroke, TweenInfo.new(.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Color = Theme.ItemUIStroke}):Play()
end)

toggleTextButton.MouseButton1Down:Connect(function()
    TweenService:Create(toggleUIStroke, TweenInfo.new(.13, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Color = Theme.ItemUIStrokeSelected}):Play()
end)

toggleTextButton.MouseButton1Up:Connect(function()
    TweenService:Create(toggleUIStroke, TweenInfo.new(.13, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Color = Theme.ItemUIStroke}):Play()
end)

local toggleOuter = Instance.new("Frame")
toggleOuter.Name = "ToggleOuter"
toggleOuter.BackgroundColor3 = Theme.ToggleOuter
toggleOuter.Position = UDim2.new(-0.023, 139, 0.167, 1)
toggleOuter.Size = UDim2.new(0, 30, 0, 14)
toggleOuter.Parent = toggleFrame

local toggleOuterUIStroke = Instance.new("UIStroke")
toggleOuterUIStroke.Name = "toggleOuterUIStroke"
toggleOuterUIStroke.Color = Theme.ToggleOuterUIStroke
toggleOuterUIStroke.Parent = toggleOuter

local toggleOuterUICorner = Instance.new("UICorner")
toggleOuterUICorner.Name = "toggleOuterUICorner"
toggleOuterUICorner.CornerRadius = UDim.new(1, 0)
toggleOuterUICorner.Parent = toggleOuter

local toggleInner = Instance.new("ImageLabel")
toggleInner.Name = "toggleInner"
toggleInner.Image = CircleAsset
toggleInner.ImageColor3 = Theme.ToggleInner
toggleInner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
toggleInner.BackgroundTransparency = 1
toggleInner.BorderSizePixel = 0
toggleInner.Position = UDim2.new(0, 2, 0, 2)
toggleInner.Size = UDim2.new(0, 10, 0, 10)
toggleInner.Parent = toggleOuter

function toggletable:Set(bool)
Enabled = bool
if Info.Flag then
    library.Flags[Info.Flag] = bool
end
TweenService:Create(toggleOuter, TweenInfo.new(.125, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundColor3 = bool and Theme.ToggleOuterEnabled or Theme.ToggleOuter}):Play()
TweenService:Create(toggleInner, TweenInfo.new(.125, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {ImageColor3 = bool and Theme.ToggleInnerEnabled or Theme.ToggleInner}):Play()
TweenService:Create(toggleInner, TweenInfo.new(.125, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Position = bool and UDim2.new(0, 18, 0, 2) or UDim2.new(0, 2, 0, 2)}):Play()
TweenService:Create(toggleOuterUIStroke, TweenInfo.new(.125, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Color = bool and Theme.ToggleOuterUIStrokeEnabled or Theme.ToggleOuterUIStroke}):Play()
task.spawn(Info.Callback, bool)
end

if Info.Default then
    toggletable:Set(true)
end

toggleTextButton.MouseButton1Click:Connect(function()
    Enabled = not Enabled
    
    toggletable:Set(Enabled)
end)

return toggletable
end

function sectiontable:Button(Info)
Info.Text = Info.Text or "Button"
Info.Callback = Info.Callback or function() end

local button = Instance.new("Frame")
button.Name = "Button"
button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button.BackgroundTransparency = 1
button.Size = UDim2.new(0, 175, 0, 28)
button.Parent = itemContainer

local buttonFrame = Instance.new("Frame")
buttonFrame.Name = "ButtonFrame"
buttonFrame.AnchorPoint = Vector2.new(0.5, 0.5)
buttonFrame.BackgroundColor3 = Theme.ItemFrame
buttonFrame.BorderSizePixel = 0
buttonFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
buttonFrame.Size = UDim2.new(0, 171, 0, 24)
buttonFrame.Parent = button

local buttonUIStroke = Instance.new("UIStroke")
buttonUIStroke.Name = "buttonUIStroke"
buttonUIStroke.Color = Theme.ItemUIStroke
buttonUIStroke.Parent = buttonFrame

buttonFrame.MouseEnter:Connect(function()
    TweenService:Create(buttonFrame, TweenInfo.new(.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundColor3 = Theme.HoverItemFrame}):Play()
end)

buttonFrame.MouseLeave:Connect(function()
    TweenService:Create(buttonFrame, TweenInfo.new(.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundColor3 = Theme.ItemFrame}):Play()
    TweenService:Create(buttonUIStroke, TweenInfo.new(.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Color = Theme.ItemUIStroke}):Play()
end)

local buttonText = Instance.new("TextLabel")
buttonText.Name = "ButtonText"
buttonText.Font = Enum.Font.GothamBold
buttonText.Text = Info.Text
buttonText.RichText = Info.RichText == true
buttonText.TextColor3 = Theme.ItemText
buttonText.TextSize = 12
buttonText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
buttonText.BackgroundTransparency = 1
buttonText.Size = UDim2.new(0, 171, 0, 24)
buttonText.Parent = buttonFrame

local buttonTextButton = Instance.new("TextButton")
buttonTextButton.Name = "ButtonTextButton"
buttonTextButton.Font = Enum.Font.SourceSans
buttonTextButton.Text = ""
buttonTextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
buttonTextButton.TextSize = 12
buttonTextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
buttonTextButton.BackgroundTransparency = 1
buttonTextButton.Size = UDim2.new(0, 171, 0, 24)
buttonTextButton.Parent = buttonFrame

buttonTextButton.MouseButton1Down:Connect(function()
    TweenService:Create(buttonUIStroke, TweenInfo.new(.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Color = Theme.ItemUIStrokeSelected}):Play()
end)

buttonTextButton.MouseButton1Up:Connect(function()
    TweenService:Create(buttonUIStroke, TweenInfo.new(.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Color = Theme.ItemUIStroke}):Play()
end)

buttonTextButton.MouseButton1Click:Connect(function()
    task.spawn(Info.Callback)
end)
local buttonApi = {}
function buttonApi:SetText(value)
    buttonText.Text = tostring(value)
end
return buttonApi
end

return sectiontable
end

local thisEntry = {
    Tab = tab, Content = tabContent,
    Frame = tabFrame, Name = tabName, Stroke = tabuIStroke
}
table.insert(TabEntries, thisEntry)

function tabtable:Select()
    if WindowClosed then return end
    SelectedTab = tab
    for _, entry in ipairs(TabEntries) do
        local selected = (entry == thisEntry)
        if selected then
            -- Ensure both side-scrollers are visible after selecting a tab.
            -- Earlier UI versions created them hidden, leaving an empty page.
            local leftPane = entry.Content:FindFirstChild("Left")
            local rightPane = entry.Content:FindFirstChild("Right")
            if leftPane then leftPane.Visible = true end
            if rightPane then rightPane.Visible = true end
            if not entry.Content.Visible then
                entry.Content.GroupTransparency = 1
                entry.Content.Visible = true
            end
            TweenService:Create(entry.Content, TweenInfo.new(0.2, Enum.EasingStyle.Quad,
                Enum.EasingDirection.Out), {GroupTransparency = 0}):Play()
        else
            entry.Content.Visible = false
            entry.Content.GroupTransparency = 1
        end
        TweenService:Create(entry.Frame, TweenInfo.new(0.16), {
            BackgroundColor3 = selected and Theme.SelectedTabFrame or Theme.TabFrame,
            Size = UDim2.fromOffset(selected and 122 or 118, 25)
        }):Play()
        TweenService:Create(entry.Name, TweenInfo.new(0.16), {
            TextColor3 = selected and Theme.Highlight or Theme.TabText
        }):Play()
        TweenService:Create(entry.Stroke, TweenInfo.new(0.16), {
            Color = selected and Theme.HighlightUIStroke or Theme.TabUIStroke
        }):Play()
    end
end

tabButton.MouseButton1Click:Connect(function()
    tabtable:Select()
end)

return tabtable
end

-- Permanent Settings tab: always created, including zero custom tabs.
-- This tab is selected automatically until another tab is explicitly selected.
local settingTab = window:Tab({Text = "Setting", Pinned = true})
local settingSection = settingTab:Section({Text = "UI Settings", Side = "Left", Opened = true})
-- Available even if the script creates no custom tabs or controls.
local AntiAFKToggle = settingSection:Toggle({
    Text = "Anti-AFK",
    Default = AntiAFKEnabled,
    Callback = function(enabled)
        if WindowClosed then return end
        AntiAFKEnabled = (enabled == true)
        QueueUISettingsSave()
        print("[Unnamed UI] Anti-AFK:", AntiAFKEnabled and "ON" or "OFF")
    end
})
function window:SetAntiAFK(enabled)
    if WindowClosed then return false end
    enabled = (enabled == true)
    AntiAFKEnabled = enabled
    QueueUISettingsSave()
    if AntiAFKToggle then AntiAFKToggle:Set(enabled) end
    return true
end
local hotkeyButton
local function ColorKeyText(keyName)
    return 'Change Hotkey: <font color="#4DA3FF">' .. tostring(keyName) .. '</font>'
end
hotkeyButton = settingSection:Button({
    Text = ColorKeyText(Hotkey.Name),
    RichText = true,
    Callback = function()
        hotkeyButton:SetText("Press ONE key...")
        window:CaptureHotkey(function(accepted, key)
            hotkeyButton:SetText(ColorKeyText(key.Name))
            if not accepted then warn("[Unnamed] Unsupported key") end
        end)
    end
})
settingSection:Button({
    Text = "Hide UI (hotkey to restore)",
    Callback = function() window:SetVisible(false) end
})
settingSection:Button({
    Text = "Restore UI",
    Callback = function() window:SetVisible(true) end
})
table.insert(WindowConnections, HotkeyChanged.Event:Connect(function(key)
    if not WindowClosed and hotkeyButton then hotkeyButton:SetText(ColorKeyText(key.Name)) end
end))
settingTab:Select()

return window
end

return library
