local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local guiVisible = true 

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "DraggableMenuGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

local tipLabel = Instance.new("TextLabel")
tipLabel.Size = UDim2.new(1, 0, 0, 30)
tipLabel.Position = UDim2.new(0, 0, 0, 0)
tipLabel.BackgroundTransparency = 1
tipLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
tipLabel.Font = Enum.Font.SourceSansBold
tipLabel.TextSize = 22
tipLabel.Text = ""
tipLabel.Parent = screenGui

local function showTip(message, duration)
	tipLabel.Text = message
	task.delay(duration, function()
		tipLabel.Text = ""
	end)
end

local CoreGui = game:GetService("StarterGui")
CoreGui:SetCore("SendNotification", {
	Title = "Executed!",
	Text = "Team c00lkidd join today!",
	Icon = "",
	Duration = 10,
	Callback = AllowRunServiceBind,
})

print("executed FE troll gui")
showTip("Successfully loaded", 3)

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 250, 0, 375)
mainFrame.Position = UDim2.new(0.5, -125, 0.5, -150)
mainFrame.BackgroundColor3 = Color3.fromRGB(255 ,0 ,0)
mainFrame.BorderSizePixel = 0
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Visible = guiVisible -- bude true
mainFrame.Parent = screenGui

-- Klávesa RightShift pro zapnutí / vypnutí GUI
UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end
	if input.KeyCode == Enum.KeyCode.RightShift then
		guiVisible = not guiVisible
		mainFrame.Visible = guiVisible
	end
end)

local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, 1, 0, 0)
closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
closeButton.Text = "X"
closeButton.TextColor3 = Color3.new(0, 0, 0)
closeButton.Font = Enum.Font.SourceSansBold
closeButton.TextSize = 35
closeButton.Parent = mainFrame

closeButton.MouseButton1Click:Connect(function()
	guiVisible = false
	mainFrame.Visible = false
end)

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0, 30)
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.BackgroundColor3 = Color3.fromRGB(191, 9, 6)
titleLabel.Text = "FE c00lkidd scripts"
titleLabel.Font = Enum.Font.SourceSansBold
titleLabel.TextSize = 20
titleLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
titleLabel.Parent = mainFrame

local buttonHolder = Instance.new("Frame")
buttonHolder.Size = UDim2.new(1, 0, 1, -30)
buttonHolder.Position = UDim2.new(0, 0, 0, 30)
buttonHolder.BackgroundTransparency = 1
buttonHolder.Parent = mainFrame

local layout = Instance.new("UIListLayout")
layout.Padding = UDim.new(0, 10)
layout.FillDirection = Enum.FillDirection.Vertical
layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
layout.VerticalAlignment = Enum.VerticalAlignment.Top
layout.SortOrder = Enum.SortOrder.LayoutOrder
layout.Parent = buttonHolder

local function createButton(text, callback)
	local button = Instance.new("TextButton")
	button.Size = UDim2.new(0, 200, 0, 40)
	button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	button.TextColor3 = Color3.fromRGB(255, 0, 0)
	button.Text = text
	button.Font = Enum.Font.SourceSans
	button.TextSize = 18
	button.AutoButtonColor = true
	button.Parent = buttonHolder

	button.MouseButton1Click:Connect(callback)
end

-- Tlačítka
createButton("Fling OP", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/vit3g13/fling123/refs/heads/main/script.lua"))()
end)

createButton("EMOTES R15 , = open", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/vit3g13/fling123/refs/heads/main/README.md"))()
end)

createButton("18+🔞", function()
	loadstring(game:HttpGet("https://pastebin.com/raw/FWwdST5Y"))()
end)

createButton("Player teleport", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/vit3g13/fling123/refs/heads/main/teleport%20to%20player.txt"))()
end)

createButton("infinite yield", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/vit3g13/fling123/refs/heads/main/admin.txt"))()
end)

createButton("Silent executor", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/vit3g13/SilenExecutor/refs/heads/main/Code.lua"))()
end)

createButton("Aimbot + esp", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ttwizz/Open-Aimbot/master/source.lua"))()
end)
