local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Create GUI
local banGui = Instance.new("ScreenGui")
banGui.Name = "FakeBanGui"
banGui.ResetOnSpawn = false
banGui.Parent = playerGui

-- Background overlay
local bg = Instance.new("Frame")
bg.Size = UDim2.new(1, 0, 1, 0)
bg.BackgroundColor3 = Color3.new(0, 0, 0)
bg.BackgroundTransparency = 0.3
bg.Parent = banGui

-- Ban message
local message = Instance.new("TextLabel")
message.Size = UDim2.new(0.6, 0, 0.2, 0)
message.Position = UDim2.new(0.2, 0, 0.4, 0)
message.BackgroundTransparency = 1
message.Text = "Love from Trilly! <3"
message.TextColor3 = Color3.fromRGB(255, 50, 50)
message.Font = Enum.Font.GothamBold
message.TextScaled = true
message.Parent = bg

-- Looping sound
local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://2665943889"
sound.Looped = true
sound.Volume = 1
sound.Parent = banGui
sound:Play()

-- Freeze movement
local function freezeCharacter()
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoid = character:WaitForChild("Humanoid")
	humanoid.WalkSpeed = 0
	humanoid.JumpPower = 0
	player.gameplaypause = true
end

freezeCharacter()
player.CharacterAdded:Connect(freezeCharacter)
