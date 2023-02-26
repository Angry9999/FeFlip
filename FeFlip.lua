wait(2)
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Angry Hub", "Sentinel")

--Main
local Tab = Window:NewTab("Main")
local MainSection = Tab:NewSection("Main")

MainSection:NewButton("Fly ( Press E)", "Press once, otherwise it may work poorly.", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Angry9999/FlyScript/main/Fly.lua'))()
end)

MainSection:NewToggle("SuperHuman", "Go fast and jump height", function(state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 120
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 120
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    end
end)

MainSection:NewButton("Noclip", "Press once, otherwise it may work poorly.", function()
    local Noclip = nil
local Clip = nil

function noclip()
	Clip = false
	local function Nocl()
		if Clip == false and game.Players.LocalPlayer.Character ~= nil then
			for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
					v.CanCollide = false
				end
			end
		end
		wait(0.21) -- basic optimization
	end
	Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
end

function clip()
	if Noclip then Noclip:Disconnect() end
	Clip = true
end

noclip() -- to toggle noclip() and clip()
end)
MainSection:NewButton("İnfinite Yeild", "Open İnfinite Yeild", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

MainSection:NewButton("FeFlip ( Keybinds:X Z C)", "Flip For Press X Z C.", function()
  wait(5)
 
--[[ Info ]]--
 
local ver = "2.00"
local scriptname = "feFlip"
 
 
--[[ Keybinds you can change ]]--
 
local FrontflipKey = Enum.KeyCode.Z -you can change this these key bind
local BackflipKey = Enum.KeyCode.X  -you can change this these key bind
local AirjumpKey = Enum.KeyCode.C   -you can change this these key bind
 
 
--[[ Dependencies ]]--
 
local ca = game:GetService("ContextActionService")
local zeezy = game:GetService("Players").LocalPlayer
local h = 0.0174533
local antigrav
 
 
--[[ Functions ]]--
 
function zeezyFrontflip(act,inp,obj)
	if inp == Enum.UserInputState.Begin then
		zeezy.Character.Humanoid:ChangeState("Jumping")
		wait()
		zeezy.Character.Humanoid.Sit = true
		for i = 1,360 do 
			delay(i/720,function()
			zeezy.Character.Humanoid.Sit = true
				zeezy.Character.HumanoidRootPart.CFrame = zeezy.Character.HumanoidRootPart.CFrame * CFrame.Angles(-h,0,0)
			end)
		end
		wait(0.55)
		zeezy.Character.Humanoid.Sit = false
	end
end
 
function zeezyBackflip(act,inp,obj)
	if inp == Enum.UserInputState.Begin then
		zeezy.Character.Humanoid:ChangeState("Jumping")
		wait()
		zeezy.Character.Humanoid.Sit = true
		for i = 1,360 do
			delay(i/720,function()
			zeezy.Character.Humanoid.Sit = true
				zeezy.Character.HumanoidRootPart.CFrame = zeezy.Character.HumanoidRootPart.CFrame * CFrame.Angles(h,0,0)
			end)
		end
		wait(0.55)
		zeezy.Character.Humanoid.Sit = false
	end
end
 
function zeezyAirjump(act,inp,obj)
	if inp == Enum.UserInputState.Begin then
		zeezy.Character:FindFirstChildOfClass'Humanoid':ChangeState("Seated")
		wait()
		zeezy.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")	
	end
end
 
 
--[[ Binds ]]--
 
ca:BindAction("zeezyFrontflip",zeezyFrontflip,false,FrontflipKey)
ca:BindAction("zeezyBackflip",zeezyBackflip,false,BackflipKey)
ca:BindAction("zeezyAirjump",zeezyAirjump,false,AirjumpKey)
 
--[[ Load Message ]]--
 
print(scriptname .. " " .. ver .. " loaded successfully")
print("made by Zeezy#7203")
 
local notifSound = Instance.new("Sound",workspace)
notifSound.PlaybackSpeed = 1.5
notifSound.Volume = 0.15
notifSound.SoundId = "rbxassetid://170765130"
notifSound.PlayOnRemove = true
notifSound:Destroy()
game.StarterGui:SetCore("SendNotification", {Title = "feFlip", Text = "feFlip loaded successfully! Press Okam Im ready to start", Icon = "rbxassetid://505845268", Duration = 5, Button1 = "Okay Im ready!"})
end)


--LOCALPLAYER
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")

PlayerSection:NewSlider("Walkspeed", "Change Walk Speed", 500, 16, function(s) -- 500 (MaxValue) | 16 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

PlayerSection:NewSlider("JumpPower", "Change Jump Power", 350, 50, function(s) -- 350 (MaxValue) | 50 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

PlayerSection:NewButton("Reset Jump/Walk", "Reset All", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
end)

--OTHER
local Other = Window:NewTab("Other")
local OtherSection = Other:NewSection("Other")

OtherSection:NewButton("Chat Spoofer", "Let's you chat for other people.", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/Angry9999/ChatSpoofer0/main/ChatSpoofer.lua'),true))()
end)

OtherSection:NewButton("Esp", "See All People", function()
    local color = BrickColor.new(50,0,250)
local transparency = .8

local Players = game:GetService("Players")
local function _ESP(c)
  repeat wait() until c.PrimaryPart ~= nil
  for i,p in pairs(c:GetChildren()) do
    if p.ClassName == "Part" or p.ClassName == "MeshPart" then
      if p:FindFirstChild("shit") then p.shit:Destroy() end
      local a = Instance.new("BoxHandleAdornment",p)
      a.Name = "shit"
      a.Size = p.Size
      a.Color = color
      a.Transparency = transparency
      a.AlwaysOnTop = true    
      a.Visible = true    
      a.Adornee = p
      a.ZIndex = true    

    end
  end
end
local function ESP()
  for i,v in pairs(Players:GetChildren()) do
    if v ~= game.Players.LocalPlayer then
      if v.Character then
        _ESP(v.Character)
      end
      v.CharacterAdded:Connect(function(chr)
        _ESP(chr)
      end)
    end
  end
  Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(chr)
      _ESP(chr)
    end)  
  end)
end
ESP()
end)

--CREDİT
local Credit = Window:NewTab("Credit")
local CreditSection = Credit:NewSection("Credit")

CreditSection:NewButton("Made By r/angry099#1000", ".", function()
    
end)
CreditSection:NewButton("https://discord.gg/FSfdZ724cS", ".", function()
    
end)
