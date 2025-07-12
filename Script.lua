local CoreGui = game:GetService("StarterGui")
CoreGui:SetCore("SendNotification", {
    Title = "Executed!",
    Text = "Team c00lkidd join today!",
    Icon = "",
    Duration = 10,
    Callback = AllowRunServiceBind,
})

print("executed c0lkiddd")


local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "LoadstringGui"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = game.CoreGui

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 800, 0, 480)
Frame.Position = UDim2.new(0.25, 0, 0.25, 0)
Frame.BackgroundColor3 = Color3.fromRGB(255, 19, 3)
Frame.Active = true
Frame.Draggable = true
Frame.Parent = ScreenGui

local UICorner = Instance.new("UICorner", Frame)
UICorner.CornerRadius = UDim.new(0, 10)








local Title = Instance.new("TextLabel")
Title.Text = " c00lkidd EXECUTOR"
Title.Font = Enum.Font.GothamBold
Title.TextSize = 15
Title.TextColor3 = Color3.new(0, 0, 0)
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(1, -50, 0, 40)
Title.Position = UDim2.new(0, 10, 0, 5)
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = Frame

local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0, 280, 0, 50)
CloseButton.Position = UDim2.new(1, -295, 0, 110)
CloseButton.Text = " Reset walk speed"
CloseButton.Font = Enum.Font.GothamBold
CloseButton.TextSize = 20
CloseButton.TextColor3 = Color3.new(255, 0, 0)
CloseButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.Parent = Frame

local CloseCorner = Instance.new("UICorner", CloseButton)
CloseCorner.CornerRadius = UDim.new(0, 6)

CloseButton.MouseButton1Click:Connect(function()
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)



local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0, 150, 0, 20)
CloseButton.Position = UDim2.new(1, -325, 0, 15)
CloseButton.Text = "Stop Music"
CloseButton.Font = Enum.Font.GothamBold
CloseButton.TextSize = 20
CloseButton.TextColor3 = Color3.new(255, 0, 0)
CloseButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.Parent = Frame

local CloseCorner = Instance.new("UICorner", CloseButton)
CloseCorner.CornerRadius = UDim.new(0, 6)

CloseButton.MouseButton1Click:Connect(function()
-- Počkej chvilku na načtení hry
task.wait(1)

-- Projdi všechny objekty ve hře
for _, obj in ipairs(game:GetDescendants()) do
	-- Pokud je to Sound a právě hraje, zastav ho
	if obj:IsA("Sound") and obj.IsPlaying then
		obj:Stop()
	end
end

end)



local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0, 150, 0, 20)
CloseButton.Position = UDim2.new(1, -640, 0, 15)
CloseButton.Text = "Kill You"
CloseButton.Font = Enum.Font.GothamBold
CloseButton.TextSize = 20
CloseButton.TextColor3 = Color3.new(255, 0, 0)
CloseButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.Parent = Frame

local CloseCorner = Instance.new("UICorner", CloseButton)
CloseCorner.CornerRadius = UDim.new(0, 6)

CloseButton.MouseButton1Click:Connect(function()

local Players = game:GetService("Players")
local player = Players.LocalPlayer

player.CharacterAdded:Connect(function(character)
    character:WaitForChild("Humanoid").Health = 0
end)

-- pokud už má postavu
if player.Character then
    player.Character:WaitForChild("Humanoid").Health = 0
end

end)








local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0, 120, 0, 20)
CloseButton.Position = UDim2.new(1, -169, 0, 15)
CloseButton.Text = "Inf Jump"
CloseButton.Font = Enum.Font.GothamBold
CloseButton.TextSize = 20
CloseButton.TextColor3 = Color3.new(255, 0, 0)
CloseButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.Parent = Frame

local CloseCorner = Instance.new("UICorner", CloseButton)
CloseCorner.CornerRadius = UDim.new(0, 6)

CloseButton.MouseButton1Click:Connect(function()

local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)

end)















local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0, 150, 0, 20)
CloseButton.Position = UDim2.new(1, -480, 0, 15)
CloseButton.Text = "Play Music"
CloseButton.Font = Enum.Font.GothamBold
CloseButton.TextSize = 20
CloseButton.TextColor3 = Color3.new(255, 0, 0)
CloseButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.Parent = Frame

local CloseCorner = Instance.new("UICorner", CloseButton)
CloseCorner.CornerRadius = UDim.new(0, 6)

local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://95156028272944"
sound.PlaybackSpeed = 0.2 
sound.Parent = game.workspace
sound.Looped = true
sound:Play()
sound.Volume = 100



end)





local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0, 280, 0, 50)
CloseButton.Position = UDim2.new(1, -295, 0, 400)
CloseButton.Text = "c00lkidd Reborn"
CloseButton.Font = Enum.Font.GothamBold
CloseButton.TextSize = 20
CloseButton.TextColor3 = Color3.new(255, 0, 0)
CloseButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.Parent = Frame

local CloseCorner = Instance.new("UICorner", CloseButton)
CloseCorner.CornerRadius = UDim.new(0, 6)

CloseButton.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/MiRw3b/c00lgui-v3rx/main/c00lguiv3rx.lua"))()
end)



local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0, 280, 0, 20)
CloseButton.Position = UDim2.new(1, -295, 0, 460)
CloseButton.Text = "Destroy the server!!!"
CloseButton.Font = Enum.Font.GothamBold
CloseButton.TextSize = 20
CloseButton.TextColor3 = Color3.new(255, 0, 0)
CloseButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.Parent = Frame

local CloseCorner = Instance.new("UICorner", CloseButton)
CloseCorner.CornerRadius = UDim.new(0, 6)

