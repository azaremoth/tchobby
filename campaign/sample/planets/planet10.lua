--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Planet config

local function GetPlanet(planetUtilities, planetID)
	
	--local image = planetUtilities.planetImages[math.floor(math.random()*#planetUtilities.planetImages) + 1]
	local image = LUA_DIRNAME .. "images/planets/tc10.png"
	
	local planetData = {
		predownloadMap = true, 
		startingPlanet = true,		
		name = "Reinforcements have arrived!",
		mapDisplay = {
			x = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][1]) or 1.40,
			y = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][2]) or 1.00,
			image = image,
			size = planetUtilities.PLANET_SIZE_MAP*0.9,
			hintText = "Keep taking planets until you conquer the galaxy.",
			hintSize = {402, 100},
		},
		infoDisplay = {
			image = image,
			size = planetUtilities.PLANET_SIZE_INFO,
			backgroundImage = planetUtilities.backgroundImages[math.floor(math.random()*#planetUtilities.backgroundImages) + 1],
			terrainType = "Desert",
			radius = "9520 km",
			primary = "Vanth",
			primaryType = "Gamma Crucis",
			milRating = 1,
--			feedbackLink = "http://zero-k.info/Forum/Thread/24417",
			text = [[Allied troops from Delta Fleet urgently need back-up on this planet. We lost many drop ships due to the undead air superiority. You need to find our lost troops, establish a base and support the Delta Fleet!]]		},
		tips = {
			{	},
		},
		gameConfig = {
			gameName = "tcampaign $VERSION",
			-- gameName = "tcampaign 0.103",
			mapName = "Mescaline_V2",
			missionStartscript = false,			
			playerConfig = {
				startX = 3700,
				startZ = 5700,
				allyTeam = 0,
				startMetal = 2000,
				startEnergy = 2000,
				commanderParameters = {	},
				extraUnlocks = {},
				commander = false,
				startUnits = {
						{ name = "euf_sarge", x = 3700, z = 5700,	facing = 2,	},
						{ name = 'euf_sensorbot', x = 3376, z = 5349, facing = 1, commands = {{cmdID = planetUtilities.COMMAND.RAW_MOVE, pos = {3400, 4900}, options = {"shift"}}, }, },
						{ name = 'euf_scorpion', x = 3758, z = 5500, facing = 2, },
						{ name = 'euf_scorpion', x = 3711, z = 5424, facing = 2, },
						{ name = 'euf_scorpion', x = 3619, z = 5407, facing = 2, },				
				},
				midgameUnits = {
--					{ name = 'euf_transport_mis', x = 250, z = 1900, facing = 1, spawnRadius = 0, delay = 6*30, orbitalDrop = false,  },
				},
			},
			modoptions = { },
						
			initialWrecks = {
				{ name = 'euf_transport_crashed', x = 4650, z = 3500, facing = 3.7, team = 1, },
				{ name = 'euf_transport_crashed', x = 900, z = 5000, facing = 1.5, team = 1, },
				{ name = 'euf_transport_crashed', x = 4000, z = 350, facing = 0.2, team = 1, },						
			},	
			
			aiConfig = {
				{
					startX = 2000,
					startZ = 200,
					aiLib = "NO AI",
					humanName = "Support",
					allyTeam = 0,
					unlocks = {	},
					startUnits = {	
						{ name = 'euf_transport', x = 3489, z = 5480, facing = 1, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {10000, 3000}}, }, },

						{ name = 'euf_interceptor', x = 2500, z = 100, facing = 1, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {2500, 6000}}, }, },
						{ name = 'euf_interceptor', x = 2500, z = 100, facing = 1, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {2500, 6000}}, }, },
						{ name = 'euf_interceptor', x = 2500, z = 100, facing = 1, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {2500, 6000}}, }, },
						{ name = 'euf_interceptor', x = 2300, z = 6000, facing = 1, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {2300, 100}}, }, },
						{ name = 'euf_interceptor', x = 2300, z = 6000, facing = 1, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {2300, 100}}, }, },
						{ name = 'euf_interceptor', x = 2300, z = 6000, facing = 1, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {2300, 100}}, }, },
					
						{ name = 'converter2', x = 4880, z = 3700, facing = 0, },
						{ name = 'euf_bazooka', x = 4938, z = 3762, facing = 1, },
						{ name = 'euf_bazooka', x = 5001, z = 3706, facing = 0, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {100, 3700}}, }, },
						{ name = 'euf_bazooka', x = 4904, z = 3794, facing = 2, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {100, 3700}}, }, },
						{ name = 'euf_marine_laser', x = 4896, z = 3707, facing = 2, },
						{ name = 'euf_marine_laser', x = 4848, z = 3589, facing = 0, },
						{ name = 'euf_constructor', x = 4915, z = 3729, facing = 0, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {8000, 3700}}, }, },

						{ name = 'converter2', x = 940, z = 5150, facing = 3, },
						{ name = 'euf_marine_laser', x = 997, z = 5058, facing = 0, },
						{ name = 'euf_marine_laser', x = 1000, z = 5172, facing = 2, },
						{ name = 'euf_constructor', x = 949, z = 5099, facing = 1, },
						{ name = 'euf_constructor', x = 983, z = 5128, facing = 1, },
						{ name = 'euf_pyro', x = 846, z = 5123, facing = 3, },
						{ name = 'euf_pyro', x = 935, z = 5270, facing = 1, },

						{ name = 'converter2', x = 4100, z = 430, facing = 1, },
						{ name = 'euf_priest', x = 4042, z = 491, facing = 1, },
						{ name = 'euf_priest', x = 4199, z = 364, facing = 2, },
						{ name = 'euf_paladin', x = 4046, z = 397, facing = 3, },
						{ name = 'euf_paladin', x = 4033, z = 377, facing = 0, },
						{ name = 'euf_paladin', x = 3966, z = 510, facing = 2, },
						{ name = 'euf_paladin', x = 4136, z = 375, facing = 1, },

						{ name = 'emit_smallsmoke', x = 4650, z = 3500, facing = 0, },
						{ name = 'emit_smallsmoke', x = 900, z = 5000, facing = 0, },
						{ name = 'emit_smallsmoke', x = 4000, z = 350, facing = 0, },						
					},
					midgameUnits = { },
				},
				{
					startX = 9000,
					startZ = 3000,
					aiLib = "NO AI",
					humanName = "Enemy",
					allyTeam = 1,
					commander = false,
					unlocks = {	},
					startUnits = {	
						{ name = 'tc_blade', x = 5150, z = 100, facing = 1, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {5150, 6000}}, }, },
						{ name = 'tc_blade', x = 5150, z = 100, facing = 1, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {5150, 6000}}, }, },
						{ name = 'tc_blade', x = 5150, z = 100, facing = 1, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {5150, 6000}}, }, },
						{ name = 'tc_blade', x = 5300, z = 6000, facing = 1, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {5300, 100}}, }, },
						{ name = 'tc_blade', x = 5300, z = 6000, facing = 1, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {5300, 100}}, }, },
						{ name = 'tc_blade', x = 5300, z = 6000, facing = 1, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {5300, 100}}, }, },

						{ name = 'tc_blade', x = 6150, z = 100, facing = 1, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {6150, 6000}}, }, },
						{ name = 'tc_blade', x = 6150, z = 100, facing = 1, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {6150, 6000}}, }, },
						{ name = 'tc_blade', x = 6150, z = 100, facing = 1, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {6150, 6000}}, }, },
						{ name = 'tc_blade', x = 6300, z = 6000, facing = 1, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {6300, 100}}, }, },
						{ name = 'tc_blade', x = 6300, z = 6000, facing = 1, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {6300, 100}}, }, },
						{ name = 'tc_blade', x = 6300, z = 6000, facing = 1, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {6300, 100}}, }, },
	
						{ name = 'tc_blade', x = 8500, z = 100, facing = 1, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {8500, 6000}}, }, },
						{ name = 'tc_blade', x = 8500, z = 100, facing = 1, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {8500, 6000}}, }, },
						{ name = 'tc_blade', x = 8500, z = 100, facing = 1, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {8500, 6000}}, }, },
						{ name = 'tc_blade', x = 8200, z = 6000, facing = 1, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {8200, 100}}, }, },
						{ name = 'tc_blade', x = 8200, z = 6000, facing = 1, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {8200, 100}}, }, },
						{ name = 'tc_blade', x = 8200, z = 6000, facing = 1, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {8200, 100}}, }, },
						
						{ name = 'tc_acranius', x = 8500, z = 6050, facing = 1, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {600, 3700}}, }, },
						{ name = 'tc_acranius', x = 8550, z = 6020, facing = 1, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {600, 3700}}, }, },
						{ name = 'tc_acranius', x = 8400, z = 6050, facing = 1, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {600, 3700}}, }, },
						{ name = 'tc_acranius', x = 8300, z = 6200, facing = 1, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {600, 3700}}, }, },
						{ name = 'tc_acranius', x = 8350, z = 6050, facing = 1, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {600, 3700}}, }, },
						{ name = 'tc_acranius', x = 8500, z = 6100, facing = 1, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {600, 3700}}, }, },						
					},
					midgameUnits = { },
				},			
				{
					startX = 2000,
					startZ = 200,
					startMetal = 2000,
					startEnergy = 2000,						
					aiLib = "NO AI",
--					aiLib = "Skirmish AI",
					humanName = "Delta Fleet",
					allyTeam = 0,
					unlocks = {	
					'euf_aatank',
					'euf_aatower',
					'euf_airport',
					'euf_angel',
					'euf_artytower',
					'euf_barracks_ai',
					'euf_bazooka',
					'euf_bazooka_missile',					
					'euf_bomber',
					'euf_bunker_ai',
					'euf_church_ai',
					'euf_constructor_ai',
					'euf_constructor_lvl2_ai',
					'euf_factory_ai',
					'euf_hover',
					'euf_interceptor',
					'euf_lasertower',
					'euf_marine',
					'euf_marine_laser',					
					'euf_metalextractor_lvl1',
					'euf_metalextractor_lvl2',
					'euf_mlrs_ai',
					'euf_paladin',
					'euf_paladin_ai',
					'euf_plasmatower',
					'euf_powerplant',
					'euf_priest',
					'euf_pyro',
					'euf_radar_lvl1',
					'euf_radar_lvl2',
					'euf_raider',
					'euf_sanctum',
					'euf_sarge',
					'euf_scorpion_ai',
					'euf_scout',
					'euf_scoutdrone',
					'euf_sensorbot',
					'euf_sniper_ai',
					'euf_solar',
					'euf_start',
					'euf_storage',
					'euf_tank',
					'euf_techcenter_shield_ai',
					'euf_transport',
					'euf_walker_ai',
					'euf_werewolf',
					'euf_wolf',					
					},
					startUnits = {
						{ name = 'euf_tank', x = 974, z = 3011, facing = 0, },
						{ name = 'euf_tank', x = 2690, z = 321, facing = 0, },
						{ name = 'euf_tank', x = 1392, z = 2847, facing = 0, },
						{ name = 'euf_tank', x = 1319, z = 1455, facing = 0, },
						{ name = 'euf_solar', x = 864, z = 3984, facing = 0, },
						{ name = 'euf_solar', x = 864, z = 3920, facing = 0, },
						{ name = 'euf_solar', x = 800, z = 3984, facing = 0, },
						{ name = 'euf_solar', x = 800, z = 3920, facing = 0, },
						{ name = 'euf_solar', x = 752, z = 704, facing = 0, },
						{ name = 'euf_solar', x = 752, z = 640, facing = 0, },
						{ name = 'euf_solar', x = 688, z = 704, facing = 0, },
						{ name = 'euf_solar', x = 688, z = 640, facing = 0, },
						{ name = 'euf_solar', x = 1104, z = 2480, facing = 0, },
						{ name = 'euf_solar', x = 1104, z = 2416, facing = 0, },
						{ name = 'euf_solar', x = 1040, z = 2480, facing = 0, },
						{ name = 'euf_solar', x = 1040, z = 2416, facing = 0, },
						{ name = 'euf_radar_lvl2', x = 2408, z = 952, facing = 0, },
						{ name = 'euf_radar_lvl1', x = 2168, z = 2424, facing = 0, },
						{ name = 'euf_radar_lvl1', x = 1080, z = 4072, facing = 0, },
						{ name = 'euf_powerplant', x = 968, z = 2240, facing = 0, },
						{ name = 'euf_powerplant', x = 936, z = 656, facing = 0, },
						{ name = 'euf_powerplant', x = 760, z = 3808, facing = 0, },
						{ name = 'euf_plasmatower', x = 968, z = 3528, facing = 0, },
						{ name = 'euf_plasmatower', x = 2456, z = 552, facing = 0, },
						{ name = 'euf_plasmatower', x = 2312, z = 232, facing = 0, },
						{ name = 'euf_plasmatower', x = 2280, z = 2600, facing = 0, },
						{ name = 'euf_plasmatower', x = 1288, z = 1032, facing = 0, },
						{ name = 'euf_plasmatower', x = 1064, z = 1144, facing = 0, },
						{ name = 'euf_metalextractor_lvl2', x = 824, z = 824, facing = 0, },
						{ name = 'euf_metalextractor_lvl2', x = 776, z = 3688, facing = 0, },
						{ name = 'euf_metalextractor_lvl2', x = 1256, z = 2312, facing = 0, },
						{ name = 'euf_metalextractor_lvl1', x = 952, z = 2056, facing = 0, },
						{ name = 'euf_metalextractor_lvl1', x = 888, z = 2392, facing = 0, },
						{ name = 'euf_metalextractor_lvl1', x = 792, z = 520, facing = 0, },
						{ name = 'euf_metalextractor_lvl1', x = 2328, z = 568, facing = 0, },
						{ name = 'euf_metalextractor_lvl1', x = 2024, z = 536, facing = 0, },
						{ name = 'euf_metalextractor_lvl1', x = 1048, z = 568, facing = 0, },
						{ name = 'euf_metalextractor_lvl1', x = 1032, z = 3640, facing = 0, },
						{ name = 'euf_metalextractor_lvl1', x = 1000, z = 3928, facing = 0, },
						{ name = 'euf_lasertower', x = 2712, z = 2200, facing = 0, },
						{ name = 'euf_lasertower', x = 2232, z = 968, facing = 0, },
						{ name = 'euf_lasertower', x = 1352, z = 3736, facing = 0, },
						{ name = 'euf_lasertower', x = 1096, z = 2776, facing = 0, },
						{ name = 'euf_hover', x = 2844, z = 476, facing = 0, },
						{ name = 'euf_hover', x = 1513, z = 1558, facing = 0, },
						{ name = 'euf_factory_ai', x = 896, z = 1024, facing = 1, },
						{ name = 'euf_factory_ai', x = 576, z = 3040, facing = 1, },
						{ name = 'euf_constructor_ai', x = 790, z = 3611, facing = 0, },
						{ name = 'euf_constructor_ai', x = 2299, z = 2121, facing = 0, },
						{ name = 'euf_constructor_ai', x = 2213, z = 725, facing = 0, },
						{ name = 'euf_constructor_ai', x = 1725, z = 1362, facing = 0, },
						{ name = 'euf_constructor_ai', x = 1598, z = 2772, facing = 0, },
						{ name = 'euf_constructor_ai', x = 1139, z = 3149, facing = 0, },
						{ name = 'euf_constructor_ai', x = 1049, z = 2145, facing = 0, },
						{ name = 'euf_constructor_ai', x = 1003, z = 903, facing = 0, },
						{ name = 'euf_bunker_ai', x = 672, z = 3408, facing = 0, },
						{ name = 'euf_bunker_ai', x = 1152, z = 1968, facing = 0, },
						{ name = 'euf_barracks_ai', x = 1288, z = 2112, facing = 2, },
						{ name = 'euf_barracks_ai', x = 1160, z = 784, facing = 0, },
						{ name = 'euf_artytower', x = 2360, z = 2296, facing = 0, },
						{ name = 'euf_artytower', x = 1128, z = 3912, facing = 0, },
						{ name = 'euf_airport', x = 640, z = 3584, facing = 0, },
						{ name = 'euf_aatower', x = 904, z = 3800, facing = 0, },
						{ name = 'euf_aatower', x = 824, z = 2552, facing = 0, },
						{ name = 'euf_aatower', x = 2440, z = 2216, facing = 0, },
						{ name = 'euf_aatower', x = 2200, z = 344, facing = 0, },
						{ name = 'euf_aatower', x = 1160, z = 2184, facing = 0, },
						{ name = 'euf_aatower', x = 1016, z = 792, facing = 0, },
						{ name = 'euf_aatank', x = 1532, z = 1308, facing = 0, },
						{ name = 'euf_aatank', x = 1181, z = 2971, facing = 0, },
						{ name = 'euf_walker_ai', x = 6500, z = 2840, facing = 1, },				
					},
					midgameUnits = { },
				},
				{
					allyTeam = 1,
					startX = 9000,
					startZ = 3000,
					startMetal = 5000,
					startEnergy = 5000,	
--					aiLib = "NO AI",
					aiLib = "Skirmish AI",
					humanName = "The Cursed",
					commanderLevel = 6,
					unlocks = {
					'tc_acranius',
					'tc_agares',
					'tc_altar',
					'tc_altar_hellstorm',
					'tc_belial',
					'tc_blade',
					'tc_bonebeast',
					'tc_crawler',
					'tc_cursedhand',
					'tc_cursedhand_survival',
					'tc_damnedportal',
					'tc_damnedportal_ai',
					'tc_darkassembler',
					'tc_deathwalker',
					'tc_defender',
					'tc_defender_survival',
					'tc_dragon',
					'tc_dragonqueen',
					'tc_enforcer',
					'tc_ghoul',
					'tc_gunner',
					'tc_heart',
					'tc_heart_ai',
					'tc_hellfire',
					'tc_kaboom',
					'tc_lich',
					'tc_lich_ai',
					'tc_lich_sum',
					'tc_mage',
					'tc_mancubus',
					'tc_mermeoth',
					'tc_metalextractor_lvl1',
					'tc_metalextractor_lvl2',
					'tc_necromancer',
					'tc_necromancer_sum',
					'tc_obelisk',
					'tc_obelisk_lvl2',
					'tc_pestilence',
					'tc_purgatory',
					'tc_purgatory_ai',
					'tc_pyramid',
					'tc_pyramid_ai',
					'tc_redeemer',
					'tc_restless',
					'tc_rictus',
					'tc_seeker',
					'tc_seer',
					'tc_shade',
					'tc_skeleton',
					'tc_sledgehammer',
					'tc_soulcage',
					'tc_soulstone',
					'tc_spiderdemon',
					'tc_storage',
					'tc_suicide',
					'tc_tower',
					'tc_tower_survival',
					'tc_undeadmarine_gun',
					'tc_undeadmarine_melee',
					'tc_witch',
					'tc_witch_shield',
					},
					startUnits = {
						{ name = 'tc_undeadmarine_melee', x = 8845, z = 2638, facing = 0, },
						{ name = 'tc_undeadmarine_melee', x = 8785, z = 2851, facing = 0, },
						{ name = 'tc_undeadmarine_melee', x = 8754, z = 3049, facing = 0, },
						{ name = 'tc_undeadmarine_melee', x = 8699, z = 2576, facing = 0.8, },
						{ name = 'tc_tower', x = 9304, z = 2280, facing = 0, },
						{ name = 'tc_tower', x = 9048, z = 4264, facing = 0, },
						{ name = 'tc_tower', x = 8936, z = 2904, facing = 0, },
						{ name = 'tc_tower', x = 8408, z = 168, facing = 0, },
						{ name = 'tc_tower', x = 7528, z = 552, facing = 0, },
						{ name = 'tc_tower', x = 9832, z = 3912, facing = 0, },
						{ name = 'tc_tower', x = 9384, z = 3112, facing = 0, },
						{ name = 'tc_tower', x = 8824, z = 3704, facing = 0, },
						{ name = 'tc_storage', x = 9616, z = 3728, facing = 0, },
						{ name = 'tc_spiderdemon', x = 8996, z = 1262, facing = 0, },
						{ name = 'tc_spiderdemon', x = 8753, z = 5005, facing = 2.9, },
						{ name = 'tc_spiderdemon', x = 8320, z = 692, facing = 0, },
						{ name = 'tc_spiderdemon', x = 7854, z = 4931, facing = 0, },
						{ name = 'tc_soulstone', x = 9592, z = 2216, facing = 0, },
						{ name = 'tc_soulstone', x = 9560, z = 2104, facing = 0, },
						{ name = 'tc_soulstone', x = 9544, z = 5256, facing = 0, },
						{ name = 'tc_soulstone', x = 9528, z = 5352, facing = 0, },
						{ name = 'tc_soulstone', x = 9480, z = 5432, facing = 0, },
						{ name = 'tc_soulstone', x = 9464, z = 968, facing = 0, },
						{ name = 'tc_soulstone', x = 9464, z = 2184, facing = 0, },
						{ name = 'tc_soulstone', x = 9368, z = 1816, facing = 0, },
						{ name = 'tc_soulstone', x = 9336, z = 872, facing = 0, },
						{ name = 'tc_soulstone', x = 9224, z = 856, facing = 0, },
						{ name = 'tc_soulstone', x = 9160, z = 5496, facing = 0, },
						{ name = 'tc_soulstone', x = 9144, z = 424, facing = 0, },
						{ name = 'tc_soulstone', x = 9080, z = 5576, facing = 0, },
						{ name = 'tc_soulstone', x = 9080, z = 328, facing = 0, },
						{ name = 'tc_soulstone', x = 9064, z = 5480, facing = 0, },
						{ name = 'tc_soulstone', x = 8008, z = 5880, facing = 0, },
						{ name = 'tc_soulstone', x = 7912, z = 5592, facing = 0, },
						{ name = 'tc_soulstone', x = 7816, z = 504, facing = 0, },
						{ name = 'tc_soulstone', x = 7752, z = 376, facing = 0.3, },
						{ name = 'tc_soulcage', x = 9728, z = 3624, facing = 0, },
						{ name = 'tc_soulcage', x = 9536, z = 3592, facing = 1, },
						{ name = 'tc_soulcage', x = 9272, z = 3664, facing = 1, },
						{ name = 'tc_soulcage', x = 9216, z = 1816, facing = 0, },
						{ name = 'tc_soulcage', x = 9136, z = 3848, facing = 0, },
						{ name = 'tc_soulcage', x = 8112, z = 5592, facing = 0, },
						{ name = 'tc_soulcage', x = 8032, z = 5704, facing = 0, },
						{ name = 'tc_seer', x = 9388, z = 3476, facing = 0, },
						{ name = 'tc_seer', x = 8526, z = 2786, facing = 0, },
						{ name = 'tc_seer', x = 8130, z = 5341, facing = 0, },
						{ name = 'tc_seer', x = 7760, z = 598, facing = 0, },
						{ name = 'tc_seer', x = 7294, z = 4335, facing = 0, },
						{ name = 'tc_seer', x = 6623, z = 1993, facing = 0, },
						{ name = 'tc_seer', x = 5949, z = 1708, facing = 0, },
						{ name = 'tc_restless', x = 9752, z = 356, facing = 0, },
						{ name = 'tc_restless', x = 9750, z = 1333, facing = 0, },
						{ name = 'tc_restless', x = 9714, z = 4317, facing = 0, },
						{ name = 'tc_restless', x = 9608, z = 2789, facing = 0, },
						{ name = 'tc_restless', x = 9051, z = 1963, facing = 2.5, },
						{ name = 'tc_restless', x = 8802, z = 4278, facing = 0, },
						{ name = 'tc_restless', x = 8696, z = 5278, facing = 1.9, },
						{ name = 'tc_restless', x = 8555, z = 1457, facing = 0, },
						{ name = 'tc_restless', x = 8056, z = 5418, facing = 0, },
						{ name = 'tc_restless', x = 8055, z = 4930, facing = 0, },
						{ name = 'tc_restless', x = 10166, z = 2490, facing = 0, },
						{ name = 'tc_pyramid_ai', x = 9472, z = 4944, facing = 3, },
						{ name = 'tc_pyramid_ai', x = 9440, z = 3328, facing = 3, },
						{ name = 'tc_pyramid_ai', x = 9072, z = 656, facing = 3, },
						{ name = 'tc_pyramid_ai', x = 8016, z = 5232, facing = 2, },
						{ name = 'tc_purgatory_ai', x = 9027, z = 3680, facing = 0, },
						{ name = 'tc_metalextractor_lvl2', x = 9592, z = 3416, facing = 0, },
						{ name = 'tc_metalextractor_lvl2', x = 9448, z = 3784, facing = 0, },
						{ name = 'tc_metalextractor_lvl2', x = 9160, z = 3480, facing = 0, },
						{ name = 'tc_metalextractor_lvl2', x = 8232, z = 4968, facing = 0, },
						{ name = 'tc_metalextractor_lvl2', x = 8136, z = 5320, facing = 0, },
						{ name = 'tc_metalextractor_lvl1', x = 9672, z = 2248, facing = 0, },
						{ name = 'tc_metalextractor_lvl1', x = 9560, z = 5080, facing = 0, },
						{ name = 'tc_metalextractor_lvl1', x = 9368, z = 776, facing = 0, },
						{ name = 'tc_metalextractor_lvl1', x = 9368, z = 2024, facing = 0, },
						{ name = 'tc_metalextractor_lvl1', x = 9320, z = 1640, facing = 0, },
						{ name = 'tc_metalextractor_lvl1', x = 9272, z = 5432, facing = 0, },
						{ name = 'tc_metalextractor_lvl1', x = 9256, z = 5080, facing = 0, },
						{ name = 'tc_metalextractor_lvl1', x = 9240, z = 440, facing = 0, },
						{ name = 'tc_metalextractor_lvl1', x = 8952, z = 408, facing = 0, },
						{ name = 'tc_metalextractor_lvl1', x = 7896, z = 408, facing = 0, },
						{ name = 'tc_metalextractor_lvl1', x = 7704, z = 648, facing = 0, },
						{ name = 'tc_mancubus', x = 9179, z = 4406, facing = 0, },
						{ name = 'tc_mancubus', x = 9179, z = 4406, facing = 0, },
						{ name = 'tc_mancubus', x = 9110, z = 4363, facing = 0, },
						{ name = 'tc_mancubus', x = 9036, z = 4479, facing = 2.6, },
						{ name = 'tc_hellfire', x = 9368, z = 4808, facing = 0, },
						{ name = 'tc_hellfire', x = 8872, z = 632, facing = 0, },
						{ name = 'tc_hellfire', x = 8152, z = 4744, facing = 0, },
						{ name = 'tc_hellfire', x = 7896, z = 5432, facing = 0, },
						{ name = 'tc_hellfire', x = 7592, z = 680, facing = 0, },
						{ name = 'tc_defender', x = 9944, z = 2280, facing = 0, },
						{ name = 'tc_defender', x = 9352, z = 1544, facing = 0, },
						{ name = 'tc_defender', x = 9096, z = 2184, facing = 0, },
						{ name = 'tc_defender', x = 8904, z = 872, facing = 0, },
						{ name = 'tc_defender', x = 8904, z = 2040, facing = 0, },
						{ name = 'tc_defender', x = 8760, z = 520, facing = 0, },
						{ name = 'tc_defender', x = 8344, z = 5400, facing = 0, },
						{ name = 'tc_defender', x = 7960, z = 4872, facing = 0, },
						{ name = 'tc_defender', x = 7864, z = 728, facing = 0, },
						{ name = 'tc_defender', x = 7864, z = 5096, facing = 0, },
						{ name = 'tc_defender', x = 7848, z = 5880, facing = 0, },
						{ name = 'tc_defender', x = 7640, z = 360, facing = 0, },
						{ name = 'tc_defender', x = 6504, z = 2216, facing = 0, },
						{ name = 'tc_defender', x = 9832, z = 3496, facing = 0, },
						{ name = 'tc_defender', x = 9320, z = 5656, facing = 0, },
						{ name = 'tc_defender', x = 9320, z = 4952, facing = 0, },
						{ name = 'tc_defender', x = 9240, z = 3416, facing = 0, },
						{ name = 'tc_defender', x = 9096, z = 5016, facing = 0, },
						{ name = 'tc_defender', x = 8856, z = 3928, facing = 0, },
						{ name = 'tc_darkassembler', x = 9376, z = 5264, facing = 0, },
						{ name = 'tc_damnedportal_ai', x = 9216, z = 2640, facing = 3.1, },
						{ name = 'tc_belial', x = 6800, z = 2800, facing = 3, },
						{ name = 'tc_belial', x = 8968, z = 2501, facing = 0, },						
						{ name = 'bug_big_undead', x = 8758, z = 1292, facing = 0, },
						{ name = 'bug_big_undead', x = 8437, z = 4288, facing = 0, },
					},
					midgameUnits = { },
				},
			},
			defeatConditionConfig = {
				-- Indexed by allyTeam.
				[0] = {	
					ignoreUnitLossDefeat = false,
					vitalCommanders = false,
					loseAfterSeconds = false,
				},
				[1] = {
					ignoreUnitLossDefeat = false,
					vitalCommanders = false,
					loseAfterSeconds = false,
					allyTeamLossObjectiveID = 1,
				},				
			},
			objectiveConfig = {
				[1] = {
					description = "Kill all enemies",
				},				
			},
			bonusObjectiveConfig = { },
		},
		completionReward = {
			experience = planetUtilities.MAIN_EXP,
			units = {
				'euf_scorpion',
				'euf_sensorbot',
			},
			modules = {},
			abilities = {},
			codexEntries = {}
		},
	}
	
	return planetData
end

return GetPlanet
