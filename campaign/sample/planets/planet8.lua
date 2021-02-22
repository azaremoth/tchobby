--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Planet config

local function GetPlanet(planetUtilities, planetID)
	
	local image = LUA_DIRNAME .. "images/planets/desert02.png"
	
	local planetData = {
		predownloadMap = true,	
		name = "Itzamna", 
		mapDisplay = {
			x = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][1]) or 1.20,
			y = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][2]) or 1.00,
			image = image,
			size = planetUtilities.PLANET_SIZE_MAP*0.83,
			hintText = "Click this planet to begin.",
			hintSize = {402, 100},		
		},
		infoDisplay = {
			image = image,
			size = planetUtilities.PLANET_SIZE_INFO,
			backgroundImage = planetUtilities.backgroundImages[math.floor(math.random()*#planetUtilities.backgroundImages) + 1],
			terrainType = "Desert",
			radius = "8300 km",
			primary = "Zeta Aurigae",
			primaryType = "MV",
			milRating = 1,
--			feedbackLink = "http://zero-k.info/Forum/Thread/24417",
			text = [[The separatists do have a heavily fortified base on this planet. It will be hard to crack the defense lines with ground forces. However, these idiots forgot to establish anti-air. Thus, we should surprise them with bombers. Death from above!]]		},
		tips = {
			{
				image = "unitpics/euf_airport.png",
				text = [[Build aircrafts to destroy the fortified bases.]]
			},			
		},
		gameConfig = {
			-- gameName = "tcampaign $VERSION",
			gameName = "tcampaign 0.102",
			mapName = "Barren 2",
			missionStartscript = false,			
			playerConfig = {
				startX = 500,
				startZ = 3500,
				allyTeam = 0,
				startMetal = 1000,
				startEnergy = 1000,
				commanderParameters = {	},
				extraUnlocks = {
					'euf_airport',
					'euf_scout',
					'euf_interceptor',
					'euf_bomber',
				},
				commander = false,
				startUnits = {
						{ name = 'euf_sarge', x = 3700, z = 3525, facing = 3, },				
						{ name = 'euf_priest', x = 3800, z = 3525, facing = 3, },					
						{ name = 'euf_constructor', x = 3750, z = 3450, facing = 3, },
						{ name = 'euf_constructor', x = 3750, z = 3600, facing = 3, },
						{ name = 'euf_marine', x = 3600, z = 3450, facing = 3, },
						{ name = 'euf_marine', x = 3625, z = 3400, facing = 3, },
						{ name = 'euf_marine_laser', x = 3600, z = 3600, facing = 3, },
						{ name = 'euf_marine_laser', x = 3625, z = 3650, facing = 3, },
						
						{ name = 'trails1', x = 2520, z = 424, facing = 1, },
						{ name = 'trails1', x = 776, z = 520, facing = 1, },
						{ name = 'trails3', x = 1752, z = 888, facing = 0, },
						{ name = 'trails4', x = 2664, z = 1528, facing = 0, },
						{ name = 'trails4', x = 744, z = 2312, facing = 0, },						
				}
			},
			modoptions = { },
						
			initialWrecks = {
				{ name = 'euf_wall_lvl1_1', x = 1685, z = 1731, facing = 3.7936, team = 1, },
				{ name = 'euf_wall_lvl1_1', x = 1742, z = 1681, facing = 0.0271, team = 1, },
				{ name = 'euf_wall_lvl1_1', x = 2615, z = 600, facing = 2.5082, team = 1, },
				{ name = 'euf_wall_lvl1_2', x = 1614, z = 1758, facing = 0.1443, team = 1, },
				{ name = 'euf_wall_lvl1_2', x = 1642, z = 1755, facing = 0.2757, team = 1, },
				{ name = 'euf_wall_lvl1_2', x = 1704, z = 1716, facing = 0.4738, team = 1, },
				{ name = 'euf_wall_lvl1_2', x = 1739, z = 1669, facing = 2.9141, team = 1, },
				{ name = 'euf_wall_lvl1_2', x = 2583, z = 715, facing = 0.342, team = 1, },
				{ name = 'euf_wall_lvl1_2', x = 2603, z = 698, facing = 2.892, team = 1, },
				{ name = 'euf_wall_lvl1_2', x = 2621, z = 651, facing = 0.9211, team = 1, },
				{ name = 'euf_wall_lvl1_3', x = 1665, z = 1743, facing = 3.3662, team = 1, },
				{ name = 'euf_wall_lvl1_3', x = 1719, z = 1698, facing = 1.2692, team = 1, },
				{ name = 'euf_wall_lvl1_3', x = 2610, z = 677, facing = 0.0328, team = 1, },
				{ name = 'euf_wall_lvl1_3', x = 2611, z = 575, facing = 2.3983, team = 1, },
				{ name = 'euf_wall_lvl1_3', x = 2619, z = 625, facing = 0.1487, team = 1, },
				{ name = 'euf_walls_lvl2_mis', x = 1346, z = 1129, facing = 0.5185, team = 1, },
				{ name = 'euf_walls_lvl2_mis', x = 1402, z = 1072, facing = 0.5165, team = 1, },
				{ name = 'euf_walls_lvl2_mis', x = 1456, z = 1017, facing = 0.5145, team = 1, },
				{ name = 'euf_walls_lvl2_mis', x = 1489, z = 721, facing = 0, team = 1, },
				{ name = 'euf_walls_lvl2_mis', x = 1512, z = 961, facing = 0.5165, team = 1, },
				{ name = 'euf_walls_lvl2_mis', x = 1563, z = 901, facing = 0.5838, team = 1, },
				{ name = 'euf_walls_lvl2_mis', x = 1569, z = 721, facing = 0, team = 1, },
				{ name = 'euf_walls_lvl2_mis', x = 1596, z = 833, facing = 0.8618, team = 1, },
				{ name = 'euf_walls_lvl2_mis', x = 1608, z = 756, facing = 2.9383, team = 1, },
				{ name = 'euf_walls_lvl2_mis', x = 1887, z = 773, facing = 0, team = 1, },
				{ name = 'euf_walls_lvl2_mis', x = 1964, z = 762, facing = 2.1676, team = 1, },
				{ name = 'euf_walls_lvl2_mis', x = 2024, z = 721, facing = 2.5525, team = 1, },
				{ name = 'euf_walls_lvl2_mis', x = 2053, z = 652, facing = 0.9399, team = 1, },
				{ name = 'euf_walls_lvl2_mis', x = 2521, z = 167, facing = 0.4146, team = 1, },
				{ name = 'euf_walls_lvl2_mis', x = 2591, z = 131, facing = 0.1979, team = 1, },
				{ name = 'euf_walls_lvl2_mis', x = 2665, z = 106, facing = 0.1979, team = 1, },
				{ name = 'euf_walls_lvl2_mis', x = 2738, z = 80, facing = 0.2572, team = 1, },
				{ name = 'euf_walls_lvl2_mis', x = 2797, z = 35, facing = 0.5748, team = 1, },
				{ name = 'agrarhut', x = 1493, z = 889, facing = 2.24, team = 1, },
				{ name = 'agrarhut', x = 150, z = 2679, facing = -0.21, team = 1, },
				{ name = 'barrel', x = 1468, z = 734, facing = 0.01, team = 1, },
				{ name = 'barrel', x = 456, z = 100, facing = -0.01, team = 1, },
				{ name = 'barrels', x = 1510, z = 741, facing = -0.62, team = 1, },
				{ name = 'barrels', x = 228, z = 2676, facing = 1.02, team = 1, },
				{ name = 'bighouse', x = 2032, z = 74, facing = 0, team = 1, },
				{ name = 'bld_tunnel_low', x = 1919, z = 75, facing = 1, team = 1, },
				{ name = 'box', x = 1544, z = 740, facing = 0, team = 1, },
				{ name = 'box', x = 209, z = 2719, facing = 0, team = 1, },
				{ name = 'box', x = 231, z = 2709, facing = 0.36, team = 1, },
				{ name = 'box', x = 2532, z = 174, facing = 0.97, team = 1, },
				{ name = 'boxes', x = 1580, z = 795, facing = -0.69, team = 1, },
				{ name = 'boxes', x = 2480, z = 140, facing = 0, team = 1, },
				{ name = 'boxes', x = 412, z = 78, facing = 4.51, team = 1, },
				{ name = 'boxes', x = 441, z = 70, facing = 1.29, team = 1, },
				{ name = 'boxes', x = 82, z = 2716, facing = 0.82, team = 1, },
				{ name = 'buildingmodule_b2l_2', x = 1790, z = 77, facing = 0, team = 1, },
				{ name = 'buildingmodule_lvl2_8', x = 1790, z = 79, facing = 0, team = 1, },
				{ name = 'containertype1', x = 481, z = 52, facing = 0.01, team = 1, },
				{ name = 'containertype1', x = 783, z = 976, facing = -0.01, team = 1, },
				{ name = 'containertype2', x = 536, z = 1088, facing = 0.87, team = 1, },
				{ name = 'containertype2', x = 691, z = 59, facing = 0.02, team = 1, },
				{ name = 'containertype2', x = 739, z = 976, facing = 0.01, team = 1, },
				{ name = 'containertype3', x = 844, z = 981, facing = 0.39, team = 1, },
				{ name = 'containertype4', x = 395, z = 30, facing = 1.61, team = 1, },
				{ name = 'tank', x = 1580, z = 747, facing = 0, team = 1, },
				{ name = 'cactus1', x = 124, z = 2020, facing = -0.01, },
				{ name = 'cactus1', x = 140, z = 164, facing = 0, },
				{ name = 'cactus1', x = 140, z = 2196, facing = 0, },
				{ name = 'cactus1', x = 1579, z = 15, facing = 0, },
				{ name = 'cactus1', x = 2156, z = 3972, facing = 0, },
				{ name = 'cactus1', x = 2252, z = 452, facing = 0, },
				{ name = 'cactus1', x = 3260, z = 1572, facing = 0, },
				{ name = 'cactus1', x = 3468, z = 1540, facing = 0, },
				{ name = 'cactus1', x = 3884, z = 164, facing = 0, },
				{ name = 'cactus1', x = 3900, z = 3268, facing = 0, },
				{ name = 'cactus1', x = 3932, z = 100, facing = -0.01, },
				{ name = 'cactus1', x = 684, z = 3236, facing = -0.01, },
				{ name = 'cactus1', x = 876, z = 3540, facing = 0, },
				{ name = 'cactus2', x = 1036, z = 260, facing = 0, },
				{ name = 'cactus2', x = 1088, z = 631, facing = -0.66, },
				{ name = 'cactus2', x = 300, z = 660, facing = 0, },
				{ name = 'cactus2', x = 3820, z = 2660, facing = 0, },
				{ name = 'cactus2', x = 3964, z = 1860, facing = 0, },
				{ name = 'cactus3', x = 1084, z = 1892, facing = 0, },
				{ name = 'cactus3', x = 2108, z = 2868, facing = 0.01, },
				{ name = 'cactus3', x = 2300, z = 1108, facing = 0, },
				{ name = 'cactus3', x = 2316, z = 1060, facing = 0, },
				{ name = 'cactus3', x = 28, z = 3988, facing = 0, },
				{ name = 'cactus3', x = 2956, z = 3156, facing = 0, },
				{ name = 'cactus3', x = 3244, z = 340, facing = 0, },
				{ name = 'cactus3', x = 60, z = 3892, facing = 0, },
				{ name = 'cactus3', x = 828, z = 900, facing = 0.01, },
				{ name = 'cactus4', x = 1070, z = 656, facing = 0, },
				{ name = 'cactus4', x = 1468, z = 2516, facing = 0, },
				{ name = 'cactus4', x = 2956, z = 1140, facing = -0.01, },
				{ name = 'cactus4', x = 2988, z = 1140, facing = -0.01, },
				{ name = 'cactus4', x = 3868, z = 2564, facing = 0, },
				{ name = 'cactus4', x = 3900, z = 2676, facing = 0.01, },
				{ name = 'cactus4', x = 748, z = 1348, facing = 0, },
				{ name = 'cactus5', x = 1708, z = 180, facing = -0.01, },
				{ name = 'cactus5', x = 2300, z = 4036, facing = 0, },
				{ name = 'cactus5', x = 3948, z = 3540, facing = 0, },
				{ name = 'cactus6', x = 1088, z = 686, facing = 4.37, },
				{ name = 'cactus7', x = 1049, z = 637, facing = 0, },
				{ name = 'cactus7', x = 1122, z = 614, facing = 4.14, },
				{ name = 'pillar_brown1', x = 1027, z = 2902, facing = 0, },
				{ name = 'pillar_brown1', x = 1325, z = 3583, facing = 2.44, },
				{ name = 'pillar_brown1', x = 1401, z = 3871, facing = -0.03, },
				{ name = 'pillar_brown1', x = 1505, z = 3093, facing = 0.02, },
				{ name = 'pillar_brown1', x = 2010, z = 2559, facing = -0.01, },
				{ name = 'pillar_brown2', x = 1511, z = 3694, facing = -0.03, },
				{ name = 'rock_brown1', x = 1033, z = 2656, facing = 0.64, },
				{ name = 'rock_brown1', x = 1333, z = 2510, facing = 0.12, },
				{ name = 'rock_brown1', x = 1660, z = 3998, facing = -0.08, },
				{ name = 'rock_brown1', x = 3800, z = 1274, facing = 3.78, },
				{ name = 'rock_brown1', x = 977, z = 2501, facing = 1.2, },
				{ name = 'rock_brown2', x = 1064, z = 2704, facing = -1.2, },
				{ name = 'rock_brown2', x = 1108, z = 2637, facing = 0.78, },
				{ name = 'rock_brown2', x = 1342, z = 3653, facing = 0.03, },
				{ name = 'rock_brown2', x = 1556, z = 3146, facing = -1.23, },
				{ name = 'rock_brown2', x = 3711, z = 1261, facing = 0.82, },
				{ name = 'rock_brown2', x = 3803, z = 1213, facing = -0.39, },
				{ name = 'rock_brown3', x = 1075, z = 2580, facing = -1.39, },
				{ name = 'rock_brown3', x = 1130, z = 2765, facing = 0.86, },
				{ name = 'rock_brown3', x = 1556, z = 3668, facing = 0, },
				{ name = 'rock_brown3', x = 1629, z = 3142, facing = -1.4, },
				{ name = 'rock_brown3', x = 2034, z = 2621, facing = -0.05, },
				{ name = 'rock_brown3', x = 2274, z = 1066, facing = -0.01, },
				{ name = 'rock_brown3', x = 3487, z = 1545, facing = 0, },
				{ name = 'rock_brown4', x = 1142, z = 2684, facing = 0.13, },
				{ name = 'rock_brown4', x = 1375, z = 3934, facing = -0.02, },
				{ name = 'rock_brown4', x = 1574, z = 3087, facing = 0.01, },
				{ name = 'rock_brown4', x = 1606, z = 3709, facing = -0.03, },
				{ name = 'rock_brown4', x = 1986, z = 2621, facing = 0.02, },
				{ name = 'rock_brown4', x = 2286, z = 112, facing = 0.02, },
				{ name = 'rock_brown4', x = 3775, z = 1373, facing = 0, },
				{ name = 'rock_brown4', x = 827, z = 2410, facing = 1.78, },
				{ name = 'rock_brown5', x = 1501, z = 1023, facing = 2.43, },
				{ name = 'rock_brown5', x = 1550, z = 3727, facing = -0.04, },
				{ name = 'rock_brown5', x = 3938, z = 1247, facing = 1.02, },
				{ name = 'rock_brown5', x = 950, z = 2537, facing = 0.02, },
				{ name = 'stones_brown1', x = 1156, z = 2806, facing = -0.04, },
				{ name = 'stones_brown1', x = 1373, z = 3543, facing = -0.07, },
				{ name = 'stones_brown1', x = 973, z = 2627, facing = 0.1, },
				{ name = 'stones_brown2', x = 1075, z = 2769, facing = 0.05, },
				{ name = 'stones_brown2', x = 1075, z = 2769, facing = 0.05, },
				{ name = 'stones_brown2', x = 2075, z = 2504, facing = -0.21, },
				{ name = 'stones_brown3', x = 1003, z = 2706, facing = -0.33, },
				{ name = 'stones_brown3', x = 1098, z = 2680, facing = 1.16, },
				{ name = 'stones_brown3', x = 1453, z = 3877, facing = 0, },
				{ name = 'stones_brown3', x = 1601, z = 3183, facing = 0.02, },
				{ name = 'stones_brown3', x = 2251, z = 145, facing = 0.74, },
				{ name = 'stones_brown3', x = 2329, z = 1092, facing = 0, },
				{ name = 'stones_brown3', x = 3748, z = 1197, facing = 0, },
				{ name = 'stones_brown3', x = 3829, z = 1324, facing = 4.56, },
				{ name = 'stones_brown3', x = 3978, z = 1257, facing = 0, },
				{ name = 'stones_brown3', x = 819, z = 2452, facing = -0.01, },
				{ name = 'stones_brown3', x = 987, z = 2578, facing = 0.88, },
				{ name = 'stones_brown3', x = 993, z = 2429, facing = 0.01, },
				{ name = 'stones_brown4', x = 1011, z = 2555, facing = 1.18, },
				{ name = 'stones_brown4', x = 1032, z = 2557, facing = 1.06, },
				{ name = 'stones_brown4', x = 1192, z = 2717, facing = 0.02, },
				{ name = 'stones_brown4', x = 1315, z = 3896, facing = -0.03, },
				{ name = 'stones_brown4', x = 1558, z = 3983, facing = 0.06, },
				{ name = 'stones_brown4', x = 1622, z = 3084, facing = 0.04, },
				{ name = 'stones_brown4', x = 3454, z = 1586, facing = 0, },
				{ name = 'stones_brown4', x = 3520, z = 1592, facing = 1.13, },
				{ name = 'stones_brown4', x = 3740, z = 1435, facing = 1.3, },
				{ name = 'stones_brown4', x = 3749, z = 1320, facing = 0, },
				{ name = 'stones_brown4', x = 903, z = 2475, facing = -1.31, },
				{ name = 'stones_brown5', x = 1021, z = 2588, facing = 0.35, },
				{ name = 'stones_brown5', x = 1502, z = 1060, facing = -0.12, },
				{ name = 'stones_brown5', x = 1581, z = 1012, facing = 4.12, },
				{ name = 'stones_brown5', x = 2269, z = 1117, facing = 0.74, },
				{ name = 'stones_brown5', x = 3898, z = 1215, facing = 1.79, },
				{ name = 'stones_brown6', x = 1017, z = 2512, facing = 0.49, },
				{ name = 'stones_brown6', x = 1102, z = 2723, facing = 0.25, },
				{ name = 'stones_brown6', x = 1428, z = 3914, facing = -0.01, },
				{ name = 'stones_brown6', x = 1541, z = 1010, facing = 0, },
				{ name = 'stones_brown6', x = 1575, z = 3745, facing = -0.02, },
				{ name = 'stones_brown6', x = 3728, z = 1396, facing = 0.88, },
				{ name = 'stones_brown6', x = 897, z = 2541, facing = -0.01, },
				{ name = 'stones_brown6', x = 988, z = 2546, facing = 0.63, },
				{ name = 'stones_brown7', x = 3857, z = 1256, facing = 4.53, },
				{ name = 'stones_brown8', x = 1268, z = 3630, facing = 0.03, },
				{ name = 'stones_brown8', x = 2075, z = 2565, facing = -0.02, },
				{ name = 'stones_brown8', x = 2473, z = 39, facing = 0.05, },
				{ name = 'stones_brown8', x = 3559, z = 1620, facing = 0, },
				{ name = 'stones_brown8', x = 3715, z = 1308, facing = 0, },
			},				
			aiConfig = {
				{
					startX = 4000,
					startZ = 75,
					aiLib = "Skirmish AI",
					humanName = "Enemy",
					unlocks = {
						'euf_scoutdrone',
						'euf_constructor',						
						'euf_marine',
						'euf_marine_laser',
						'euf_bazooka',
						'euf_bazooka_missile',
						'euf_pyro',								
					},
					difficultyDependantUnlocks = {
						[2] = {"euf_raider"},
						[2] = {"euf_sniper_ai"},
						[3] = {"euf_bunker_ai"},
						[3] = {"euf_plasmatower"},
						[3] = {"euf_aatank"},						
						[4] = {"euf_aatower"},
						[4] = {"euf_tank"},
					},
					allyTeam = 1,
					commander = false,
					startUnits = {
						{ name = 'euf_artytower', x = 1240, z = 1288, facing = 0, },
						{ name = 'euf_artytower', x = 424, z = 1736, facing = 0, },
						{ name = 'euf_artytower', x = 872, z = 1368, facing = 0, },
						{ name = 'euf_barracks_ai', x = 1144, z = 96, facing = 0, },
						{ name = 'euf_barracks_ai', x = 904, z = 96, facing = 0, },
						{ name = 'euf_bazooka_mis', x = 1331, z = 1907, facing = 0, },
						{ name = 'euf_bazooka_mis', x = 1541, z = 1586, facing = 0, },
						{ name = 'euf_bazooka_mis', x = 2027, z = 1490, facing = 0, },
						{ name = 'euf_bazooka_mis', x = 2418, z = 1143, facing = 0, },
						{ name = 'euf_bazooka_mis', x = 2475, z = 674, facing = 0, },
						{ name = 'euf_bazooka_mis', x = 2586, z = 403, facing = 0, },
						{ name = 'euf_bazooka_mis', x = 729, z = 2689, facing = 0, },
						{ name = 'euf_bazooka_mis', x = 856, z = 359, facing = 0, },
						{ name = 'euf_bazooka_mis', x = 892, z = 357, facing = 0, },
						{ name = 'euf_bunker_ai', x = 1760, z = 1296, facing = 0, },
						{ name = 'euf_bunker_ai', x = 2240, z = 560, facing = 0, },
						{ name = 'euf_bunker_ai', x = 368, z = 2336, facing = 0, },
						{ name = 'euf_factory_ai', x = 560, z = 512, facing = 1, },
						{ name = 'euf_lasertower_survival', x = 1080, z = 2392, facing = 0, },
						{ name = 'euf_lasertower_survival', x = 1176, z = 488, facing = 0, },
						{ name = 'euf_lasertower_survival', x = 1288, z = 2008, facing = 0, },
						{ name = 'euf_lasertower_survival', x = 1896, z = 712, facing = 0, },
						{ name = 'euf_lasertower_survival', x = 1992, z = 648, facing = 0, },
						{ name = 'euf_lasertower_survival', x = 2136, z = 1512, facing = 0, },
						{ name = 'euf_lasertower_survival', x = 2504, z = 984, facing = 0, },
						{ name = 'euf_lasertower_survival', x = 2520, z = 296, facing = 0, },
						{ name = 'euf_lasertower_survival', x = 488, z = 2856, facing = 0, },
						{ name = 'euf_marine_laser', x = 878, z = 405, facing = 0, },
						{ name = 'euf_marine_laser', x = 918, z = 390, facing = 0, },
						{ name = 'euf_marine_mis', x = 1176, z = 574, facing = 0, },
						{ name = 'euf_marine_mis', x = 1230, z = 438, facing = 0, },
						{ name = 'euf_marine_mis', x = 1249, z = 2166, facing = 0, },
						{ name = 'euf_marine_mis', x = 1258, z = 525, facing = 0, },
						{ name = 'euf_marine_mis', x = 1630, z = 1737, facing = 0, },
						{ name = 'euf_marine_mis', x = 1641, z = 757, facing = 0, },
						{ name = 'euf_marine_mis', x = 1672, z = 1713, facing = 0, },
						{ name = 'euf_marine_mis', x = 1715, z = 1677, facing = 0, },
						{ name = 'euf_marine_mis', x = 1819, z = 771, facing = 0, },
						{ name = 'euf_marine_mis', x = 2055, z = 574, facing = 0, },
						{ name = 'euf_marine_mis', x = 2285, z = 1377, facing = 0, },
						{ name = 'euf_marine_mis', x = 2503, z = 1135, facing = 0, },
						{ name = 'euf_marine_mis', x = 2513, z = 199, facing = 0, },
						{ name = 'euf_marine_mis', x = 2586, z = 691, facing = 0, },
						{ name = 'euf_marine_mis', x = 2600, z = 650, facing = 0, },
						{ name = 'euf_marine_mis', x = 2602, z = 613, facing = 0, },
						{ name = 'euf_marine_mis', x = 332, z = 1728, facing = 0, },
						{ name = 'euf_marine_mis', x = 339, z = 2925, facing = 0, },
						{ name = 'euf_marine_mis', x = 567, z = 1661, facing = 0, },
						{ name = 'euf_marine_mis', x = 697, z = 171, facing = 0, },
						{ name = 'euf_marine_mis', x = 744, z = 1435, facing = 0, },
						{ name = 'euf_marine_mis', x = 856, z = 2642, facing = 0, },
						{ name = 'euf_marine', x = 1781, z = 187, facing = 0, },
						{ name = 'euf_marine', x = 903, z = 704, facing = 0, },
						{ name = 'euf_metalextractor_lvl1', x = 1624, z = 424, facing = 0, },
						{ name = 'euf_metalextractor_lvl1', x = 2136, z = 1112, facing = 0, },
						{ name = 'euf_metalextractor_lvl1', x = 3288, z = 120, facing = 0, },
						{ name = 'euf_metalextractor_lvl1', x = 3368, z = 648, facing = 0, },
						{ name = 'euf_metalextractor_lvl1', x = 3816, z = 584, facing = 0, },
						{ name = 'euf_metalextractor_lvl1', x = 952, z = 2200, facing = 0, },
						{ name = 'euf_metalextractor_lvl2', x = 136, z = 104, facing = 0, },
						{ name = 'euf_metalextractor_lvl2', x = 184, z = 2488, facing = 0, },
						{ name = 'euf_metalextractor_lvl2', x = 328, z = 872, facing = 0, },
						{ name = 'euf_metalextractor_lvl2', x = 424, z = 232, facing = 0, },
						{ name = 'euf_metalextractor_lvl2', x = 72, z = 936, facing = 0, },
						{ name = 'euf_paladin_ai', x = 970, z = 370, facing = -1,53, },
						{ name = 'euf_plasmatower_survival', x = 104, z = 1656, facing = 0, },
						{ name = 'euf_plasmatower_survival', x = 1560, z = 1784, facing = 0, },
						{ name = 'euf_plasmatower_survival', x = 1800, z = 1624, facing = 0, },
						{ name = 'euf_plasmatower_survival', x = 2376, z = 1256, facing = 0, },
						{ name = 'euf_plasmatower_survival', x = 248, z = 2984, facing = 0, },
						{ name = 'euf_plasmatower_survival', x = 2520, z = 536, facing = 0, },
						{ name = 'euf_plasmatower_survival', x = 2520, z = 536, facing = 0, },
						{ name = 'euf_plasmatower_survival', x = 2536, z = 776, facing = 0, },
						{ name = 'euf_plasmatower_survival', x = 568, z = 1752, facing = 0, },
						{ name = 'euf_plasmatower_survival', x = 648, z = 1544, facing = 0, },
						{ name = 'euf_plasmatower_survival', x = 696, z = 2792, facing = 0, },
						{ name = 'euf_powerplant', x = 152, z = 336, facing = 0, },
						{ name = 'euf_powerplant', x = 152, z = 496, facing = 0, },
						{ name = 'euf_powerplant', x = 152, z = 656, facing = 0, },
						{ name = 'euf_radar_lvl1', x = 2264, z = 904, facing = 0, },
						{ name = 'euf_radar_lvl1', x = 712, z = 2584, facing = 0, },
						{ name = 'euf_radar_lvl2', x = 1064, z = 1336, facing = 0, },
						{ name = 'euf_raider', x = 1872, z = 371, facing = 2, },
						{ name = 'euf_raider', x = 1948, z = 1134, facing = 0, },
						{ name = 'euf_sniper_mis', x = 2086, z = 2664, facing = 1, },
						{ name = 'euf_solar', x = 1008, z = 1056, facing = 0, },
						{ name = 'euf_solar', x = 1104, z = 1040, facing = 0, },
						{ name = 'euf_solar', x = 1200, z = 1008, facing = 0, },
						{ name = 'euf_solar', x = 1296, z = 960, facing = 0, },
						{ name = 'euf_solar', x = 144, z = 2080, facing = 0, },
						{ name = 'euf_solar', x = 144, z = 2160, facing = 0, },
						{ name = 'euf_solar', x = 1520, z = 160, facing = 0, },
						{ name = 'euf_solar', x = 1520, z = 80, facing = 0, },
						{ name = 'euf_solar', x = 1600, z = 160, facing = 0, },
						{ name = 'euf_solar', x = 1600, z = 80, facing = 0, },
						{ name = 'euf_solar', x = 496, z = 2064, facing = 0, },
						{ name = 'euf_solar', x = 592, z = 2096, facing = 0, },
						{ name = 'euf_solar', x = 64, z = 2080, facing = 0, },
						{ name = 'euf_solar', x = 64, z = 2160, facing = 0, },
						{ name = 'euf_solar', x = 688, z = 2096, facing = 0, },
						{ name = 'euf_solar', x = 784, z = 2064, facing = 0, },
						{ name = 'euf_storage', x = 600, z = 72, facing = 2, },
						{ name = 'euf_storage', x = 632, z = 968, facing = 0, },
						{ name = 'euf_tank_mis', x = 1559, z = 670, facing = 2, },
					},
					midgameUnits = {

					},
				},
			},
			defeatConditionConfig = {
				-- Indexed by allyTeam.
				[0] = {},
				[1] = {
					ignoreUnitLossDefeat = false,
					vitalCommanders = false,
					loseAfterSeconds = false,
					allyTeamLossObjectiveID = 1,
				},				
			},
			objectiveConfig = {
				[1] = {
					description = "Destroy all enemies",
				},				
			},
			bonusObjectiveConfig = { },
		},
		completionReward = {
			experience = planetUtilities.MAIN_EXP,
			units = {
				'euf_airport',
				'euf_scout',
				'euf_interceptor',
				'euf_bomber',
			},
			modules = {},
			abilities = {},
			codexEntries = {}
		},
	}
	
	return planetData
end

return GetPlanet
