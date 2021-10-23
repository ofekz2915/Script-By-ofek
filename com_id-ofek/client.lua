RegisterCommand('id', 

function()
    msg("^9" .. GetPlayerName(PlayerId()) .. " ")
end, false)

function msg(text)
    TriggerEvent("chatMessage",  "ID: " .. GetPlayerServerId(PlayerId()) .. "", {255, 0, 0}, text)
end