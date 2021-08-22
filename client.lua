local oxygen = 100

CreateThread(function()
    while true do
        Wait(200)
        TriggerEvent('esx_status:getStatus', 'thirst', function(status)
            thirst = status.getPercent()
        end)
        Wait(200)
        TriggerEvent('esx_status:getStatus', 'hunger', function(status)
            hunger = status.getPercent()
        end)
        Wait(200)
    end
    Wait(200)
end)


oxygen = math.ceil(GetPlayerUnderwaterTimeRemaining(PlayerId())) * 4

CreateThread(function()
    while true do
        Wait(50)
        local _p = PlayerPedId()
        SendNUIMessage({
            action = 'tick',
            health = (GetEntityHealth(_p)-100),
            armour = GetPedArmour(_p),
            stamina = 100 - GetPlayerSprintStaminaRemaining(PlayerId()),
            ooxygen = oxygen,
            swim = swim,
            hunger = hunger,
            thirst = thirst

        })
    end
end)