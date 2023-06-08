local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()


local Window = Library.CreateLib("DTree v0.2.5", "RJTheme6")

local Tab = Window:NewTab("Main")

local Section = Tab:NewSection("Player")

Section:NewSlider("Speed", "SliderInfo", 1000, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewSlider("Jump", "SliderInfo", 1000, 50, function(j)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = j
end)

Section:NewButton("Reset Player Setting", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
end)

local Tab = Window:NewTab("World")

local Section = Tab:NewSection("Global")

Section:NewSlider("Gravity", "SliderInfo", 500, 20, function(G)
    game:GetService("Workspace").Gravity = G
end)

Section:NewButton("Reset gravity", "ButtonInfo", function()
    game:GetService("Workspace").Gravity = 196.2
end)

local Section = Tab:NewSection("Esp")

Section:NewButton("Box Esp", "ButtonInfo", function()
    while wait(0.5) do
    for i, esk in ipairs(workspace:GetDescendants()) do
        if esk:FindFirstChild("Humanoid") then
            if not esk:FindFirstChild("EspBox") then
                if esk ~= game.Players.LocalPlayer.Character then
                    local esp = Instance.new("BoxHandleAdornment",esk)
                    esp.Adornee = esk
                    esp.ZIndex = 0
                    esp.Size = Vector3.new(4, 5, 4)
                    esp.Transparency = 0.65
                    esp.Color3 = Color3.fromRGB(173,255,47)
                    esp.AlwaysOnTop = true
                    esp.Name = "EspBox"
                end
            end
        end
    end
end
end)


local Tab = Window:NewTab("Global")

local Section = Tab:NewSection("GUI")

Section:NewSlider("Fov", "SliderInfo", 1000, 50, function(F)
    
end)


local Section = Tab:NewSection("Ather")

Section:NewButton("Get all coins", "ButtonInfo", function()
    for i,v in pairs(game:GetDescendants()) do
if v.Name == 'Credit' then
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
end
end)

local Tab = Window:NewTab("Teleport Menu")

local Section = Tab:NewSection("WorkShop")

Section:NewButton("On Button", "ButtonInfo", function()
    game:GetService("Workspace").PotKirillyt.HumanoidRootPart.CFrame = CFrame.new (10.7486048, 156.287476, 257.02655, 0.998963177, -8.03452249e-10, -0.0455255061, -1.51856017e-09, 1, -5.09700655e-08, 0.0455255061, 5.09863511e-08, 0.998963177)
end)

local Section = Tab:NewSection("Store")

Section:NewButton("Roof", "ButtonInfo", function()
game:GetService("Workspace").PotKirillyt.HumanoidRootPart.CFrame = CFrame.new (90.4032974, 158.106995, 184.583817, -0.0467141233, -8.48841886e-09, -0.998908281, 3.04018616e-11, 1, -8.49911785e-09, 0.998908281, -4.27397534e-10, -0.0467141233)
end)

Section:NewButton("Street", "ButtonInfo", function()
game:GetService("Workspace").PotKirillyt.HumanoidRootPart.CFrame = CFrame.new (240.666534, -56.7923737, 85.9546967, -0.0146081047, 4.42231958e-08, -0.999893308, -7.80379983e-10, 1, 4.42393144e-08, 0.999893308, 1.42654932e-09, -0.0146081047)
end)



local Tab = Window:NewTab("About")

local Section = Tab:NewSection("Roblox Hack by Madloss For Hide & Seek extreme")
