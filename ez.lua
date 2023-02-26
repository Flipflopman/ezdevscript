-- this is the first exploit i've ever written so yk be nice please
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/cerberus.lua"))()
local window = Library.new("Window")
window:LockScreenBoundaries(false)

local tab1 = window:Tab("Main")
local section = tab1:Section("Bug Stuff")
local section2 = tab1:Section("Money stuff")

local label = section:Label("Bug Aura")
label:ChangeText("Bug Aura")

local label2 = section2:Label("Ping Stuff")



local BugAura = section:Toggle("Bug Aura", function(bool)
 if bool then
 
 while wait() do
for _,v in pairs(game.Workspace.PLOTS:GetChildren()) do
for i,xv in pairs(v.Wires:GetDescendants()) do
if xv.ClassName == "ProximityPrompt" then
fireproximityprompt(xv,0)
end
end
end
 end
 else
 end
end)

section2:Button("Instant Ping", function()
 for _,t in pairs(game.Workspace.PLOTS:GetChildren()) do
game.ReplicatedStorage.ZiNoy.Apps.TestSignal:FireServer(t,"Test Signal")
end
end) 

local PingSpam = section2:Toggle("Ping Spammer", function(bool2)
if bool2 then
while wait() do
for _,t in pairs(game.Workspace.PLOTS:GetChildren()) do
game.ReplicatedStorage.ZiNoy.Apps.TestSignal:FireServer(t,"Test Signal")
end
end
end
end)

--toggle:Set(false) -- Args(<Boolean> ToggleState, <Function?> Callback)
