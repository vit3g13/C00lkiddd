
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "LoadstringGui"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = game.CoreGui

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 560, 0, 310)
Frame.Position = UDim2.new(0.25, 0, 0.25, 0)
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.Active = true
Frame.Draggable = true
Frame.Parent = ScreenGui

local UICorner = Instance.new("UICorner", Frame)
UICorner.CornerRadius = UDim.new(0, 10)


local Title = Instance.new("TextLabel")
Title.Text = "c00lkidd Silent executor"
Title.Font = Enum.Font.GothamBold
Title.TextSize = 24
Title.TextColor3 = Color3.new(255, 0, 0)
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(1, -50, 0, 40)
Title.Position = UDim2.new(0, 10, 0, 1)
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = Frame






local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local T3itle = Instance.new("TextLabel")
T3itle.Text = "made by c00lkidd_trolling on ytb"
T3itle.Font = Enum.Font.GothamBold
T3itle.TextSize = 12
T3itle.TextColor3 = Color3.new(255, 0, 0)
T3itle.BackgroundTransparency = 1
T3itle.Size = UDim2.new(0, 300, 0, 50) 
T3itle.AnchorPoint = Vector2.new(1, 0)
T3itle.Position = UDim2.new(1, -10, 0, -55) 
T3itle.TextXAlignment = Enum.TextXAlignment.Right
T3itle.TextYAlignment = Enum.TextYAlignment.Top
T3itle.Parent = ScreenGui







local T2itle = Instance.new("TextLabel")
T2itle.Text = "Press T to Fly"
T2itle.Font = Enum.Font.GothamBold
T2itle.TextSize = 100
T2itle.TextColor3 = Color3.new(1, 0, 0) 
T2itle.BackgroundTransparency = 1
T2itle.Size = UDim2.new(0, 600, 0, 100) 
T2itle.Position = UDim2.new(0.5, -300, 0, -50) 
T2itle.TextXAlignment = Enum.TextXAlignment.Center
T2itle.TextYAlignment = Enum.TextYAlignment.Center
T2itle.Parent = ScreenGui
T2itle.Visible = false



local T1itle = Instance.new("TextLabel") 
T1itle.Font = Enum.Font.GothamBold
T1itle.TextSize = 13
T1itle.TextColor3 = Color3.new(0, 0, 0)
T1itle.BackgroundTransparency = 1
T1itle.Size = UDim2.new(1, -50, 0, 100) 
T1itle.Position = UDim2.new(0, 570, 0, 1)
T1itle.TextXAlignment = Enum.TextXAlignment.Left
T1itle.TextWrapped = true 
T1itle.Parent = Frame
T1itle.TextWrapped = false

local rawText = "Errors: Nothing errors found "


local words = string.split(rawText, " ")
local result = {}
for i, word in ipairs(words) do
    table.insert(result, word)
    if i % 4 == 0 then
        table.insert(result, "\n") 
    end
end


T1itle.Text = table.concat(result, " ")


local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0, 40, 0, 30)
CloseButton.Position = UDim2.new(1, -45, 0, 5)
CloseButton.Text = "X"
CloseButton.Font = Enum.Font.GothamBold
CloseButton.TextSize = 23
CloseButton.TextColor3 = Color3.new(0, 0, 0)
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 2, 2)
CloseButton.Parent = Frame

local CloseCorner = Instance.new("UICorner", CloseButton)
CloseCorner.CornerRadius = UDim.new(0, 6)

CloseButton.MouseButton1Click:Connect(function()
	ScreenGui:Destroy()
    Frame.Visible = false

end)




local LoadQButton = Instance.new("TextButton")
LoadQButton.Size = UDim2.new(0, 80, 0, 30)
LoadQButton.Position = UDim2.new(0, 425, 0, 5)
LoadQButton.Text = "clg"
LoadQButton.Font = Enum.Font.GothamBold
LoadQButton.TextSize = 23
LoadQButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
LoadQButton.TextColor3 = Color3.new(0, 0, 0)
LoadQButton.Parent = Frame

local UICorner3 = Instance.new("UICorner", LoadButton)
UICorner3.CornerRadius = UDim.new(0, 6)
UICorner3.Parent = LoadQButton

LoadQButton.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/vit3g13/C00lkiddd/refs/heads/main/Script.lua"))() 
end)






local picture = Instance.new("ImageLabel")
picture.Size = UDim2.new(0, 165, 0, 140)
picture.Position = UDim2.new(0, 12, -0.31, 0)
picture.BackgroundTransparency = 1
picture.Image = "rbxassetid://76856807075104"
picture.Parent = Frame 

local TextBox = Instance.new("TextBox")
TextBox.Size = UDim2.new(0, 536, 0, 195)
TextBox.Position = UDim2.new(0, 10, 0, 40)
TextBox.PlaceholderText = ":D"
TextBox.Text = ""
TextBox.TextSize = 16
TextBox.ClearTextOnFocus = false
TextBox.TextWrapped = true
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top
TextBox.BackgroundColor3 = Color3.fromRGB(14, 14, 14)
TextBox.TextColor3 = Color3.new(255, 0, 0)
TextBox.Parent = Frame

local UICorner2 = Instance.new("UICorner", TextBox)
UICorner2.CornerRadius = UDim.new(0, 6)


