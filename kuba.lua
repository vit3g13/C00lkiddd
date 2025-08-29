
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "LoadstringGui"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = game.CoreGui

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 300, 0, 250)
Frame.Position = UDim2.new(0.25, 0, 0.25, 0)
Frame.BackgroundColor3 = Color3.fromRGB(255, 141, 161)
Frame.Active = true
Frame.Draggable = true
Frame.Parent = ScreenGui

local UICorner = Instance.new("UICorner", Frame)
UICorner.CornerRadius = UDim.new(0, 10)

loadstring(game:HttpGet("https://raw.githubusercontent.com/Lukashub-coder/Lukas-magnet/refs/heads/main/Lukas%20magnet"))()


local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0, 40, 0, 30)
CloseButton.Position = UDim2.new(1, -45, 0, 5)
CloseButton.Text = "◯"
CloseButton.Font = Enum.Font.GothamBold
CloseButton.TextSize = 20
CloseButton.TextColor3 = Color3.new(0, 0, 0)
CloseButton.BackgroundColor3 = Color3.fromRGB(247, 119, 196)
CloseButton.Parent = Frame

local CloseCorner = Instance.new("UICorner", CloseButton)
CloseCorner.CornerRadius = UDim.new(0, 6)

CloseButton.MouseButton1Click:Connect(function()
	ScreenGui:Destroy()
end)

local LoadButton = Instance.new("TextButton")
LoadButton.Size = UDim2.new(0, 250, 0, 40)
LoadButton.Position = UDim2.new(0, 20, 0, 70)
LoadButton.Text = "Skin"
LoadButton.Font = Enum.Font.GothamBold
LoadButton.TextSize = 25
LoadButton.BackgroundColor3 = Color3.fromRGB(247, 119, 196)
LoadButton.TextColor3 = Color3.new(1, 1, 1)
LoadButton.Parent = Frame

local UICorner3 = Instance.new("UICorner", LoadButton)
UICorner3.CornerRadius = UDim.new(0, 6)


LoadButton.MouseButton1Click:Connect(function()
 
local targetColor = Color3.fromRGB(255, 224, 189) 

local function setBodyColors(character)
    for _, partName in pairs({
        "Head",
        "Torso", "UpperTorso", "LowerTorso",
        "Left Arm", "Right Arm",
        "LeftUpperArm", "RightUpperArm",
        "LeftLowerArm", "RightLowerArm",
        "Left Leg", "Right Leg",
        "LeftUpperLeg", "RightUpperLeg",
        "LeftLowerLeg", "RightLowerLeg",
    }) do
        local part = character:FindFirstChild(partName)
        if part and part:IsA("BasePart") then
            part.Color = targetColor
        end
    end
end

local function onCharacterAdded(character)
    task.wait(0.3)
    setBodyColors(character)
end

game.Players.LocalPlayer.CharacterAdded:Connect(onCharacterAdded)
if game.Players.LocalPlayer.Character then
    onCharacterAdded(game.Players.LocalPlayer.Character)
end



getgenv().Time = 0.5


getgenv().Items = {
    Head = {
    12170876279,
	15246777840,
	84005087457673,
	

    },
    Torso = {
		48474356,
		13129835706,
		15227121286,
		6079558399,
		12192497197,
		16738283293,
	
	
    },
  
}


getgenv().PantsId = nil

getgenv().ShirtId = nil

local function clearAccessories(character)
    for _, accessory in pairs(character:GetChildren()) do
        if accessory:IsA("Accessory") then
            accessory:Destroy()
        end
    end
end


local function clearClothing(character)
    for _, item in pairs(character:GetChildren()) do
        if item:IsA("Shirt") or item:IsA("Pants") then
            item:Destroy()
        end
    end
end


local function weldParts(part0, part1, c0, c1)
    local weld = Instance.new("Weld")
    weld.Part0 = part0
    weld.Part1 = part1
    weld.C0 = c0
    weld.C1 = c1
    weld.Parent = part0
    return weld
end

local function findAttachment(rootPart, name)
    for _, descendant in pairs(rootPart:GetDescendants()) do
        if descendant:IsA("Attachment") and descendant.Name == name then
            return descendant
        end
    end
end

local function addAccessoryToCharacter(accessoryId, parentPart)
    local accessory = game:GetObjects("rbxassetid://" .. tostring(accessoryId))[1]
    local character = game.Players.LocalPlayer.Character

    accessory.Parent = game.Workspace

    local handle = accessory:FindFirstChild("Handle")
    if handle and parentPart then
        handle.CanCollide = false
        local attachment = handle:FindFirstChildOfClass("Attachment")
        if attachment then
            local parentAttachment = findAttachment(parentPart, attachment.Name)
            if parentAttachment then
                weldParts(parentPart, handle, parentAttachment.CFrame, attachment.CFrame)
            else
               
                weldParts(parentPart, handle, CFrame.new(), attachment.CFrame)
            end
        else
            local attachmentPoint = accessory.AttachmentPoint or CFrame.new(0, 0, 0)
            weldParts(parentPart, handle, CFrame.new(0, 0.5, 0), attachmentPoint)
        end
    else
        
    end

    accessory.Parent = character
end


local function applyClothing(character)
    if getgenv().ShirtId then
        local shirt = Instance.new("Shirt")
        shirt.ShirtTemplate = "rbxassetid://" .. getgenv().ShirtId
        shirt.Parent = character
    end

    if getgenv().PantsId then
        local pants = Instance.new("Pants")
        pants.PantsTemplate = "rbxassetid://" .. getgenv().PantsId
        pants.Parent = character
    end
end


local function getBodyPart(character, partName)
    if partName == "Torso" then
        return character:FindFirstChild("Torso") or character:FindFirstChild("UpperTorso")
    elseif partName == "Left Arm" then
        return character:FindFirstChild("LeftUpperArm") or character:FindFirstChild("Left Arm")
    elseif partName == "Right Arm" then
        return character:FindFirstChild("RightUpperArm") or character:FindFirstChild("Right Arm")
    elseif partName == "Left Leg" then
        return character:FindFirstChild("LeftUpperLeg") or character:FindFirstChild("Left Leg")
    elseif partName == "Right Leg" then
        return character:FindFirstChild("RightUpperLeg") or character:FindFirstChild("Right Leg")
    else
        return character:FindFirstChild(partName)
    end
end


local function onCharacterAdded(character)
    task.wait(getgenv().Time)

    clearAccessories(character)
    clearClothing(character)

    for partName, assetIds in pairs(getgenv().Items) do
        local bodyPart = getBodyPart(character, partName)
        if bodyPart then
            for _, id in ipairs(assetIds) do
                addAccessoryToCharacter(id, bodyPart)
            end
        else
           
        end
    end

    applyClothing(character)
end


game.Players.LocalPlayer.CharacterAdded:Connect(onCharacterAdded)
if game.Players.LocalPlayer.Character then
    onCharacterAdded(game.Players.LocalPlayer.Character)
end


end)


