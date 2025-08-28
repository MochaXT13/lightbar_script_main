mainLastIndex = 1
vehicle = 0
mainMenuId = 'customs-main'
local ESX = nil
local inMenu = false
local dragcam = require('client.dragcam')
local startDragCam = dragcam.startDragCam
local stopDragCam = dragcam.stopDragCam

if GetResourceState('es_extended') == 'started' then
    ESX = exports['es_extended']:getSharedObject()
else
    print('You are not using ESX. The script will not function properly.')
    return
end

local menu = {
    id = mainMenuId,
    canClose = true,
    disableInput = false,
    title = 'Lightbar Changer',
    position = 'top-left',
    options = {},
}

local function main()
    local options = {
        { label = 'Change Lightbars', close = true, args = { menu = 'client.menus.parts' } }
    }
    return options
end

local function disableControls()
    inMenu = true
    CreateThread(function()
        while inMenu do
            Wait(0)
            DisableControlAction(0, 71, true) -- accelerating
            DisableControlAction(0, 72, true) -- decelerating
            for i = 81, 85 do -- radio stuff
                DisableControlAction(0, i, true)
            end
            DisableControlAction(0, 106, true) -- turning vehicle wheels
        end
    end)
end

local function onSubmit(selected, scrollIndex, args)
    if menu.options[selected].label == 'Repair' then
        lib.hideMenu(false)
        return
    end
    local menuId = require(args.menu)()
    lib.showMenu(menuId, 1)
end

menu.onSelected = function(selected)
    PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
    mainLastIndex = selected
end

menu.onClose = function()
    inMenu = false
    stopDragCam()
    lib.showTextUI('Press [E] to change your lightbar', {
        icon = 'fa-solid fa-car',
        position = 'left-center',
    })

    TriggerServerEvent("customs:server:saveVehicleProps")
end

lib.callback.register('customs:client:vehicleProps', function()
    return lib.getVehicleProperties(vehicle)
end)

return function()
    if not cache.vehicle or inMenu then return end
    vehicle = cache.vehicle
    SetVehicleModKit(vehicle, 0)
    menu.options = main()
    lib.registerMenu(menu, onSubmit)
    lib.showMenu(menu.id, 1)
    disableControls()
    startDragCam(vehicle)
end
