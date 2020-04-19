--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Planet config

local function GetPlanet(planetUtilities, planetID)
	
	--local image = planetUtilities.planetImages[math.floor(math.random()*#planetUtilities.planetImages) + 1]
	local image = LUA_DIRNAME .. "images/planets/49.png"
	
	local planetData = {
		predownloadMap = true, 
		name = "Europa",
		mapDisplay = {
			x = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][1]) or 1.40,
			y = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][2]) or 1.00,
			image = image,
			size = planetUtilities.PLANET_SIZE_MAP*0.312,
			hintText = "Keep taking planets until you conquer the galaxy.",
			hintSize = {402, 100},
		},
		infoDisplay = {
			image = image,
			size = planetUtilities.PLANET_SIZE_INFO,
			backgroundImage = planetUtilities.backgroundImages[math.floor(math.random()*#planetUtilities.backgroundImages) + 1],
			terrainType = "Ice",
			radius = "3121 km",
			primary = "Sol",
			primaryType = "MV",
			milRating = 1,
--			feedbackLink = "http://zero-k.info/Forum/Thread/24417",
			text = [[All personell was evacuated from our AID (artificial intelligence supported defense) research facility on this frozen moon. However, the Cursed are approaching the facility. We do not know why, but we can not risk loosing experimental technolgy to them. We could establish a link to your AI-systems and should be able to build defenses and hold the undead tide back. This is critical, as we need some time to extract critical data and initiate self-destruction sequences.]]		},
		tips = {		},
		gameConfig = {
			gameName = "tcampaign $VERSION",
			-- gameName = "tcampaign 0.101",
			mapName = "FrozenPlanetV3",
			missionStartscript = false,			
			playerConfig = {
				startX = 4000,
				startZ = 2000,
				allyTeam = 0,
				startMetal = 3000,
				startEnergy = 3000,
				commanderParameters = {	},
				extraUnlocks = {
					"euf_metalextractor_lvl1",
					"euf_solar",
					"euf_storage",		
					"euf_radar_lvl2",	
					"euf_factory_td",
					"euf_lasertower",	
					"euf_plasmatower",
					"euf_aatower",
					"euf_artytower",
					"euf_constructor_lvl2_td",
					"euf_hunter",
					"euf_scoutdrone",	
					"euf_sensorbot",
					"euf_scorpion",						
				},
				commander = false,
				startUnits = {
						{ name = 'euf_aatower', x = 3640, z = 2456, facing = 0, },
						{ name = 'euf_constructor_lvl2_td', x = 3035, z = 2120, facing = 0, },
						{ name = 'euf_constructor_lvl2_td', x = 3399, z = 2008, facing = 3, },
						{ name = 'euf_factory_td', x = 3528, z = 2048, facing = 3, },
						{ name = 'euf_metalextractor_lvl1', x = 3272, z = 2120, facing = 0, },
						{ name = 'euf_metalextractor_lvl1', x = 3912, z = 3144, facing = 1, },
						{ name = 'euf_metalextractor_lvl1', x = 3960, z = 2792, facing = 2, },
						{ name = 'euf_metalextractor_lvl2', x = 3736, z = 2904, facing = 3, },
						{ name = 'euf_plasmatower', x = 2760, z = 2280, facing = 0, },
						{ name = 'euf_plasmatower', x = 2824, z = 1512, facing = 0, },
						{ name = 'euf_hunter', x = 2700, z = 2380, facing = 2, },
						{ name = 'euf_hunter', x = 2800, z = 1412, facing = 0, },
						{ name = 'euf_powerplant', x = 3992, z = 2912, facing = 2, },
						{ name = 'euf_powerplant', x = 3992, z = 3024, facing = 2, },
						{ name = 'euf_radar_lvl2', x = 3864, z = 1672, facing = 0, },
						{ name = 'euf_scoutdrone', x = 2774, z = 2209, facing = 3, },
						{ name = 'euf_scoutdrone', x = 2892, z = 1788, facing = 2, },
						{ name = 'euf_solar', x = 3488, z = 2240, facing = 0, },
						{ name = 'euf_solar', x = 3488, z = 2336, facing = 0, },
						{ name = 'euf_solar', x = 3584, z = 2240, facing = 0, },
						{ name = 'euf_solar', x = 3584, z = 2336, facing = 0, },
						{ name = 'euf_techcenter_nuke', x = 3312, z = 2320, facing = 0, },				
				},
				midgameUnits = { },
			},
			modoptions = { },
						
			initialWrecks = {
					{ name = 'barrel', x = 3614, z = 2109, facing = 0.0015, team = 0, },
					{ name = 'barrel', x = 3666, z = 2690, facing = 0.0035, team = 0, },
					{ name = 'barrel', x = 3676, z = 2100, facing = 0.0062, team = 0, },
					{ name = 'barrel', x = 3693, z = 2702, facing = 0, team = 0, },
					{ name = 'barrels', x = 3657, z = 2142, facing = 1.1488, team = 0, },
					{ name = 'barrels', x = 3807, z = 2569, facing = 3.0676, team = 0, },
					{ name = 'bld_door', x = 3910, z = 2432, facing = 2.9868, team = 0, },
					{ name = 'bld_tunnel_low', x = 4000, z = 2516, facing = 0, team = 0, },
					{ name = 'box', x = 3640, z = 2119, facing = 3.5653, team = 0, },
					{ name = 'box', x = 3651, z = 2050, facing = 0.9086, team = 0, },
					{ name = 'box', x = 3674, z = 2122, facing = 0.0014, team = 0, },
					{ name = 'box', x = 3682, z = 2689, facing = 1.3192, team = 0, },
					{ name = 'boxes', x = 3624, z = 2080, facing = 0.0012, team = 0, },
					{ name = 'boxes', x = 3655, z = 2666, facing = 1.4998, team = 0, },
					{ name = 'boxes', x = 3660, z = 2080, facing = 1.4376, team = 0, },
					{ name = 'buildingmodule_b2l_1', x = 3999, z = 2641, facing = 0, team = 0, },
					{ name = 'buildingmodule_b2l_1', x = 4002, z = 2433, facing = 0, team = 0, },
					{ name = 'buildingmodule_b2l_3', x = 3917, z = 2011, facing = 0, team = 0, },
					{ name = 'buildingmodule_lvl2_1', x = 3999, z = 2649, facing = 0, team = 0, },
					{ name = 'buildingmodule_lvl2_1', x = 4002, z = 2437, facing = 0, team = 0, },
					{ name = 'buildingmodule_lvl2_2', x = 3919, z = 1995, facing = 0, team = 0, },
					{ name = 'containertype1', x = 3549, z = 2613, facing = 0.3398, team = 0, },
					{ name = 'containertype1', x = 3988, z = 2286, facing = 0.0613, team = 0, },
					{ name = 'containertype2', x = 3935, z = 2270, facing = 1.8634, team = 0, },
					{ name = 'containertype3', x = 3819, z = 2216, facing = 3.7713, team = 0, },
					{ name = 'containertype4', x = 3874, z = 2247, facing = 3.8816, team = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 3416, z = 1434, facing = 3.6923, team = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 3456, z = 1452, facing = 3.6963, team = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 3519, z = 1484, facing = 3.6963, team = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 3582, z = 1516, facing = 3.7002, team = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 3645, z = 1548, facing = 3.6963, team = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 3708, z = 1579, facing = 3.6923, team = 0, },
					{ name = 'euf_walls_lvl2_mis', x = 3750, z = 1601, facing = 3.7121, team = 0, },
					{ name = 'landingpad', x = 3624, z = 2570, facing = 0, team = 0, },
					{ name = 'landingpad', x = 3747, z = 2499, facing = 0, team = 0, },
					{ name = 'tank', x = 3410, z = 1699, facing = 3.0848, team = 0, },
					{ name = 'tank', x = 3483, z = 1675, facing = 3.6369, team = 0, },
					{ name = 'tube_connect', x = 3561, z = 1556, facing = 0.7104, team = 0, },
					{ name = 'tube_corner', x = 3450, z = 1701, facing = 3.72, team = 0, },
					{ name = 'tube_down', x = 3514, z = 1692, facing = 0.7223, team = 0, },
					{ name = 'tube', x = 3522, z = 1617, facing = 1.5749, team = 0, },					
			},	
			
			aiConfig = {
				{
					startX = 500,
					startZ = 4000,
					aiLib = "NO AI",
					humanName = "Enemy",
					unlocks = {},
					allyTeam = 1,
					commander = false,
					startUnits = {
					{ name = 'tc_belial_mis', x = 669, z = 1783, facing = 1.0132, },
					{ name = 'tc_belial_mis', x = 921, z = 3961, facing = 1.0132, },
					{ name = 'tc_belial_mis', x = 949, z = 3159, facing = 1.0132, },
					{ name = 'tc_damnedportal', x = 592, z = 3408, facing = 0, },
					{ name = 'tc_darkassembler', x = 464, z = 1072, facing = 0, },
					{ name = 'tc_defender_survival', x = 392, z = 2008, facing = 0, },
					{ name = 'tc_defender_survival', x = 568, z = 2472, facing = 0, },
					{ name = 'tc_defender_survival', x = 776, z = 1432, facing = 0, },
					{ name = 'tc_defender_survival', x = 824, z = 1832, facing = 1.0039, },
					{ name = 'tc_defender_survival', x = 824, z = 3704, facing = 0, },
					{ name = 'tc_defender_survival', x = 952, z = 2936, facing = 0, },
					{ name = 'tc_ghoul', x = 1001, z = 3044, facing = 1.0104, },
					{ name = 'tc_ghoul', x = 1285, z = 304, facing = 0.943, },
					{ name = 'tc_ghoul', x = 1350, z = 206, facing = 0, },
					{ name = 'tc_ghoul', x = 1676, z = 3719, facing = 1.8293, },
					{ name = 'tc_ghoul', x = 1769, z = 3770, facing = 0.9964, },
					{ name = 'tc_ghoul', x = 2493, z = 416, facing = 0, },
					{ name = 'tc_ghoul', x = 2529, z = 306, facing = 1.087, },
					{ name = 'tc_ghoul', x = 2894, z = 3828, facing = 2.0448, },
					{ name = 'tc_ghoul', x = 2992, z = 3874, facing = 2.0573, },
					{ name = 'tc_ghoul', x = 494, z = 1668, facing = 0.9641, },
					{ name = 'tc_ghoul', x = 501, z = 1746, facing = 0.9969, },
					{ name = 'tc_ghoul', x = 524, z = 1578, facing = 0, },
					{ name = 'tc_ghoul', x = 558, z = 1706, facing = 0, },
					{ name = 'tc_ghoul', x = 559, z = 1641, facing = 1.0025, },
					{ name = 'tc_ghoul', x = 588, z = 1587, facing = 0.9942, },
					{ name = 'tc_ghoul', x = 940, z = 3040, facing = 0, },
					{ name = 'tc_ghoul', x = 962, z = 3016, facing = 1.0424, },
					{ name = 'tc_ghoul', x = 979, z = 3229, facing = 0.9742, },
					{ name = 'tc_gunner', x = 1289, z = 217, facing = 0, },
					{ name = 'tc_gunner', x = 1693, z = 3781, facing = 1.9204, },
					{ name = 'tc_gunner', x = 2423, z = 297, facing = 0, },
					{ name = 'tc_gunner', x = 2946, z = 3886, facing = 2.1122, },
					{ name = 'tc_hellfire', x = 296, z = 1848, facing = 1.0132, },
					{ name = 'tc_hellfire', x = 616, z = 3192, facing = 1.0132, },
					{ name = 'tc_mage', x = 1362, z = 288, facing = 0, },
					{ name = 'tc_mage', x = 1761, z = 3730, facing = 1.9456, },
					{ name = 'tc_mage', x = 2401, z = 430, facing = 3.9284, },
					{ name = 'tc_mage', x = 2952, z = 3837, facing = 2.0531, },
					{ name = 'tc_metalextractor_lvl1', x = 104, z = 1240, facing = 0, },
					{ name = 'tc_metalextractor_lvl1', x = 136, z = 920, facing = 0, },
					{ name = 'tc_metalextractor_lvl1', x = 296, z = 1096, facing = 0, },
					{ name = 'tc_metalextractor_lvl1', x = 424, z = 3240, facing = 0, },
					{ name = 'tc_metalextractor_lvl1', x = 776, z = 1944, facing = 0, },
					{ name = 'tc_metalextractor_lvl2', x = 136, z = 3384, facing = 0, },
					{ name = 'tc_metalextractor_lvl2', x = 232, z = 3048, facing = 0, },
					{ name = 'tc_obelisk_lvl2', x = 415, z = 3089, facing = 0, },
					{ name = 'tc_obelisk_lvl2', x = 532, z = 1378, facing = 0, },
					{ name = 'tc_obelisk', x = 167, z = 1058, facing = 0, },
					{ name = 'tc_pitt', x = 112, z = 1616, facing = 0.9715, },
					{ name = 'tc_pitt', x = 112, z = 2896, facing = 0.9838, },
					{ name = 'tc_purgatory_ai', x = 152, z = 1840, facing = 1.0132, },
					{ name = 'tc_purgatory_ai', x = 483, z = 2839, facing = 1.9909, },
					{ name = 'tc_purgatory_ai', x = 787, z = 3373, facing = 0.9821, },
					{ name = 'tc_pyramid_ai', x = 192, z = 3216, facing = 1.0132, },
					{ name = 'tc_pyramid_ai', x = 272, z = 1280, facing = 0, },
					{ name = 'tc_seer', x = 1073, z = 3931, facing = 0, },
					{ name = 'tc_seer', x = 1207, z = 2224, facing = 0, },
					{ name = 'tc_seer', x = 1836, z = 2634, facing = 0, },
					{ name = 'tc_seer', x = 1955, z = 533, facing = 0, },
					{ name = 'tc_seer', x = 399, z = 2730, facing = 0, },
					{ name = 'tc_seer', x = 479, z = 1678, facing = 0, },
					{ name = 'tc_seer', x = 524, z = 324, facing = 0, },
					{ name = 'tc_soulcage', x = 128, z = 712, facing = 0.9944, },
					{ name = 'tc_soulcage', x = 80, z = 2712, facing = 0, },
					{ name = 'tc_soulcage', x = 96, z = 3976, facing = 0, },
					{ name = 'tc_soulstone', x = 136, z = 1928, facing = 0, },
					{ name = 'tc_soulstone', x = 40, z = 1336, facing = 0, },
					{ name = 'tc_soulstone', x = 56, z = 1880, facing = 0, },
					{ name = 'tc_soulstone', x = 56, z = 1992, facing = 0, },
					{ name = 'tc_soulstone', x = 792, z = 3544, facing = 0, },
					{ name = 'tc_tower_survival', x = 1112, z = 3560, facing = 0, },
					{ name = 'tc_tower_survival', x = 280, z = 2456, facing = 0, },
					{ name = 'tc_tower_survival', x = 552, z = 3832, facing = 0, },
					{ name = 'tc_tower_survival', x = 680, z = 568, facing = 0, },
					{ name = 'tc_tower_survival', x = 840, z = 2728, facing = 0, },
					{ name = 'tc_tower_survival', x = 936, z = 968, facing = 0, },					
					},
					midgameUnits = {

				{ name = 'tc_ghoul', x = 1070, z = 2000, facing = 0, spawnRadius = 0, delay = 300, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 300, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1130, z = 2000, facing = 0, spawnRadius = 0, delay = 300, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1100, z = 1970, facing = 0, spawnRadius = 0, delay = 300, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 300, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 2,  },
				{ name = 'tc_ghoul', x = 1100, z = 2030, facing = 0, spawnRadius = 0, delay = 300, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 2,  },
				{ name = 'tc_ghoul', x = 1070, z = 2000, facing = 0, spawnRadius = 0, delay = 2100, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 2100, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1130, z = 2000, facing = 0, spawnRadius = 0, delay = 2100, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1100, z = 1970, facing = 0, spawnRadius = 0, delay = 2100, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 2100, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 2,  },
				{ name = 'tc_ghoul', x = 1100, z = 2030, facing = 0, spawnRadius = 0, delay = 2100, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 2,  },
				{ name = 'tc_ghoul', x = 1070, z = 2000, facing = 0, spawnRadius = 0, delay = 3900, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 3900, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_gunner', x = 1130, z = 2000, facing = 0, spawnRadius = 0, delay = 3900, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_gunner', x = 1100, z = 1970, facing = 0, spawnRadius = 0, delay = 3900, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_mage', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 3900, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 2,  },
				{ name = 'tc_mage', x = 1100, z = 2030, facing = 0, spawnRadius = 0, delay = 3900, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 2,  },
				{ name = 'tc_gunner', x = 1070, z = 2000, facing = 0, spawnRadius = 0, delay = 5700, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_gunner', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 5700, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_bonebeast', x = 1130, z = 2000, facing = 0, spawnRadius = 0, delay = 5700, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_bonebeast', x = 1100, z = 1970, facing = 0, spawnRadius = 0, delay = 5700, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_rictus', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 5700, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 2,  },
				{ name = 'tc_rictus', x = 1100, z = 2030, facing = 0, spawnRadius = 0, delay = 5700, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 2,  },
				{ name = 'tc_ghoul', x = 1070, z = 2000, facing = 0, spawnRadius = 0, delay = 7500, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 7500, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_gunner', x = 1130, z = 2000, facing = 0, spawnRadius = 0, delay = 7500, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_gunner', x = 1100, z = 1970, facing = 0, spawnRadius = 0, delay = 7500, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_mage', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 7500, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 2,  },
				{ name = 'tc_bonebeast', x = 1100, z = 2030, facing = 0, spawnRadius = 0, delay = 7500, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 2,  },
				{ name = 'tc_bonebeast', x = 1070, z = 1970, facing = 0, spawnRadius = 0, delay = 7500, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 3,  },
				{ name = 'tc_rictus', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 7500, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 2,  },
				{ name = 'tc_rictus', x = 1130, z = 2030, facing = 0, spawnRadius = 0, delay = 7500, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 3,  },
				{ name = 'tc_ghoul', x = 1070, z = 2000, facing = 0, spawnRadius = 0, delay = 9300, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 9300, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_gunner', x = 1130, z = 2000, facing = 0, spawnRadius = 0, delay = 9300, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_gunner', x = 1100, z = 1970, facing = 0, spawnRadius = 0, delay = 9300, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_mage', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 9300, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 2,  },
				{ name = 'tc_bonebeast', x = 1100, z = 2030, facing = 0, spawnRadius = 0, delay = 9300, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 2,  },
				{ name = 'tc_bonebeast', x = 1070, z = 1970, facing = 0, spawnRadius = 0, delay = 9300, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 3,  },
				{ name = 'tc_rictus', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 9300, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 2,  },
				{ name = 'tc_rictus', x = 1130, z = 2030, facing = 0, spawnRadius = 0, delay = 9300, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 3,  },
				{ name = 'tc_ghoul', x = 1070, z = 2000, facing = 0, spawnRadius = 0, delay = 11100, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 11100, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1130, z = 2000, facing = 0, spawnRadius = 0, delay = 11100, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1100, z = 1970, facing = 0, spawnRadius = 0, delay = 11100, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 11100, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1100, z = 2030, facing = 0, spawnRadius = 0, delay = 11100, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1070, z = 1970, facing = 0, spawnRadius = 0, delay = 11100, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 2,  },
				{ name = 'tc_ghoul', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 11100, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 3,  },
				{ name = 'tc_ghoul', x = 1130, z = 2030, facing = 0, spawnRadius = 0, delay = 11100, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 4,  },
				{ name = 'tc_ghoul', x = 1070, z = 2000, facing = 0, spawnRadius = 0, delay = 11100, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 11100, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1130, z = 2000, facing = 0, spawnRadius = 0, delay = 11100, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1100, z = 1970, facing = 0, spawnRadius = 0, delay = 11100, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 11100, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1100, z = 2030, facing = 0, spawnRadius = 0, delay = 11100, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1070, z = 1970, facing = 0, spawnRadius = 0, delay = 11100, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 2,  },
				{ name = 'tc_ghoul', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 11100, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 3,  },
				{ name = 'tc_ghoul', x = 1130, z = 2030, facing = 0, spawnRadius = 0, delay = 11100, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 4,  },
				{ name = 'tc_ghoul', x = 1070, z = 2000, facing = 0, spawnRadius = 0, delay = 12900, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 12900, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1130, z = 2000, facing = 0, spawnRadius = 0, delay = 12900, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1100, z = 1970, facing = 0, spawnRadius = 0, delay = 12900, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 12900, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1100, z = 2030, facing = 0, spawnRadius = 0, delay = 12900, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1070, z = 1970, facing = 0, spawnRadius = 0, delay = 12900, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 2,  },
				{ name = 'tc_ghoul', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 12900, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 3,  },
				{ name = 'tc_ghoul', x = 1130, z = 2030, facing = 0, spawnRadius = 0, delay = 12900, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 4,  },
				{ name = 'tc_ghoul', x = 1070, z = 2000, facing = 0, spawnRadius = 0, delay = 12900, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 12900, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1130, z = 2000, facing = 0, spawnRadius = 0, delay = 12900, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1100, z = 1970, facing = 0, spawnRadius = 0, delay = 12900, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 12900, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1100, z = 2030, facing = 0, spawnRadius = 0, delay = 12900, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1070, z = 1970, facing = 0, spawnRadius = 0, delay = 12900, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 2,  },
				{ name = 'tc_ghoul', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 12900, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 3,  },
				{ name = 'tc_ghoul', x = 1130, z = 2030, facing = 0, spawnRadius = 0, delay = 12900, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 4,  },
				{ name = 'tc_mancubus', x = 1070, z = 2000, facing = 0, spawnRadius = 0, delay = 14700, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_mancubus', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 14700, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_belial', x = 1130, z = 2000, facing = 0, spawnRadius = 0, delay = 14700, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_mancubus', x = 1100, z = 1970, facing = 0, spawnRadius = 0, delay = 14700, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 2,  },
				{ name = 'tc_mancubus', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 14700, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 2,  },
				{ name = 'tc_belial', x = 1100, z = 2030, facing = 0, spawnRadius = 0, delay = 14700, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 3,  },
				{ name = 'tc_mancubus', x = 1070, z = 2000, facing = 0, spawnRadius = 0, delay = 16500, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_mancubus', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 16500, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_belial', x = 1130, z = 2000, facing = 0, spawnRadius = 0, delay = 16500, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_mancubus', x = 1100, z = 1970, facing = 0, spawnRadius = 0, delay = 16500, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 2,  },
				{ name = 'tc_mancubus', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 16500, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 2,  },
				{ name = 'tc_belial', x = 1100, z = 2030, facing = 0, spawnRadius = 0, delay = 16500, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 3,  },
				{ name = 'tc_acranius', x = 1070, z = 2000, facing = 0, spawnRadius = 0, delay = 18300, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_sledgehammer', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 18300, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_acranius', x = 1130, z = 2000, facing = 0, spawnRadius = 0, delay = 18300, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_sledgehammer', x = 1100, z = 1970, facing = 0, spawnRadius = 0, delay = 18300, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_acranius', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 18300, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 2,  },
				{ name = 'tc_sledgehammer', x = 1100, z = 2030, facing = 0, spawnRadius = 0, delay = 18300, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 2,  },
				{ name = 'tc_ghoul', x = 1070, z = 2000, facing = 0, spawnRadius = 0, delay = 20100, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 20100, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1130, z = 2000, facing = 0, spawnRadius = 0, delay = 20100, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1100, z = 1970, facing = 0, spawnRadius = 0, delay = 20100, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 20100, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1100, z = 2030, facing = 0, spawnRadius = 0, delay = 20100, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1070, z = 1970, facing = 0, spawnRadius = 0, delay = 20100, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 2,  },
				{ name = 'tc_ghoul', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 20100, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 3,  },
				{ name = 'tc_ghoul', x = 1130, z = 2030, facing = 0, spawnRadius = 0, delay = 20100, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 4,  },
				{ name = 'tc_ghoul', x = 1070, z = 2000, facing = 0, spawnRadius = 0, delay = 20100, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 20100, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1130, z = 2000, facing = 0, spawnRadius = 0, delay = 20100, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1100, z = 1970, facing = 0, spawnRadius = 0, delay = 20100, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 20100, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1100, z = 2030, facing = 0, spawnRadius = 0, delay = 20100, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_ghoul', x = 1070, z = 1970, facing = 0, spawnRadius = 0, delay = 20100, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 2,  },
				{ name = 'tc_ghoul', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 20100, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 3,  },
				{ name = 'tc_ghoul', x = 1130, z = 2030, facing = 0, spawnRadius = 0, delay = 20100, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 4,  },
				{ name = 'tc_belial', x = 1070, z = 2000, facing = 0, spawnRadius = 0, delay = 21900, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_belial', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 21900, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_spiderdemon', x = 1130, z = 2000, facing = 0, spawnRadius = 0, delay = 21900, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_spiderdemon', x = 1100, z = 1970, facing = 0, spawnRadius = 0, delay = 21900, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 2,  },
				{ name = 'tc_spiderdemon', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 21900, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 2,  },
				{ name = 'tc_belial', x = 1100, z = 2030, facing = 0, spawnRadius = 0, delay = 21900, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 3,  },
				{ name = 'tc_agares', x = 1070, z = 1970, facing = 0, spawnRadius = 0, delay = 21900, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 4,  },
				{ name = 'tc_agares', x = 1130, z = 2030, facing = 0, spawnRadius = 0, delay = 21900, orbitalDrop = false, patrolRoute = {{1700, 3800}, {2800, 3700}, {3600, 2500}, }, difficultyAtLeast = 4,  },
				{ name = 'tc_acranius', x = 1070, z = 2000, facing = 0, spawnRadius = 0, delay = 23700, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_sledgehammer', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 23700, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_acranius', x = 1130, z = 2000, facing = 0, spawnRadius = 0, delay = 23700, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_sledgehammer', x = 1100, z = 1970, facing = 0, spawnRadius = 0, delay = 23700, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_acranius', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 23700, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_sledgehammer', x = 1100, z = 2030, facing = 0, spawnRadius = 0, delay = 23700, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 1,  },
				{ name = 'tc_acranius', x = 1070, z = 1970, facing = 0, spawnRadius = 0, delay = 23700, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 2,  },
				{ name = 'tc_sledgehammer', x = 1100, z = 2000, facing = 0, spawnRadius = 0, delay = 23700, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 3,  },
				{ name = 'tc_acranius', x = 1130, z = 2030, facing = 0, spawnRadius = 0, delay = 23700, orbitalDrop = false, patrolRoute = {{1300, 200}, {3900, 850}, {3600, 2500}, }, difficultyAtLeast = 4,  },					
					
					},
				},
			},
			defeatConditionConfig = {
				-- Indexed by allyTeam.
				[0] = {
					ignoreUnitLossDefeat = false,
					vitalCommanders = false,
					loseAfterSeconds = false,
					vitalUnitTypes = {
						"euf_techcenter_nuke",
					},			
					allyTeamLossObjectiveID = 1,				
				},
				[1] = {
					ignoreUnitLossDefeat = true,
					vitalCommanders = false,
					loseAfterSeconds = false,
					doNotExplodeOnLoss = true,					
					loseAfterSeconds = 900,
					timeLossObjectiveID = 2,
				},				
			},
			objectiveConfig = {
				[1] = {
					description = "Defend your technology center",
				},	
				[2] = {
					description = "Survive 15 minutes",
				},					
			},
			bonusObjectiveConfig = { },
		},
		completionReward = {
			experience = planetUtilities.MAIN_EXP,
			units = {
				'euf_aatower',
				'euf_artytower',
			},
			modules = {},
			abilities = {},
			codexEntries = {}
		},
	}
	
	return planetData
end

return GetPlanet
