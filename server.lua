AddEventHandler("txAdmin:events:adminAuthorized", function(data)
    if not data.isAdmin then return end
    if Config.Debug then print("Authorized Player with TX Admin access.\nID: " .. data.netId) end
    ExecuteCommand("add_principal identifier." .. GetPlayerIdentifier(data.netId, 0) .. " group.TXFgGroup")
end)