local LoadButton = Instance.new("TextButton")
LoadButton.Size = UDim2.new(0, 250, 0, 40)
LoadButton.Position = UDim2.new(0, 20, 0, 115)
LoadButton.Text = "Speed 100"
LoadButton.Font = Enum.Font.GothamBold
LoadButton.TextSize = 25
LoadButton.BackgroundColor3 = Color3.fromRGB(247, 119, 196)
LoadButton.TextColor3 = Color3.new(1, 1, 1)
LoadButton.Parent = Frame

local UICorner3 = Instance.new("UICorner", LoadButton)
UICorner3.CornerRadius = UDim.new(0, 6)


LoadButton.MouseButton1Click:Connect(function()
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
end)

local LoadButton = Instance.new("TextButton")
LoadButton.Size = UDim2.new(0, 250, 0, 40)
LoadButton.Position = UDim2.new(0, 20, 0, 160)
LoadButton.Text = "Reset speed"
LoadButton.Font = Enum.Font.GothamBold
LoadButton.TextSize = 25
LoadButton.BackgroundColor3 = Color3.fromRGB(247, 119, 196)
LoadButton.TextColor3 = Color3.new(1, 1, 1)
LoadButton.Parent = Frame

local UICorner3 = Instance.new("UICorner", LoadButton)
UICorner3.CornerRadius = UDim.new(0, 6)


LoadButton.MouseButton1Click:Connect(function()
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

local LoadButton = Instance.new("TextButton")
LoadButton.Size = UDim2.new(0, 250, 0, 40)
LoadButton.Position = UDim2.new(0, 20, 0, 205)
LoadButton.Text = "esp"
LoadButton.Font = Enum.Font.GothamBold
LoadButton.TextSize = 25
LoadButton.BackgroundColor3 = Color3.fromRGB(247, 119, 196)
LoadButton.TextColor3 = Color3.new(1, 1, 1)
LoadButton.Parent = Frame

local UICorner3 = Instance.new("UICorner", LoadButton)
UICorner3.CornerRadius = UDim.new(0, 6)

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local button = script.Parent

local highlighted = false

LoadButton.MouseButton1Click:Connect(function()
    highlighted = not highlighted

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character then
            local highlight = player.Character:FindFirstChild("Highlight")

            if highlighted then
               
                if not highlight then
                    local newHighlight = Instance.new("Highlight")
                    newHighlight.Name = "Highlight"
                    newHighlight.FillColor = Color3.fromRGB(255, 0, 0)
                    newHighlight.OutlineColor = Color3.new(1, 0, 0)
                    newHighlight.FillTransparency = 0.5
                    newHighlight.OutlineTransparency = 0
                    newHighlight.Parent = player.Character
                end
            else
               
                if highlight then
                    highlight:Destroy()
                end
            end
        end
    end
end)

local LoadButton = Instance.new("TextButton")
LoadButton.Size = UDim2.new(0, 250, 0, 25)
LoadButton.Position = UDim2.new(0, 20, 0, 40)
LoadButton.Text = "Inf jump"
LoadButton.Font = Enum.Font.GothamBold
LoadButton.TextSize = 20
LoadButton.BackgroundColor3 = Color3.fromRGB(247, 119, 196)
LoadButton.TextColor3 = Color3.new(1, 1, 1)
LoadButton.Parent = Frame

local UICorner3 = Instance.new("UICorner", LoadButton)
UICorner3.CornerRadius = UDim.new(0, 6)


LoadButton.MouseButton1Click:Connect(function()
 local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)

end)



local Title = Instance.new("TextLabel")
Title.Text = "99 nights in forest "
Title.Font = Enum.Font.GothamBold
Title.TextSize = 27
Title.TextColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(1, -50, 0, 40)
Title.Position = UDim2.new(0, 10, 0, 1)
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = Frame





local LoadButton = Instance.new("TextButton")
LoadButton.Size = UDim2.new(0, 24, 0, 205)
LoadButton.Position = UDim2.new(0, 272, 0, 40)
LoadButton.Text = "Inf Y"
LoadButton.Font = Enum.Font.GothamBold
LoadButton.TextSize = 10
LoadButton.BackgroundColor3 = Color3.fromRGB(247, 119, 196)
LoadButton.TextColor3 = Color3.new(1, 1, 1)
LoadButton.Parent = Frame

local UICorner3 = Instance.new("UICorner", LoadButton)
UICorner3.CornerRadius = UDim.new(0, 6)


LoadButton.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)
