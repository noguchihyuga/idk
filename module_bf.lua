repeat wait() until game:IsLoaded() and game.Players.LocalPlayer

local toidangkiemtraloadingscreen = tick()
repeat
    wait()
    if tick() - toidangkiemtraloadingscreen > 5 then
        game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", game.JobId)
    end
until not game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("LoadingScreen")

local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hrp = char:WaitForChild("HumanoidRootPart")
local module = {}
function module:eq()
    for x, L in pairs(game.Players.LocalPlayer["Backpack"]:GetChildren()) do
		if L:IsA("Tool") and L["ToolTip"] == "Melee" then
			local a,b = pcall(function ()
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(L)
            end)
            if a then
                break
            end
		end
	end
end
function module:haki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
	end
end

function module:topos(targetCFrame)
    local distance = (hrp.Position - targetCFrame.Position).Magnitude
    local speed = distance / 300
    
    local tweenInfo = TweenInfo.new(
        speed,
        Enum.EasingStyle.Linear,
        Enum.EasingDirection.Out
    )

    local tween = TweenService:Create(
        hrp,
        tweenInfo,
        {CFrame = targetCFrame}
    )

    tween:Play()
    return tween
end
function module:join(v)
    v = v or "Marines"
    if v == "Marines" or not v then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Marines")
    elseif v == "Pirates" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Pirates")
    end
    local L_207_ = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("ChooseTeam", true)
    local L_208_ = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("UIController", true)

    if L_207_ and L_207_.Visible  then
        repeat
            task.wait(1)
            if L_207_ and L_207_.Visible and L_208_ then
                for L_209_forvar0, L_210_forvar1 in pairs(getgc(true)) do
                    if type(L_210_forvar1) == "function" and getfenv(L_210_forvar1).script == L_208_ then
                        local L_211_ = getconstants(L_210_forvar1)
                        pcall(function()
                            if (L_211_[1] == "Pirates" or L_211_[1] == "Marines") and #L_211_ == 1 then
                                if L_211_[1] == v then
                                    L_210_forvar1(v)
                                end
                            end
                        end)
                    end
                end
            end

        until game:GetService("Players").LocalPlayer.Team
    end
end
function module:tele(v)
    if v then
        game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", v)
    else
        game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", game.JobId)
    end
end
function module:noclip(v)
    spawn(function ()
        while wait() do
            if loadstring(v)() then
                
                if not Players["LocalPlayer"]["Character"]["HumanoidRootPart"]:FindFirstChild("BodyClip") then
                    local L_348_ = Instance["new"]("BodyVelocity")
                    L_348_["Name"] = "BodyClip"
                    L_348_["Parent"] = Players["LocalPlayer"]["Character"]["HumanoidRootPart"]
                    L_348_["MaxForce"] = Vector3["new"](100000, 100000, 100000)
                    L_348_["Velocity"] = Vector3["new"](0, 0, 0)
                end
                for L_350_forvar0, L_351_forvar1 in pairs(Players["LocalPlayer"]["Character"]:GetDescendants()) do
                    if L_351_forvar1:IsA("BasePart") then
                        L_351_forvar1["CanCollide"] = false
                    end
                end
            else
                pcall(function()
                    Players["LocalPlayer"]["Character"]["HumanoidRootPart"]:FindFirstChild("BodyClip"):Destroy()
                end)
            end
        end
    end)
end
return module
