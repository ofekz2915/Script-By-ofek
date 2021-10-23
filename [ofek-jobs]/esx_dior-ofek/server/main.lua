ESX = nil



TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local url = 'https://discord.com/api/webhooks/813116689339908116/pbvzmfjM3IMuVJbxcsNu_q4RkRr8a9u7JOPYkift3Ow6GMm18pMasdC-PMFf6R16hsIXvzT'



TriggerEvent('esx_society:registerSociety', 'Dior', 'Dior', 'society_Dior', 'society_Dior', 'society_Dior', {type = 'public'})



RegisterServerEvent('Dior:logs')

AddEventHandler('Dior:logs', function(data, src)

    local identifiers = {discord = "", steam = "", license = "", ip = "", live = "", xbl = ""}

    local num = GetNumPlayerIdentifiers(source)



    for i = 0, num-1 do

        local a = GetPlayerIdentifier(source, i)

        local f = string.find(a, ":")

        if f then

            local b = string.sub(a, 1, f-1)

            identifiers[b] = a

        end

    end



    local id = source or src

    local time = os.date("%Y/%m/%d %X")

	PerformHttpRequest(url, function(err, text, headers) end, 'POST', json.encode({username = "Dior-logs", content = "```css\n[" .. time .. "] " .. data .. "```"}), {['Content-Type'] = 'application/json'})

end)

