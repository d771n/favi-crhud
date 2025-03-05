Scripts = {}

RegisterServerEvent('favi-crhud:server:sync')

AddEventHandler('favi-crhud:server:sync', function(data)
    local source = source
    if not Scripts[source] then
        Scripts[source] = {}
    end
    Scripts[source].data = data
    TriggerClientEvent('favi-crhud:client:sync', -1, data)
end)

AddEventHandler('playerDropped', function()
    local source = source
    if Scripts[source] then
        Scripts[source] = nil
    end
end)
