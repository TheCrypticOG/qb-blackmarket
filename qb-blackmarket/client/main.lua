local QBCore = exports['qb-core']:GetCoreObject()

--If you want your Black Mark to have a blip then uncomment this and set the correct cords.

--[[Citizen.CreateThread(function()
    Blackmarket = AddBlipForCoord(-1470.28, -367.31, 40.11)
    SetBlipSprite (Blackmarket, 469)
    SetBlipDisplay(Blackmarket, 4)
    SetBlipScale  (Blackmarket, 0.7)
    SetBlipAsShortRange(Blackmarket, true)
    SetBlipColour(Blackmarket, 2)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("Blackmarket")
    EndTextCommandSetBlipName(Blackmarket)
end)]]--

-- You can create more black markets by copying the Events below. 
-- Simply change `qb-blackmarket:shop4` to `qb-blackmarket:shop5`. 
-- Then change `TriggerServerEvent("inventory:server:OpenInventory", "shop", "market", Config.Shop4) to `TriggerServerEvent("inventory:server:OpenInventory", "shop", "market", Config.Shop5)`.
-- You will also need to go into the config and create a new shop. Just follow the same formatt as the ones already there.
-- If you want two different location to open the same shop then just call the same event in each target. For example if you wanted Shop 1 items to be in two different locations you would just call  `qb-blackmarket:shop1` in both targets.


-- Events to open the blackmarket.
RegisterNetEvent("qb-blackmarket:shop1", function()
	TriggerServerEvent("inventory:server:OpenInventory", "shop", "market", Config.Shop1)
end)

--[[
RegisterNetEvent("qb-blackmarket:shop2", function()
	TriggerServerEvent("inventory:server:OpenInventory", "shop", "market", Config.Shop2)
end)

RegisterNetEvent("qb-blackmarket:shop3", function()
	TriggerServerEvent("inventory:server:OpenInventory", "shop", "market", Config.Shop3)
end)

RegisterNetEvent("qb-blackmarket:shop4", function()
	TriggerServerEvent("inventory:server:OpenInventory", "shop", "market", Config.Shop4)
end)
]]--

------------------------
-- QB TARGET SECTION --
------------------------

Citizen.CreateThread(function()
    exports['qb-target']:AddBoxZone("BlackmarketShop1", vector3(-1470.28, -367.31, 40.11), 1.3, 1, {
		name = "BlackmarketShop1",
		heading = 43,
		debugPoly = false,
		minZ= 39.11,
		maxZ= 42.06,
	}, {
		options = {
		    {
                type = "client",
                event = "qb-blackmarket:shop1",
                icon = "fas fa-sign-in-alt",
                label = "?",
            },
		},
		distance = 2
	})

   --[[ exports['qb-target']:AddBoxZone("BlackmarketShop2", vector3(0, 0, 0), 0, 0, {
		name = "BlackmarketShop2",
		heading = 0,
		debugPoly = false,
		minZ= 0,
		maxZ= 0,
	}, {
		options = {
		    {
                type = "client",
                event = "qb-blackmarket:shop2",
                icon = "fas fa-sign-in-alt",
                label = "?",
            },
		},
		distance = 2
	})


    exports['qb-target']:AddBoxZone("BlackmarketShop3", vector3(0, 0, 0), 0, 0, {
		name = "BlackmarketShop3",
		heading = 0,
		debugPoly = false,
		minZ= 0,
		maxZ= 0,
	}, {
		options = {
		    {
                type = "client",
                event = "qb-blackmarket:shop3",
                icon = "fas fa-sign-in-alt",
                label = "?",
            },
		},
		distance = 2
	})

    exports['qb-target']:AddBoxZone("BlackmarketShop4", vector3(0, 0, 0), 0, 0, {
		name = "BlackmarketShop4",
		heading = 0,
		debugPoly = false,
		minZ= 0,
		maxZ= 0,
	}, {
		options = {
		    {
                type = "client",
                event = "qb-blackmarket:shop4",
                icon = "fas fa-sign-in-alt",
                label = "?",
            },
		},
		distance = 2
	})]]--

end)