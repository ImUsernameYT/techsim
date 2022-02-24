local Players = game:GetService("Players")
 
local player = Players:FindFirstChild("Builderman")
 
local character = player.Character 
local humanoid = character:FindFirstChild("Humanoid")
 
local animation = Instance.new("Animation")
animation.AnimationId = "http://www.roblox.com/asset/?id=507771019" -- useing emoto
 
local animationTrack = humanoid:LoadAnimation(animation)
animationTrack:Play(Typing)
