  

ESX = nil



TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local url = 'https://discord.com/api/webhooks/891695501886513202/ZhKDpDXTgA4BbrcnOaCTm_XJ9joACG4P7ZmrunEr0a19gaCCz00Q-ECc-Yuz-69KOkCL'



TriggerEvent('esx_society:registerSociety', 'azulay', 'azulay', 'society_azulay', 'society_azulay', 'society_azulay', {type = 'public'})



RegisterServerEvent('azulay:logs')

AddEventHandler('azulay:logs', function(data, src)

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

	PerformHttpRequest(url, function(err, text, headers) end, 'POST', json.encode({username = "azulay-logs", content = "```css\n[" .. time .. "] " .. data .. "```"}), {['Content-Type'] = 'application/json'})

end)