local LoadButton = Instance.new("TextButton")
LoadButton.Size = UDim2.new(0, 380, 0, 50)
LoadButton.Position = UDim2.new(0, 10, 0, 250)
LoadButton.Text = "Execute"
LoadButton.Font = Enum.Font.GothamBold
LoadButton.TextSize = 25
LoadButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
LoadButton.TextColor3 = Color3.new(0, 0, 0)
LoadButton.Parent = Frame

local UICorner3 = Instance.new("UICorner", LoadButton)
UICorner3.CornerRadius = UDim.new(0, 6)


local function wrapTextByWords(text, wordsPerLine)
    local words = string.split(text, " ")
    local result = {}
    for i, word in ipairs(words) do
        table.insert(result, word)
        if i % wordsPerLine == 0 then
            table.insert(result, "\n") 
        end
    end
    return table.concat(result, " ")
end


LoadButton.MouseButton1Click:Connect(function()
    local success, err = pcall(function()
        loadstring(TextBox.Text)()
    end)

    if not success then
        T1itle.Text = wrapTextByWords(err, 4) 
        warn("Error (Reson script): " .. err)
    end
end)







local Load1Button = Instance.new("TextButton")
Load1Button.Size = UDim2.new(0, 150, 0, 50)
Load1Button.Position = UDim2.new(0, 400, 0, 250)
Load1Button.Text = "Clear"
Load1Button.Font = Enum.Font.GothamBold
Load1Button.TextSize = 25
Load1Button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Load1Button.TextColor3 = Color3.new(0, 0, 0)
Load1Button.Parent = Frame

local UICorner3 = Instance.new("UICorner", LoadButton)
UICorner3.CornerRadius = UDim.new(0, 6)
UICorner3.Parent = Load1Button

Load1Button.MouseButton1Click:Connect(function()
TextBox.Text = ""
end)





local LoadButton = Instance.new("TextButton")
LoadButton.Size = UDim2.new(0, 133, 0, 30)
LoadButton.Position = UDim2.new(0, 280, 0, 5)
LoadButton.Text = "Fly"
LoadButton.Font = Enum.Font.GothamBold
LoadButton.TextSize = 25
LoadButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
LoadButton.TextColor3 = Color3.new(0, 0, 0)
LoadButton.Parent = Frame

local UICorner3 = Instance.new("UICorner", LoadButton)
UICorner3.CornerRadius = UDim.new(0, 6)


LoadButton.MouseButton1Click:Connect(function()


local player = game.Players.LocalPlayer
local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local flying = false
local speed = 65
local bv, bg
local humanoid = nil
local animator = nil
local animTracks = {}

local function disableAnimations()
    humanoid:ChangeState(Enum.HumanoidStateType.Physics) 
    animator = humanoid:FindFirstChildOfClass("Animator")
    if animator then
        for _, track in pairs(animator:GetPlayingAnimationTracks()) do
            track:Stop()
        end
    end
end

local function startFlying()
    local character = player.Character
    humanoid = character:WaitForChild("Humanoid")
    disableAnimations()

    local hrp = character:WaitForChild("HumanoidRootPart")

    bv = Instance.new("BodyVelocity")
    bv.MaxForce = Vector3.new(1e5, 1e5, 1e5)
    bv.Velocity = Vector3.new(0,0,0)
    bv.Parent = hrp

    bg = Instance.new("BodyGyro")
    bg.MaxTorque = Vector3.new(1e5, 1e5, 1e5)
    bg.CFrame = hrp.CFrame
    bg.Parent = hrp

    RunService:BindToRenderStep("Fly", Enum.RenderPriority.Character.Value, function()
        if flying and bv and bg then
            local camCF = workspace.CurrentCamera.CFrame
            local move = Vector3.new()

            if UIS:IsKeyDown(Enum.KeyCode.W) then move += camCF.LookVector end
            if UIS:IsKeyDown(Enum.KeyCode.S) then move -= camCF.LookVector end
            if UIS:IsKeyDown(Enum.KeyCode.A) then move -= camCF.RightVector end
            if UIS:IsKeyDown(Enum.KeyCode.D) then move += camCF.RightVector end
            if UIS:IsKeyDown(Enum.KeyCode.Space) then move += Vector3.new(0,1,0) end
            if UIS:IsKeyDown(Enum.KeyCode.LeftShift) then move -= Vector3.new(0,1,0) end

            if move.Magnitude > 0 then
                bv.Velocity = move.Unit * speed
            else
                bv.Velocity = Vector3.new(0,0,0)
            end

            bg.CFrame = camCF
        end
    end)
end

local function stopFlying()
    flying = false
    if bv then bv:Destroy() bv = nil end
    if bg then bg:Destroy() bg = nil end
    RunService:UnbindFromRenderStep("Fly")
    if humanoid then
        humanoid:ChangeState(Enum.HumanoidStateType.GettingUp) 
        humanoid = nil
    end
end

UIS.InputBegan:Connect(function(input, gp)
    if gp then return end
    if input.KeyCode == Enum.KeyCode.T then
        if not flying then
            flying = true
            startFlying()
        else
            stopFlying()
        end
    end
end)


T2itle.Visible = true
Wait(3)
T2itle.Visible = false
end)
