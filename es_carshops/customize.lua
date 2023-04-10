Customize = {}

Customize.Framework = 'ESX'       -- QBCore or ESX --

Customize.BuyCarType = "cash"		-- cash or bank

Customize.Webhook = "https://discord.com/api/webhooks/1072103576303849595/Sl4ySJ-LevRUQowheDRVI8RnKHTe1tY0LcA_BE_nf1IzEm0f-nOoyUHo4yaru9ntnX7T"


CustomizeMarker = {

    Marker = true,

    MarkerDistance = 5.0,-- 20.0
    ShopOpenMarker = function(ShopPosition)
        DrawMarker(23, ShopPosition.x, ShopPosition.y, ShopPosition.z - 0.76, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.7, 0, 0, 0, 120, 0, 0, 0, 0, 0, 0, 0)
    end,

    MarkerDrawTextDistance = 4.0,
    ShopOpenDrawText = function(ShopPosition)
        local text = " 'Öffnen' "
        local onScreen,_x,_y=World3dToScreen2d(ShopPosition.x, ShopPosition.y, ShopPosition.z)
        local px,py,pz=table.unpack(GetGameplayCamCoords())
        SetTextScale(0.25, 0.25)
        SetTextFont(9)
        SetTextProportional(1)  
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x,_y)
        DrawRect(_x,_y+0.0125, 0.015+ (string.len(text)) / 330, 0.03, 41, 11, 41, 68)
    end,

    MarkerNuiOpenDistance = 2.0,
    ShopOpen = function()
        if IsControlJustPressed(0, 38) then
            return true
        end
    end
}

CustomizeCamera = function(self)
    isOpen = not self
    DisplayHud(isOpen)
    DisplayRadar(isOpen)
end

CustomizePlate = function()
    return string.upper(randomNumber(2) .. randomCharacter(3) .. randomNumber(3))
end

