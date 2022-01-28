RegisterNetEvent('ofek:fix')RegisterCommand('id', 

function()
    msg("")
end, false)

function msg(text)
    TriggerEvent("notification",("" .. GetPlayerName(PlayerId()) .. " ID: " .. GetPlayerServerId(PlayerId()) .. ""),1)
end
----------------------------------------------------------------------------------------------------------------------------
AddEventHandler('ofek:fix', function()
	local playerPed = GetPlayerPed(-1)
	if IsPedInAnyVehicle(playerPed, false) then
		local vehicle = GetVehiclePedIsIn(playerPed, false)
		SetVehicleEngineHealth(vehicle, 1000)
		SetVehicleEngineOn( vehicle, true, true )
		SetVehicleFixed(vehicle)
		TriggerEvent("notification",("Your vehicle has been fixed!"),3)
	else
		TriggerEvent("notification",("You're not in a vehicle! There is no vehicle to fix!"),2)
	end
end)

RegisterNetEvent('ofek:clean')
AddEventHandler('ofek:clean', function()
	local playerPed = GetPlayerPed(-1)
	if IsPedInAnyVehicle(playerPed, false) then
		local vehicle = GetVehiclePedIsIn(playerPed, false)
		SetVehicleDirtLevel(vehicle, 0)
		TriggerEvent("notification",("Your vehicle has been cleaned!"),3)
	else
		TriggerEvent("notification",("You're not in a vehicle! There is no vehicle to clean!"),2)
	end
end)

RegisterNetEvent('ofek:noPerms')
AddEventHandler('ofek:noPerms', function()
	TriggerEvent("notification",("You don't have permissions to do this to your vehicle!"),2)
end)