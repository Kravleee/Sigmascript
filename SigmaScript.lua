local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Create a ScreenGui
local banGui = Instance.new("ScreenGui")
banGui.Name = "BanGui"
banGui.ResetOnSpawn = false
banGui.Parent = player:WaitForChild("PlayerGui")

-- Create a frame to cover the screen
local frame = Instance.new("Frame")
frame.Size = UDim2.new(1, 0, 1, 0)
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
frame.BackgroundTransparency = 0.5
frame.Parent = banGui

-- Create the message
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(0.6, 0, 0.2, 0)
textLabel.Position = UDim2.new(0.2, 0, 0.4, 0)
textLabel.Text = "You have been banned from this game."
textLabel.TextScaled = true
textLabel.BackgroundTransparency = 1
textLabel.TextColor3 = Color3.new(1, 0, 0)
textLabel.Font = Enum.Font.SourceSansBold
textLabel.Parent = frame

-- Optional: Disable character movement
player.CharacterAdded:Connect(function(char)
    local humanoid = char:WaitForChild("Humanoid")
    humanoid.WalkSpeed = 0
    humanoid.JumpPower = 0
end)
