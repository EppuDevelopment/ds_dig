ESX = exports['es_extended']:getSharedObject()


local itemsTable = {
    -- item name, min item , max item, chance % 0 - 100 Like 100 Always 0 Never
    {"bread", 1, 3, 100},
    {"water", 3, 5, 100},
    {"gold", 1, 3, 55},
    {"money", 155, 255, 15},

}

local function getItems()
    local items = {}
    for k, v in pairs(itemsTable) do
        if math.random(0, 100) <= itemsTable[k][4] then
            local randomAmount = math.random(itemsTable[k][2], itemsTable[k][3])
            items[#items+1] = { itemsTable[k][1], randomAmount }
        end
    end

    return items
end

RegisterNetEvent('target:item', function(entity)
    local _source = source
    local items = getItems()
    local temporaryStash = exports.ox_inventory:CreateTemporaryStash({
        label = 'Ground',
        slots = #items,
        maxWeight = 1500,
        items = items
    
    })
    
    exports.ox_inventory:forceOpenInventory(_source , 'stash', temporaryStash)
end)






