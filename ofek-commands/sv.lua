local everyoneAllowed = true

local allowed = 
{
	"steam:000000000000000",
	"steam:000000000000001",
	"ip:192.168.1.1",
	"ip:192.168.1.2",
	"steam:000000000000003"
}

AddEventHandler('chatMessage', function(source, n, msg)
	local msg = string.lower(msg)
	local identifier = GetPlayerIdentifiers(source)[1]
	if msg == "/fix" then
		CancelEvent()
		if everyoneAllowed == true then
			TriggerClientEvent('ofek:fix', source)
		else
			if checkAllowed(identifier) then
				TriggerClientEvent('ofek:fix', source)
			else
				TriggerClientEvent('ofek:noPerms', source)
			end
		end
	elseif msg == "/clean" then 
		CancelEvent()
		if everyoneAllowed == true then
			TriggerClientEvent('ofek:clean', source)
		else
			if checkAllowed(identifier) then
				TriggerClientEvent('ofek:clean', source)
			else
				TriggerClientEvent('ofek:noPerms', source)
			end
		end
	end
end)

function checkAllowed(id)
	for k, v in pairs(allowed) do
		if id == v then
			return true
		end
	end
	
	return false
end