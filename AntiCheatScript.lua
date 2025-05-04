-- AntiCheatScript.lua
-- Simple Roblox Anti-Cheat (Speed Detection)
-- Made by YOUR_NAME

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local SPEED_LIMIT = 60 -- studs per second (tweak as needed)
local CHECK_INTERVAL = 1

Players.PlayerAdded:Connect(function(player)
	local characterLoaded

	player.CharacterAdded:Connect(function(character)
		characterLoaded = character:WaitForChild("HumanoidRootPart")

		local lastPos = characterLoaded.Position
		local lastCheck = tick()

		RunService.Heartbeat:Connect(function()
			if characterLoaded and characterLoaded.Parent then
				local now = tick()
				if now - lastCheck >= CHECK_INTERVAL then
					local newPos = characterLoaded.Position
					local distance = (newPos - lastPos).Magnitude
					local speed = distance / (now - lastCheck)

					if speed > SPEED_LIMIT then
						warn("[AntiCheat] " .. player.Name .. " is moving too fast: " .. math.floor(speed) .. " studs/s")
						
						-- Optional: Kick or log to Discord
						player:Kick("Speed hacking detected.")
					end

					lastCheck = now
					lastPos = newPos
				end
			end
		end)
	end)
end)
