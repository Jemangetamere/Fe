
local str = [[
 ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▄▄██████▄
             ▒▒▒▒▒▒▒▒▒▒▄▄████████████▄
             ▒▒▒▒▒▒▄▄██████████████████
             ▒▒▒▄█████████▀██▌███▀▀▀████
             ▒▒▐▀████████▌▀▐█▌████▌█████▌
             ▒▒█▒▒▀██████▐█▌█▌▀▀██▌██████
             ▒▒█▒▒▒▒████████████████████▌
             ▒▒▒▌▒▒▒▒█████░░░░░░░██████▀
             ▒▒▒▀▄▓▓▓▒███░░░░░░█████▀▀
             ▒▒▒▒▀░▓▓▒▐█████████▀▀▒
             ▒▒▒▒▒░░▒▒▐█████▀▀▒▒▒▒▒▒
             ▒▒░░░░░▀▀▀▀▀▀▒▒▒▒▒▒▒▒▒
             ▒▒▒░░░░░░░░▒▒▒▒▒▒▒▒▒▒
]]
print(str)

	   
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(214.34423828125, 38.20574951171875, 200013.984375))
wait(1)
coroutine.wrap(function()
	for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v:FindFirstChild("LocalScript") then
			v:Destroy()
		end
	end
	game.Players.LocalPlayer.CharacterAdded:Connect(function()
		for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:FindFirstChild("LocalScript") then
				v:Destroy()
			end
		end        
	end)
end)()



coroutine.wrap(function()
	while wait(10) do 
		local a = 0
		for i,v in pairs(game:GetService("Workspace").Ignored.Drop:GetChildren()) do
			if v.Name == 'MoneyDrop' then
				v:Destroy()
			end
		end
	end
end)()
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 0.25
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.Size = UDim2.new(0, 2000, 0, 2000)

local function RFPBLX_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)
	local a = game
	local b = a.Workspace
	local c = a.Lighting
	local d = b.Terrain
	d.WaterWaveSize = 0
	d.WaterWaveSpeed = 0
	d.WaterReflectance = 0
	d.WaterTransparency = 0
	c.GlobalShadows = false
	c.FogEnd = 9e9
	c.Brightness = 0
	settings().Rendering.QualityLevel = "Level01"
	for e, f in pairs(a:GetDescendants()) do
		if f:IsA("Part") or f:IsA("Union") or f:IsA("CornerWedgePart") or f:IsA("TrussPart") then
			f.Material = "Plastic"
			f.Reflectance = 0
		elseif f:IsA("Decal") or f:IsA("Texture") then
			f.Transparency = 0
		elseif f:IsA("ParticleEmitter") or f:IsA("Trail") then
			f.Lifetime = NumberRange.new(0)
		elseif f:IsA("Explosion") then
			f.BlastPressure = 0
			f.BlastRadius = 0
		elseif f:IsA("Fire") or f:IsA("SpotLight") or f:IsA("Smoke") or f:IsA("Sparkles") then
			f.Enabled = false
		elseif f:IsA("MeshPart") then
			f.Material = "Plastic"
			f.Reflectance = 0
			f.TextureID = 10385902758728957
		end
	end
	for e, g in pairs(c:GetChildren()) do
		if g:IsA("BlurEffect") or g:IsA("SunRaysEffect") or g:IsA("ColorCorrectionEffect") or g:IsA("BloomEffect") or g:IsA("DepthOfFieldEffect") then
			g.Enabled = false
		end
	end
end
coroutine.wrap(RFPBLX_fake_script)()
setfpscap(1)
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
	vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	wait(1)
	vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
print('anti afk')
wait()
local admins = {
	 4009285145, -- Belia
	 1183402076,
3328650274, -- droppernxrk1
 3342044827, -- droppernxrk2
 3342046868, -- droppernxrk3
 3342048790, -- droppernxrk4
 3342050403, -- droppernxrk5
 3385372641, -- droppernxrk6
 3389804640, -- droppernxrk7
 3392074450, -- droppernxrk8
 3392077257, -- droppernxrk9
 345628457, --10
 3675546197, --DropperNxrk11
 3675552721, --DropperNxrk12
 3675554915, --DropperNxrk13
 3675556610, --DropperNxrk11
 3675558477 --DropperNxrk15
}

