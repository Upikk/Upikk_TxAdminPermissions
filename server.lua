for index, permissionValue in pairs(Config.Permissions) do
    ExecuteCommand("add_ace group.TXFgGroup " .. permissionValue .. " allow")
end

AddEventHandler("txAdmin:events:adminAuth", function(data)
    if not data.isAdmin then return end
    if Config.Debug then print("Authorized Player with TX Admin access.\nID: " .. data.netid) end
    ExecuteCommand("add_principal identifier." .. GetPlayerIdentifier(data.netid, 0) .. " group.TXFgGroup")
    exports[Config.FiveguardResource]:RefreshPlayerPermissions(data.netid)
end)
