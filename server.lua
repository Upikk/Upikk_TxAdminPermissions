ExecuteCommand("add_ace group.bypassPermGroup command allow")
ExecuteCommand("add_principal resource." .. GetCurrentResourceName() .. " group.bypassPermGroup")

for index, permissionValue in pairs(Config.Permissions) do
    ExecuteCommand("add_ace group.TXFgGroup " .. permissionValue .. " allow")
end

AddEventHandler("txAdmin:events:adminAuthorized", function(data)
    if not data.isAdmin then return end
    if Config.Debug then print("Authorized Player with TX Admin access.\nID: " .. data.netId) end
    ExecuteCommand("add_principal identifier." .. GetPlayerIdentifier(data.netId, 0) .. " group.TXFgGroup")
end)