local player = game.Players.LocalPlayer
print('alt')
local function findPlayer(name)
	for _, Player in ipairs(game.Players:GetPlayers()) do
		if (string.lower(name) == string.sub(string.lower(Player.Name), 1, #name)) then
			return Player;
		end
	end
end
local function commands(msg,plr)
	if table.find(admins, plr) then
		local Mod = game:GetService('Players'):GetPlayerByUserId(plr)
		local Msg = string.lower(msg)
		local SplitCMD = string.split(Msg,' ')
		local Msgqq = string.lower(Msg)
		local bro = string.split(Msgqq,' ')
		local Lower = string.lower(tostring(findPlayer(player.Name)))
		
		if string.find(msg, '!drop') then
		      if tonumber(SplitCMD[3]) ~= nil then
		          getgenv().a = not getgenv().a
			getgenv().brp = game.Players.LocalPlayer.DataFolder.Currency.Value - tostring(math.floor((string.match((SplitCMD[2]/SplitCMD[3]), '%d[%d.,]*') * 1.42857)))
			game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("argent a drop : " .. math.floor((string.match((SplitCMD[2]/SplitCMD[3]), '%d[%d.,]*') * 1.42857)), 'All');
                   elseif tonumber(SplitCMD[2]) ~= nil then
		    getgenv().a = not getgenv().a
			getgenv().brp = game.Players.LocalPlayer.DataFolder.Currency.Value - tostring(math.floor((string.match(SplitCMD[2], '%d[%d.,]*') * 1.42857)))
			game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("argent a drop : " .. math.floor((string.match(SplitCMD[2], '%d[%d.,]*') * 1.42857)), 'All');
			else 
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("erreur !drop SplitCMD[2]/SplitCMD[3]", 'All');
			    getgenv().a = false
		      end	
		end
		
		if string.find(SplitCMD[1], '!haut') then
		    for i, player in ipairs(game.Players:GetPlayers()) do -- use GetPlayers()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 2, 0))
			end
			wait(0.2)
			game.Players.LocalPlayer.Character.Head.Anchored = true
		end
	    
	    		if string.find(SplitCMD[1], '!bas') then
		    for i, player in ipairs(game.Players:GetPlayers()) do -- use GetPlayers()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 2, 0))
			end
			wait(0.2)
			game.Players.LocalPlayer.Character.Head.Anchored = false
		    end
		
				if string.find(SplitCMD[1], '!sit') then
		    game.Players.LocalPlayer.Character.Humanoid.Sit = true
		    end
		
				if string.find(SplitCMD[1], '!anti') then
		    while wait(10) do
            for i,v in pairs(game:GetDescendants()) do
                if v:IsA("Tool") then 
                    v:Destroy()
                end
            end
        end
				end
	    
	    		if string.find(SplitCMD[1], '!monkey') then
		    local Anim = Instance.new("Animation")
				Anim.AnimationId = "http://www.roblox.com/asset/?id=3333499508"
				CurrAnim = game.Players.LocalPlayer.Character.Humanoid.Animator:LoadAnimation(Anim)
				CurrAnim:Play()
				CurrAnim:AdjustSpeed()
	    		end
	    
	    		if string.find(SplitCMD[1], '!dolphin') then
		     local Anim = Instance.new("Animation")
				Anim.AnimationId = "http://www.roblox.com/asset/?id=5918726674"
				CurrAnim = game.Players.LocalPlayer.Character.Humanoid.Animator:LoadAnimation(Anim)
				CurrAnim:Play()
				CurrAnim:AdjustSpeed()
	    		end
	    
	    		if string.find(SplitCMD[1], '!hero') then
		    local AnimationsFolder = Instance.new('Folder', game.Workspace)
			local LayAni = Instance.new('Animation', AnimationsFolder)
			LayAni.AnimationId = 'rbxassetid://3541114300'
			local hero =  game:GetService('Players').LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(LayAni)
			hero:play()
		    end
		
if string.find(SplitCMD[1], '!unsit') then
		    while wait() do
            for i,v in pairs(game:GetDescendants()) do
                if v:IsA("Tool") then 
                    v:Destroy()	
                end
            end