CloseButton.MouseButton1Click:Connect(function()
local function makeEverythingInvisible()
	for _, descendant in ipairs(workspace:GetDescendants()) do
		if descendant:IsA("BasePart") then
			descendant.Transparency = 1
			descendant.Material = Enum.Material.SmoothPlastic -- Volitelně změna materiálu
		elseif descendant:IsA("Texture") or descendant:IsA("Decal") or descendant:IsA("SurfaceAppearance") then
			descendant:Destroy()
		elseif descendant:IsA("SpecialMesh") then
			descendant.TextureId = ""
		end
	end
end

-- Spustí funkci po pár vteřinách, aby se stihly načíst objekty
task.wait(1)
makeEverythingInvisible()

end)




local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0, 280, 0, 50)
CloseButton.Position = UDim2.new(1, -295, 0, 340)
CloseButton.Text = "Universal aimbot,esp"
CloseButton.Font = Enum.Font.GothamBold
CloseButton.TextSize = 20
CloseButton.TextColor3 = Color3.new(255, 0, 0)
CloseButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.Parent = Frame

local CloseCorner = Instance.new("UICorner", CloseButton)
CloseCorner.CornerRadius = UDim.new(0, 6)

CloseButton.MouseButton1Click:Connect(function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/ttwizz/Open-Aimbot/master/source.lua"))()
end)




local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0, 280, 0, 50)
CloseButton.Position = UDim2.new(1, -295, 0, 280)
CloseButton.Text = "Sus Emote"
CloseButton.Font = Enum.Font.GothamBold
CloseButton.TextSize = 20
CloseButton.TextColor3 = Color3.new(255, 0, 0)
CloseButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.Parent = Frame

local CloseCorner = Instance.new("UICorner", CloseButton)
CloseCorner.CornerRadius = UDim.new(0, 6)

CloseButton.MouseButton1Click:Connect(function()
  loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))()
loadstring(game:HttpGet("https://pastefy.app/YZoglOyJ/raw"))()
end)



local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0, 280, 0, 50)
CloseButton.Position = UDim2.new(1, -295, 0, 170)
CloseButton.Text = "Infinite Yield"
CloseButton.Font = Enum.Font.GothamBold
CloseButton.TextSize = 20
CloseButton.TextColor3 = Color3.new(255, 0, 0)
CloseButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.Parent = Frame

local CloseCorner = Instance.new("UICorner", CloseButton)
CloseCorner.CornerRadius = UDim.new(0, 6)

CloseButton.MouseButton1Click:Connect(function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)







local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0, 280, 0, 50)
CloseButton.Position = UDim2.new(1, -295, 0, 225)
CloseButton.Text = "c00lkidd GUI v2"
CloseButton.Font = Enum.Font.GothamBold
CloseButton.TextSize = 20
CloseButton.TextColor3 = Color3.new(255, 0, 0)
CloseButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.Parent = Frame

local CloseCorner = Instance.new("UICorner", CloseButton)
CloseCorner.CornerRadius = UDim.new(0, 6)

CloseButton.MouseButton1Click:Connect(function()
 loadstring(game:HttpGet('https://pastebin.com/raw/31k6hYSw'))() 
end)






local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0, 280, 0, 50)
CloseButton.Position = UDim2.new(1, -295, 0, 50)
CloseButton.Text = "Walk speed 100"
CloseButton.Font = Enum.Font.GothamBold
CloseButton.TextSize = 20
CloseButton.TextColor3 = Color3.new(255, 0, 0)
CloseButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.Parent = Frame

local CloseCorner = Instance.new("UICorner", CloseButton)
CloseCorner.CornerRadius = UDim.new(0, 6)

CloseButton.MouseButton1Click:Connect(function()
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
end)





local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0, 40, 0, 30)
CloseButton.Position = UDim2.new(1, -45, 0, 5)
CloseButton.Text = "X"
CloseButton.Font = Enum.Font.GothamBold
CloseButton.TextSize = 20
CloseButton.TextColor3 = Color3.new(255, 0, 0)
CloseButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.Parent = Frame

local CloseCorner = Instance.new("UICorner", CloseButton)
CloseCorner.CornerRadius = UDim.new(0, 6)

CloseButton.MouseButton1Click:Connect(function()
	ScreenGui:Destroy()
end)


local TextBox = Instance.new("TextBox")
TextBox.Size = UDim2.new(0, 480, 0, 360)
TextBox.Position = UDim2.new(0, 10, 0, 50)
TextBox.PlaceholderText = ""
TextBox.Text = ""
TextBox.TextSize = 16
TextBox.ClearTextOnFocus = false
TextBox.TextWrapped = true
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top
TextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextColor3 = Color3.new(250, 0, 0)
TextBox.Parent = Frame

local UICorner2 = Instance.new("UICorner", TextBox)
UICorner2.CornerRadius = UDim.new(0, 6)


local LoadButton = Instance.new("TextButton")
LoadButton.Size = UDim2.new(0, 480, 0, 50)
LoadButton.Position = UDim2.new(0, 10, 0, 420)
LoadButton.Text = "EXECUTE!"
LoadButton.Font = Enum.Font.GothamBold
LoadButton.TextSize = 18
LoadButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
LoadButton.TextColor3 = Color3.new(255, 0, 0)
LoadButton.Parent = Frame

local UICorner3 = Instance.new("UICorner", LoadButton)
UICorner3.CornerRadius = UDim.new(0, 6)


LoadButton.MouseButton1Click:Connect(function()
    local success, err = pcall(function()
        loadstring(TextBox.Text)()
    end)
    if not success then
        warn("Error (Reson script): " .. err)
    end
end)
