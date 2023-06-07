local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()


local Window = Library.CreateLib("DTree v0.2.2", "RJTheme6")

local Tab = Window:NewTab("Main")

local Section = Tab:NewSection("Player")

Section:NewSlider("Speed", "SliderInfo", 1000, 16, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewSlider("Jump", "SliderInfo", 1000, 50, function(j) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = j
end)

Section:NewButton("Reset Player Setting", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
end)

local Tab = Window:NewTab("World")

local Section = Tab:NewSection("Global")

Section:NewSlider("Gravity", "SliderInfo", 500, 20, function(G) -- 500 (Макс. значение) | 0 (Мин. значение)
    game:GetService("Workspace").Gravity = G
end)

Section:NewButton("Reset gravity", "ButtonInfo", function()
    game:GetService("Workspace").Gravity = 196.2
end)

local Tab = Window:NewTab("Global")

local Section = Tab:NewSection("GUI")

Section:NewSlider("Fov", "SliderInfo", 1000, 50, function(F) -- 500 (Макс. значение) | 0 (Мин. значение)
    
end)


local Section = Tab:NewSection("Ather")

Section:NewButton("Get all coins", "ButtonInfo", function()
    for i,v in pairs(game:GetDescendants()) do
if v.Name == 'Credit' then
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
end
end)

local Tab = Window:NewTab("About")