end
				end

		
	
		if string.find(msg, '!reset') then
			for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
				if v:IsA'MeshPart' then
					v:Destroy()
				end
			end
		end
		
		if string.find(SplitCMD[1], '!va') then
			player.Character.HumanoidRootPart.Anchored = false
			player.Character.HumanoidRootPart.CFrame = CFrame.new(game.Workspace.Players:FindFirstChild(Mod.Name).HumanoidRootPart.Position)
		end
		
		if string.find(msg, '!lay') then
			local AnimationsFolder = Instance.new('Folder', game.Workspace)
			local LayAni = Instance.new('Animation', AnimationsFolder)
			LayAni.AnimationId = 'rbxassetid://3152378852'
			local Lay =  game:GetService('Players').LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(LayAni)
			Lay:play()
		end
		
		if string.find(SplitCMD[1], '!f') then
			player.Character.HumanoidRootPart.Anchored = true
wait(1)
                    local z = math.random(-5,5)
            local x = math.random(-5,5)
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position + Vector3.new(x, 100000000, z))
		end
		
		if string.find(SplitCMD[1], '!a') then
			player.Character.HumanoidRootPart.Anchored = false
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(214.34423828125, 38.20574951171875, 200013.984375))
		end

		
		if string.find(SplitCMD[1], '!setup') then
		    getgenv().tp = {
3328650274, -- droppernxrk1
 3342044827, -- droppernxrk2
 3342046868, -- droppernxrk3
 3342048790, -- droppernxrk4
 3342050403 -- droppernxrk5
}

local SetupsTable = {
	admin = {
		Origin = CFrame.new(-884.12915, -38.3972931, -545.291809, -0.99998939, 2.69316498e-08, -0.00460755778, 2.6944301e-08, 1, -2.68358624e-09, 0.00460755778, -2.80770518e-09, -0.99998939),
		ZMultiplier = 3,
		XMultiplier = 8,
		PerRow = 7,
		Rows = 5,
	}
}
    local function Setup(Type)
	    getgenv().PointInTable = table.find(getgenv().tp,game.Players.LocalPlayer.UserId)
		local Table = SetupsTable[Type]
		local PointInTable = getgenv().PointInTable
		local XAxis 
		local ZAxis
		local i
		if PointInTable <= 1 then
			i = 1
		elseif PointInTable <= 2 then
			i = 2
		elseif PointInTable <= 3 then
			i = 3
		elseif PointInTable <= 4 then
			i = 4
		elseif PointInTable <= 5 then
			i = 5
		end
		if i == 1 then
			if PointInTable <= Table["PerRow"]   then
				XAxis = 0
				if PointInTable == 1 then
					ZAxis = 0
				else
					ZAxis = (PointInTable-1)*Table["ZMultiplier"]
				end

			end
		else
			local index = i*Table["PerRow"]
			if (Table["PerRow"]*i) >= PointInTable then
				XAxis = (i-1)*Table["XMultiplier"]
				ZAxis = (i*Table["PerRow"]-PointInTable)*Table["ZMultiplier"]

			end
		end
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Table["Origin"]*CFrame.new(XAxis,0,ZAxis)
end
	Setup(SplitCMD[2])
	else
		return
		end
		
		
		local Allowed = string.find(Lower, SplitCMD[2])
		if Allowed then
			if string.find(SplitCMD[1], '!freeze') then
				player.Character.HumanoidRootPart.Anchored = true
			end
			
			if string.find(SplitCMD[1], '!unfreeze') then
				player.Character.HumanoidRootPart.Anchored = false
			end
			
			if string.find(SplitCMD[1], '!vien') then
				player.Character.HumanoidRootPart.CFrame = CFrame.new(game.Workspace.Players:FindFirstChild(Mod.Name).HumanoidRootPart.Position)
			end
		
		end
	end
end
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Connect(function(a)
    if table.find(admins,game.Players[a.FromSpeaker].UserId) then
        commands(a.Message,game.Players[a.FromSpeaker].UserId)
    end
end)
getgenv().a = false
while true do
	wait()
	if getgenv().a == true then
		game:GetService('ReplicatedStorage').MainEvent:FireServer('DropMoney', '10000')
		if game:GetService('Players').LocalPlayer.DataFolder.Currency.Value <= getgenv().brp then
			game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Commande terminier !", 'All');
			getgenv().a = not getgenv().a
		end
	else
		getgenv().a = false
	end
end
