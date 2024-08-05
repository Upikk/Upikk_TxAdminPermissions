AddEventHandler("txAdmin:events:adminAuth", function(data)
    local isAdmin = data.isAdmin
    if not isAdmin then return end
    local playerId = data.netid

    local fg = exports[Config.FiveguardName]

    local AllPermissions = Config.Permissions

    print("Authenticated User: " .. playerId .. " setting permissions.")

    if isAdmin then
        for permissionName, permissionTable in pairs(AllPermissions) do
            for index, permissionValue in pairs(permissionTable) do
                fg.SetTempPermission(playerId, permissionName, permissionValue, true, true)
            end
        end
    end
end)