Customize.CarShops = {
    {
        Blips = {
            Position = vector3(-36.4948, -1099.89, 26.422),
            Label = "Autohaus",
            Sprite = 326,
            Display = 4,
            Scale = 0.8,
            Color = 4,
        },
        ShopPosition = vector3(-36.4948, -1099.89, 26.4),
        NuiCarViewSpawnPosition = vector4(-73.5, -822.0, 284.8, 201.5),
        NuiCarViewCameraPosition = {
            posX = -67.0,
            posY = -824.5,
            posZ = 285.5,
            rotX = -9.0,
            rotY = 0,
            rotZ = 69.0,
            fov = 45.00
        },

        TestDriveSpawnPosition = vector4(-874.34, -3226.6, 13.22, 60.82),
        BuyCarSpawnPositions = {
            [1] = vector4(-10.6716, -1096.76, 26.183, 100.5),
            [2] = vector4(-11.4883, -1099.59, 26.180, 100.5),
            [3] = vector4(-12.4124, -1102.35, 26.183, 100.5),
            [4] = vector4(-13.0040, -1105.23, 26.179, 100.5),
            [5] = vector4(-14.5665, -1108.37, 26.183, 100.5)
        },


        BuyCarSpace = true,
        TestDrive = true,
        TestDrivePlate = "TestCar",
        TestDrivePrice = 250,
        TestDriveTime = 60,

        ColorPaletes = {
            {R = 132,G = 131 ,B = 145},
            {R = 141,G = 82  ,B = 38},
            {R = 142,G = 148 ,B = 36},
            {R = 104,G = 146 ,B = 36},
            {R = 139,G = 80  ,B = 248},
            {R = 32 ,G = 87  ,B = 151},
            {R = 24 ,G = 144 ,B = 103},
            {R = 40 ,G = 143 ,B = 34},
            
            {R = 130,G = 18 ,B = 22},
            {R = 135,G = 35 ,B = 39},
            {R = 121,G = 19 ,B = 143},
            {R = 4  ,G = 32 ,B = 141},
            {R = 35 ,G = 35 ,B = 45},
            {R = 89 ,G = 25 ,B = 47},
            {R = 64 ,G = 62 ,B = 23},
            {R = 38 ,G = 46 ,B = 19}
        },
        CategoryStyleWidth = '64',
        CategoryList = {
            {name = nil, label = "Alle"},
            {name = 'sports', label = "Sports"},
            {name = 'sedans', label = "Sedans"},
            {name = 'compacts', label = "Compacts"},
            {name = 'sportsclassics', label = "Sports Classics"},
            {name = 'super', label = "Super"},
            {name = 'tuners', label = "Tuners"},
            {name = 'coupes', label = "Coupes"},
            {name = 'motorcycles', label = "Motorräder"},
            {name = 'muscle', label = "Muscle"},
            {name = 'offroad', label = "Off-Road"},
            {name = 'suvs', label = "SUVs"},
            {name = 'vans', label = "Vans"},
            {name = 'dlc', label = "DLC"}
        },
        VehicleLists = {
            {
                Model = 'windsor',
                Label = 'Windsor',
                Price = 95000,
                Category = 'coupes',
            },
            {
                Model = 'cogcabrio',
                Label = 'Cogcabrio',
                Price = 80000,
                Category = 'coupes',
            },
            {
                Model = 'brioso',
                Label = 'Brioso',
                Price = 42000,
                Category = 'coupes',
            },
            {
                Model = 'weevil',
                Label = 'Weevil',
                Price = 52500,
                Category = 'coupes',
            },
            {
                Model = 'issi3',
                Label = 'Weeny Issi Classic',
                Price = 48000,
                Category = 'compacts',
            },
            {
                Model = 'sentinel',
                Label = 'Sentinel',
                Price = 45000,
                Category = 'coupes',
            },
            {
                Model = 'surge',
                Label = 'Cheval Surge',
                Price = 75000,
                Category = 'coupes',
            },
            {
                Model = 'schafter3',
                Label = 'Schafter 3',
                Price = 75000,
                Category = 'limousine',
            },
            {
                Model = 'cog55',
                Label = 'Cog',
                Price = 30000,
                Category = 'limousine',
            },
            {
                Model = 'superd',
                Label = 'Super D',
                Price = 70000,
                Category = 'limousine',
            },
            {
                Model = 'emperor',
                Label = 'Emperor',
                Price = 10000,
                Category = 'limousine',
            },
            {
                Model = 'fugitive',
                Label = 'Fugitive',
                Price = 35000,
                Category = 'limousine',
            },
            {
                Model = 'primo2',
                Label = 'Primo 2',
                Price = 15000,
                Category = 'limousine',
            },
            {
                Model = 'a8audi',
                Label = 'Audi A8',
                Price = 3000000,
                Category = 'limousine',
            },


            {
                Model = 'f620',
                Label = 'F620',
                Price = 70000,
                Category = 'coupes',
            },
            {
                Model = 'jackal',
                Label = 'Jackal',
                Price = 15000,
                Category = 'coupes',
            },
            {
                Model = 'ferio',
                Label = 'Honda Civic',
                Price = 500000,
                Category = 'coupes',
            },
            {
                Model = 'oracle',
                Label = 'Oracle S',
                Price = 10500,
                Category = 'coupes',
            },
            {
                Model = 'previon',
                Label = 'Karin Previon',
                Price = 20000,
                Category = 'coupes',
            },
            {
                Model = 'zion2',
                Label = 'Übermacht Zion Cabrio',
                Price = 20000,
                Category = 'coupes',
            },
            {
                Model = 'futo2',
                Label = 'Karin Futo GTX',
                Price = 550000,
                Category = 'coupes',
            },


            {
                Model = 'blade',
                Label = 'Blade',
                Price = 30000,
                Category = 'muscle',
            },
            {
                Model = 'buccaneer2',
                Label = 'Buccaneer',
                Price = 43000,
                Category = 'muscle',
            },
            {
                Model = 'stalion',
                Label = 'Stalion',
                Price = 55000,
                Category = 'muscle',
            },
            {
                Model = 'yosemite',
                Label = 'Yosemite',
                Price = 28000,
                Category = 'muscle',
            },
            {
                Model = 'dominator',
                Label = 'Vapid Dominator',
                Price = 80000,
                Category = 'muscle',
            },
            {
                Model = 'picador',
                Label = 'Cheval Picador',
                Price = 90000,
                Category = 'muscle',
            },
            {
                Model = 'virgo2',
                Label = 'Albany Virgo',
                Price = 75000,
                Category = 'muscle',
            },


            {
                Model = 'carbonrs',
                Label = 'Carbonr S',
                Price = 50000,
                Category = 'motorcycles',
            },
            {
                Model = 'hakuchou',
                Label = 'Hakuchou',
                Price = 78000,
                Category = 'motorcycles',
            },
            {
                Model = 'sovereign',
                Label = 'Sovereign',
                Price = 55000,
                Category = 'motorcycles',
            },
            {
                Model = 'bati2',
                Label = 'Bati2',
                Price = 72500,
                Category = 'motorcycles',
            },
            {
                Model = 'Double',
                Label = 'double',
                Price = 12000,
                Category = 'motorcycles',
            },
            {
                Model = 'faggio3',
                Label = 'Faggio S',
                Price = 5000,
                Category = 'motorcycles',
            },
            {
                Model = 'gargoyle',
                Label = 'Gargoyle',
                Price = 10000,
                Category = 'motorcycles',
            },
            {
                Model = 'ruffian',
                Label = 'Ruffian',
                Price = 20000,
                Category = 'motorcycles',
            },
            {
                Model = 'vader',
                Label = 'Vader',
                Price = 25000,
                Category = 'motorcycles',
            },
            {
                Model = 'carbonrs',
                Label = 'Nagasaki Carbon RS',
                Price = 20000,
                Category = 'motorcycles',
            },
            {
                Model = 'bfinjection',
                Label = 'BF Injection',
                Price = 15000,
                Category = 'offroad',
            },
            {
                Model = 'bifta',
                Label = 'Bifta',
                Price = 24500,
                Category = 'offroad',
            },
            {
                Model = 'kamacho',
                Label = 'Canis Kamacho',
                Price = 90000,
                Category = 'offroad',
            },
            {
                Model = 'sandking2',
                Label = 'Sandking 2',
                Price = 100000,
                Category = 'offroad',
            },
            {
                Model = 'dubsta3',
                Label = 'Dubsta 3',
                Price = 500000,
                Category = 'offroad',
            },


            {
                Model = 'cheetah2',
                Label = 'Cheetah',
                Price = 800000,
                Category = 'sportsclassics',
            },
            {
                Model = 'torero',
                Label = 'Declasse Tornado Custom',
                Price = 350000,
                Category = 'sportsclassics',
            },
            {
                Model = 'warrener',
                Label = ' Warrener 2600 LX',
                Price = 650000,
                Category = 'sportsclassics',
            },
            {
                Model = 'omnis',
                Label = ' Obey Omnis',
                Price = 105000,
                Category = 'sportsclassics',
            },
            {
                Model = 'sentinel3',
                Label = ' Ubermacht sentinel',
                Price = 155000,
                Category = 'sportsclassics',
            },
            {
                Model = 'alpinae30',
                Label = ' BMW Alpina B6 E30',
                Price = 3000000,
                Category = 'sportsclassics',
            },            
            {
                Model = 'blista',
                Label = 'Blista',
                Price = 15500,
                Category = 'compacts',
            },
            {
                Model = 'dilettante',
                Label = 'Dilettante',
                Price = 16000,
                Category = 'compacts',
            },
            {
                Model = 'prairie',
                Label = 'Prairie',
                Price = 25000,
                Category = 'compacts',
            },
            {
                Model = 'kanjo',
                Label = 'Dinka Blista Kanjo',
                Price = 20500,
                Category = 'compacts',
            },
            {
                Model = 'club',
                Label = 'BF Club',
                Price = 20000,
                Category = 'compacts',
            },
            {
                Model = 'patriot',
                Label = 'Patriot',
                Price = 210000,
                Category = 'suvs',
            },
            {
                Model = 'rebla',
                Label = 'Übermacht Rebla GTS',
                Price = 300000,
                Category = 'suvs',
            },
            {
                Model = 'dubsta',
                Label = 'Benefactor Dubsta',
                Price = 180000,
                Category = 'suvs',
            },
            {
                Model = 'toros',
                Label = 'Pegassi Toros',
                Price = 600000,
                Category = 'suvs',
            },
            {
                Model = 'habanero',
                Label = 'Emperor Habanero',
                Price = 850000,
                Category = 'suvs',
            },


            {
                Model = 'youga',
                Label = 'Youga Custom',
                Price = 55000,
                Category = 'vans',
            },
            {
                Model = 'burrito3',
                Label = 'Burrito',
                Price = 45000,
                Category = 'vans',
            },
            {
                Model = 'rumpo',
                Label = 'Rumpo',
                Price = 100000,
                Category = 'vans',
            },


            {
                Model = 'reaper',
                Label = 'Pegassi Reaper',
                Price = 650000,
                Category = 'super',
            },
            {
                Model = 't20',
                Label = 'Progen T20',
                Price = 995000,
                Category = 'super',
            },
            {
                Model = 'adder',
                Label = 'Adder',
                Price = 850000,
                Category = 'super',
            },
            {
                Model = 'tampa2',
                Label = 'Declase Tampa',
                Price = 2000000,
                Category = 'super',
            },

            
            {
                Model = 'comet2',
                Label = 'Pfister Comet',
                Price = 100000,
                Category = 'sports',
            },
            {
                Model = 'neon',
                Label = 'Pfister Neon',
                Price = 600000,
                Category = 'sports',
            },
            {
                Model = 'buffalo',
                Label = 'Bravado Buffalo S',
                Price = 60000,
                Category = 'sports',
            },
            {
                Model = 'komoda',
                Label = 'Lampadati Komoda',
                Price = 155000,
                Category = 'sports',
            },
            {
                Model = 'vstr',
                Label = 'Albany V-STR',
                Price = 535000,
                Category = 'sports',
            },
            {
                Model = 'furoregt',
                Label = 'Furoregt',
                Price = 200000,
                Category = 'sports',
            },
            {
                Model = 'benson',
                Label = 'benson',
                Price = 1000000,
                Category = 'vans',
            },
            {
                Model = 'penumbra2',
                Label = 'Maibatsu Corporation Penumbra',
                Price = 1200000,
                Category = 'sports',
            }
        },
    },
    
    {
        Blips = {
            Position = vector3(-51.2291, -1094.0078, 26.4224),
            Label = "Flugzeug Shop",
            Sprite = 43,
            Display = 4,
            Scale = 0.7,
            Color = 4,
        },
        ShopPosition = vector3(-51.2291, -1094.0078, 26.4224),
        NuiCarViewSpawnPosition = vector4(-75.3122, -818.490, 326.17, 201.5),
        NuiCarViewCameraPosition = {
            posX = -52.1,
            posY = -825.4,
            posZ = 335.17,
            rotX = -20.0,
            rotY = 0,
            rotZ = 73.2,
            fov = 40.00
        },
        TestDriveSpawnPosition = vector4(-874.34, -3230.6, 13.22, 60.82),
        
        BuyCarSpawnPositions = {
            [1] = vector4(-74.7845, -819.4129, 326.1752, 16.1282),
            [2] = vector4(-73.7242, -822.1533, 326.1751, 354.1538),
            [3] = vector4(-78.5461, -817.9734, 326.1755, 317.2930),
            [4] = vector4(-74.7845, -819.4129, 326.1752, 16.1282),
            [5] = vector4(-74.7845, -819.4129, 326.1752, 16.1282)
        },

        BuyCarSpace = true,
        TestDrive = true,
        TestDrivePlate = "TestCar",
        TestDrivePrice = 5000,
        TestDriveTime = 60,

        ColorPaletes = {
            {R = 255,G = 255,B = 255},
            {R = 255,G = 74, B = 74},
            {R = 255,G = 183,B = 74},
            {R = 208,G = 255,B = 74},
            {R = 74, G= 255, B = 114},
            {R = 255,G = 74, B = 118},
            {R = 230,G = 74, B = 255},
            {R = 132,G = 74, B = 255},
            {R = 74, G= 157, B = 255},
            {R = 74, G= 255, B = 222},
            {R = 0,G = 148 ,B = 36},
            {R = 104,G = 146 ,B = 36},
            {R = 139,G = 80  ,B = 248},
            {R = 32 ,G = 0  ,B = 151},
            {R = 0 ,G = 144 ,B = 103},
            {R = 40 ,G = 143 ,B = 0}
        },
        CategoryStyleWidth = '14',
        CategoryList = {
            {name = nil, label = "Alle"},
            {name = 'plane', label = "Flugzeug"},
            {name = 'dlc', label = "DLC"}
        },
        VehicleLists = {
            {
                Model = 'havok',
                Label = 'Havok',
                Price = 1250000,
                Category = 'plane',
            },
            {
                Model = 'seasparrow',
                Label = 'Seasparrow',
                Price = 2000000,
                Category = 'plane',
            },
            {
                Model = 'volatus',
                Label = 'Volatus',
                Price = 5500000,
                Category = 'plane',
            }
        },
    },
    {
        Blips = {
            Position = vector3(-719.250, -1366.47, 1.5952),
            Label = "Boot Shop",
            Sprite = 427,
            Display = 4,
            Scale = 0.6,
            Color = 4,
        },
        ShopPosition = vector3(-719.250, -1366.47, 1.4),
        NuiCarViewSpawnPosition = vector4(-716.794, -1344.95, 0.1710, 201.5),
        NuiCarViewCameraPosition = {
            posX = -725.602, -- -725.602, -1358.61, 0.1185
            posY = -1358.61,
            posZ = 7.0,
            rotX = -16.0,
            rotY = 0,
            rotZ = -35.0,
            fov = 45.00
        },
        TestDriveSpawnPosition = vector4(-912.642, -1455.92, 0.1226, 60.82),

        BuyCarSpawnPositions = {
            [1] = vector4(-773.321, -1404.22, 0.0836, 100.5)
        },

        BuyCarSpace = true,
        TestDrive = true,
        TestDrivePlate = "TestCar",
        TestDrivePrice = 5000,
        TestDriveTime = 60,

        ColorPaletes = {
            {R = 255,G = 255,B = 255},
            {R = 255,G = 74, B = 74},
            {R = 255,G = 183,B = 74},
            {R = 208,G = 255,B = 74},
            {R = 74, G= 255, B = 114},
            {R = 255,G = 74, B = 118},
            {R = 230,G = 74, B = 255},
            {R = 132,G = 74, B = 255},
            {R = 74, G= 157, B = 255},
            {R = 74, G= 255, B = 222},
            {R = 0,G = 148 ,B = 36},
            {R = 104,G = 146 ,B = 36},
            {R = 139,G = 80  ,B = 248},
            {R = 32 ,G = 0  ,B = 151},
            {R = 0 ,G = 144 ,B = 103},
            {R = 40 ,G = 143 ,B = 0}
        },
        CategoryStyleWidth = '14',
        CategoryList = {
            {name = nil, label = "Alle"},
            {name = 'boat', label = "Boot"},
            {name = 'dlc', label = "DLC"}
        },
        VehicleLists = {
            {
                Model = 'suntrap',
                Label = 'Suntrap',
                Price = 1400000,
                Category = 'boat',
            }
        },
    }
}


CustomizeLanguages = {
    ["HeaderListCar"] = "Liste der Fahrzeuge",
    ["HeaderColorsPalette"] = "Farbpalette",
    ["HeaderBuyCar"] = "Kaufe ein Auto",
    ["BuyCar"] = "Kaufen",
    ["TestDrive"] = "Testfahrt",
    ["Close"] = "EXIT AUTOHAUS",
    ["HeaderTS"] = "Technische Daten",
    ["TSHeaderMaxSpeed"] = "Maximale Geschwindigkeit",
    ["TSHeaderHandling"] = "Handhabung",
    ["TSHeaderAcceleration"] = "Beschleunigung",
    ["TSHeaderBrake"] = "Bremse",
    ["TSHeaderSeat"] = "Sitz",
    ["RemainingTime"] = "verbleibende Zeit",
    ["Location"] = "Fahrzeugortung 360",
    ["Change"] = "Fahrzeug wechseln",
    ["BuyVeh"] = "Kaufen",
    ["TestVeh"] = "Testfahrt",
    ["ParkingLotFull"] = "Parkplatz voll",
    ["InsufficientMoney"] = "Nicht genügend Geld",
    ["BuyConfirm"] = "Bestätigen",
    ["BuyCancel"] = "Stornieren"
}