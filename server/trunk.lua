local trunkBusy = {}

RegisterServerEvent('qb-trunk:server:setTrunkBusy')
AddEventHandler('qb-trunk:server:setTrunkBusy', function(plate, busy)
    trunkBusy[plate] = busy
end)

RegisterNetEvent('vehicle:flipit')
AddEventHandler('vehicle:flipit', function()
    TriggerClientEvent('vehicle:flipit')
end)

QBCore.Functions.CreateCallback('qb-trunk:server:getTrunkBusy', function(source, cb, plate)
    if trunkBusy[plate] then
        cb(true)
    end
    cb(false)
end)

RegisterServerEvent('qb-trunk:server:KidnapTrunk')
AddEventHandler('qb-trunk:server:KidnapTrunk', function(targetId, closestVehicle)
    TriggerClientEvent('qb-trunk:client:KidnapGetIn', targetId, closestVehicle)
end)

QBCore.Commands.Add("getintrunk", "Get In Trunk", {}, false, function(source, args)
    TriggerClientEvent('qb-trunk:client:GetIn', source)
end)

QBCore.Commands.Add("putintrunk", "Put Player In Trunk", {}, false, function(source, args)
    TriggerClientEvent('qb-trunk:server:KidnapTrunk', source)
end)