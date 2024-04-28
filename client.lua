ESX = exports["es_extended"]:getSharedObject()

----------------
-- # TARGET # --
----------------
exports.ox_target:addSphereZone({
    coords = DS.digsite['position'],
    radius = DS.digsite['digsitesize'],
    rotation = 45,
    debug = false,
    distance = DS.digsite['digsitesize'],
    drawSprite = false,
    options = {
        {
            items = DS.item,
            label = DS.digsite['oxtargetlabel'],
            icon = DS.digsite['oxtargeticon'],
            onSelect = function(data)
                local success = lib.skillCheck({'easy', 'easy' }, {'e'})
                if not success then
                    lib.notify({
                        title = DS.language[LANGUAGE]['notifyfailed'],
                        description = DS.language[LANGUAGE]['notifyfaileddesc'],
                        type = 'success'
                    })                    
                    return
                end
                    if lib.progressCircle({
                    duration = DS.digsite['progresduration'] * 1000,
                    label = DS.language[LANGUAGE]['progresslabel'],
                    position = 'bottom-center',
                    useWhileDead = false,
                    allowCuffed = false,
                    canCancel = true,
                    anim = {
                        dict = "random@burial",
                        clip = "a_burial",
                    },
                    prop = {
                        model = GetHashKey("prop_tool_shovel"),
                        bone = 28422,
                        pos = vector3(0.03, 0.01, 0.2),
                        rot = vector3(0.0, 0.0, -9.5)
                    },
                    disable = {
                        move = true,
                        sprint = true,
                        car = true
                    },
                })
                then 
                    TriggerServerEvent('target:item', data.entity)
                end
            end,
        }
    }
})

----------------
-- # THREAD # --
----------------
CreateThread(function()
    local blip = AddBlipForCoord(DS.digsite['position'])
    SetBlipSprite(blip, DS.digsiteblip['blipsprite'])
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, 0.5)
    SetBlipColour(blip, DS.digsiteblip['blipcolor'])
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(DS.language[LANGUAGE]['bliplabel'])
    EndTextCommandSetBlipName(blip)
    radius = AddBlipForRadius(DS.digsite['position'], DS.digsite['digsitesize'])
    SetBlipSprite(radius, 10)
end)









