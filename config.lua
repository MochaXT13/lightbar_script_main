Config = {}

Config.Currency = '$'
Config.Performance = true -- This enables performance upgrades
---@type ZoneOptions[]
Config.Zones = {
-- These MUST be configured with your own location before using them. The current coordinates are set for MOLO MRPD and Benny's
    {
        freeRepair = { 'police' },
        freeMods = { 'police' },
        job = { 'police' },
        hideBlip = true,
        points = {
            vec3(455.15, -991.55, 25.75),
            vec3(444.83, -991.55, 25.75),
            vec3(444.84, -1000.55, 25.75),
            vec3(455.13, -1000.56, 25.75),
        }
    },
    {
        freeRepair = { 'police' },
        freeMods = { 'ambulance' },
        points = {
            vec3(-344.36, -121.92, 38.60),
            vec3(-319.43, -130.65, 38.60),
            vec3(-324.77, -147.93, 38.60),
            vec3(-348.59, -139.1, 38.60),
        }
    },
    {
        points = {
            vec3(-224.97, -1314.69, 30.89),
            vec3(-225.63, -1339.28, 30.89),
            vec3(-191.95, -1339.87, 30.89),
            vec3(-192.85, -1314.59, 30.89),
        }
    },
    {
        points = {
            vec3(-1405.72, -445.51, 34.48),
            vec3(-1427.71, -460.16, 34.48),
            vec3(-1434.71, -449.5, 34.48),
            vec3(-1411.64, -435.57, 34.48),
        }
    },
    {
        points = {
            vec3(1171.9, 2635.58, 37.77),
            vec3(1171.87, 2644.71, 37.77),
            vec3(1189.76, 2644.09, 37.77),
            vec3(1189.77, 2636.05, 37.77),
        }
    },
    {
        points = {
            vec3(96.74, 6619.63, 31.79),
            vec3(102.72, 6613.48, 31.79),
            vec3(116.01, 6625.49, 31.79),
            vec3(109.59, 6632.11, 31.79),
        }
    }
}

Config.Mods = {
    { id = 49, label = 'Lightbar', category = 'parts' },
}

Config.ModLabels = {
    [11] = { -- Engine
        { id = -1, label = 'Stock' },
        { id = 0,  label = 'Engine 1' },
        { id = 1,  label = 'Engine 2' },
        { id = 2,  label = 'Engine 3' },
        { id = 3,  label = 'Engine 4' },
    },
    [12] = { -- Brake
        { id = -1, label = 'Stock' },
        { id = 0,  label = 'Brakes 1' },
        { id = 1,  label = 'Brakes 2' },
        { id = 2,  label = 'Brakes 3' },
    },
    [13] = { -- Transmission
        { id = -1, label = 'Stock' },
        { id = 0,  label = 'Transmission 1' },
        { id = 1,  label = 'Transmission 2' },
        { id = 2,  label = 'Transmission 3' },
        { id = 3,  label = 'Transmission 4' },
    },
    [14] = { -- Horn
        { id = 0,  label = 'Truck Horn' },
        { id = 1,  label = 'Cop Horn' },
        { id = 2,  label = 'Clown Horn' },
        { id = 3,  label = 'Musical Horn 1' },
        { id = 4,  label = 'Musical Horn 2' },
        { id = 5,  label = 'Musical Horn 3' },
        { id = 6,  label = 'Musical Horn 4' },
        { id = 7,  label = 'Musical Horn 5' },
        { id = 8,  label = 'Sad Trombone' },
        { id = 9,  label = 'Classical Horn 1' },
        { id = 10, label = 'Classical Horn 2' },
        { id = 11, label = 'Classical Horn 3' },
        { id = 12, label = 'Classical Horn 4' },
        { id = 13, label = 'Classical Horn 5' },
        { id = 14, label = 'Classical Horn 6' },
        { id = 15, label = 'Classical Horn 7' },
        { id = 16, label = 'Scale - Do' },
        { id = 17, label = 'Scale - Re' },
        { id = 18, label = 'Scale - Mi' },
        { id = 19, label = 'Scale - Fa' },
        { id = 20, label = 'Scale - Sol' },
        { id = 21, label = 'Scale - La' },
        { id = 22, label = 'Scale - Ti' },
        { id = 23, label = 'Scale - Do' },
        { id = 24, label = 'Jazz Horn 1' },
        { id = 25, label = 'Jazz Horn 2' },
        { id = 26, label = 'Jazz Horn 3' },
        { id = 27, label = 'Jazz Horn Loop' },
        { id = 28, label = 'Star Spangled Banner 1' },
        { id = 29, label = 'Star Spangled Banner 2' },
        { id = 30, label = 'Star Spangled Banner 3' },
        { id = 31, label = 'Star Spangled Banner 4' },
        { id = 32, label = 'Classical Horn 8 Loop' },
        { id = 33, label = 'Classical Horn 9 Loop' },
        { id = 34, label = 'Classical Horn 10 Loop' },
        { id = 35, label = 'Classical Horn 8' },
        { id = 36, label = 'Classical Horn 9' },
        { id = 37, label = 'Classical Horn 10' },
        { id = 38, label = 'Funeral Loop' },
        { id = 39, label = 'Funeral' },
        { id = 40, label = 'Spooky Loop' },
        { id = 41, label = 'Spooky' },
        { id = 42, label = 'San Andreas Loop' },
        { id = 43, label = 'San Andreas' },
        { id = 44, label = 'Liberty City Loop' },
        { id = 45, label = 'Liberty City' },
        { id = 46, label = 'Festive 1 Loop' },
        { id = 47, label = 'Festive 1' },
        { id = 48, label = 'Festive 2 Loop' },
        { id = 49, label = 'Festive 2' },
        { id = 50, label = 'Festive 3 Loop' },
        { id = 51, label = 'Festive 3' },
        { id = 52, label = 'Air Horn Low Loop' },
        { id = 53, label = 'Air Horn Low' },
        { id = 54, label = 'Air Horn Medium Loop' },
        { id = 55, label = 'Air Horn Medium' },
        { id = 56, label = 'Air Horn High Loop' },
        { id = 57, label = 'Air Horn High' },
    },
    [15] = { -- Suspension
        { id = -1, label = 'Stock' },
        { id = 0,  label = 'Suspension 1' },
        { id = 1,  label = 'Suspension 2' },
        { id = 2,  label = 'Suspension 3' },
        { id = 3,  label = 'Suspension 4' },
        { id = 4,  label = 'Suspension 5' },
    },
    [16] = { -- Armor
        { id = -1, label = 'Stock' },
        { id = 0,  label = 'Armor 1' },
        { id = 1,  label = 'Armor 2' },
        { id = 2,  label = 'Armor 3' },
        { id = 3,  label = 'Armor 4' },
        { id = 4,  label = 'Armor 5' },
    },
}

Config.PlateIndexes = {
    { id = 0, label = 'Blue on White 1' },
    { id = 1, label = 'Yellow on Black' },
    { id = 2, label = 'Yellow on Blue' },
    { id = 3, label = 'Blue on White 2' },
    { id = 4, label = 'Blue on White 3' },
    { id = 5, label = 'Yankton' },
}

Config.Prices = {
    ['cosmetic'] = 500,
    ['colors'] = 1000,
    [11] = { 0, 10000, 20000, 30000, 40000 },     -- Engine
    [12] = { 0, 2500, 5000, 7500 },               -- Brakes
    [13] = { 0, 5000, 10000, 15000, 20000 },      -- Transmission
    [15] = { 0, 3000, 6000, 9000, 12000, 15000 }, -- Suspension
    [18] = 10000                                  -- Turbo
}
