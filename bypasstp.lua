local Map = "Tiki"
local ResetTime = tick()  
if not game:GetService('Players').LocalPlayer.Character.LastSpawnPoint.Disabled then game:GetService('Players').LocalPlayer.Character.LastSpawnPoint.Disabled = true end
local CommF_ = game.ReplicatedStorage.Remotes.CommF_
CommF_:InvokeServer('SetLastSpawnPoint', Map)
wait()
repeat wait()
    game:GetService('Players').LocalPlayer.Data.LastSpawnPoint.Value = Map
until game:GetService('Players').LocalPlayer.Data.LastSpawnPoint.Value  == Map and 
wait()

game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
