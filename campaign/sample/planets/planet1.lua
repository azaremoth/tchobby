--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Planet config

local function GetPlanet(planetUtilities, planetID)
	
	local image = LUA_DIRNAME .. "images/planets/2.png"
	
	local planetData = {
		name = "Tohil",
		startingPlanet = true,
		predownloadMap = true, 
		mapDisplay = {
			x = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][1]) or 1.00,
			y = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][2]) or 1.00,
			image = image,
			size = planetUtilities.PLANET_SIZE_MAP*0.65,
			hintText = "Click this planet to begin.",
			hintSize = {400, 100}, -- Size of the hint box
		},
		infoDisplay = {
			image = image,
			size = planetUtilities.PLANET_SIZE_INFO,
			backgroundImage = planetUtilities.backgroundImages[math.floor(math.random()*#planetUtilities.backgroundImages) + 1],
			terrainType = "Arid",
			radius = "6050 km",
			primary = "Zeta Aurigae",
			primaryType = "MV",
			milRating = 1,
--			feedbackLink = "http://zero-k.info/Forum/Thread/24417",
			text = [[The Xenosects are slowly becoming real trouble on this planet. I hate those bugs! They are starting to damage vital infrastructure. So, let's play exterminator!]]
		},
		tips = {
			{
				image = "unitpics/bug_med.png",
				text = [[The Xenosects - a space bug race are terrorizing the galaxy.]]
			},		
			{
				image = "unitpics/euf_sarge.png",
				text = [[Sarge - your commander that is in charge of your troops. He will encourage and heal nearby units. Protect him at all costs.]]
			},
			{
				image = "unitpics/euf_marine.png",
				text = [[Basic combat unit. It can shoot airborne targets.]]
			},
		},		
		gameConfig = {
			gameName = "tcampaign $VERSION",
			-- gameName = "tcampaign 0.101",
			mapName = "Wanderlust v03",
			missionStartscript = false,			
			playerConfig = {
				startX = 500,
				startZ = 500,
				allyTeam = 0,
				startMetal = 10,
				startEnergy = 10,
				commanderParameters = {	},
				extraUnlocks = { },
				commander = false,
				startUnits = {
					{
						name = "euf_sarge_lvl1",
						x = 500,
						z = 3500,
						facing = 3,
						defeatIfDestroyedObjectiveID = 1,				
					},					
				},
				midgameUnits = {
					{	name = "euf_transport_mis",	x = 800, z = 3600, facing = 0, spawnRadius = 0, delay = 4*30, orbitalDrop = false, },					
				},
			},
			modoptions = { },
						
			initialWrecks = {
				{ name = 'bld_tunnel_low', x = 2071, z = 1935, facing = 1, },
				{ name = 'buildingmodule_b2l_3', x = 1424, z = 3538, facing = 0, },
				{ name = 'buildingmodule_b2l_3', x = 1976, z = 1954, facing = 0, },
				{ name = 'buildingmodule_lvl0_4', x = 2222, z = 1931, facing = 0, },
				{ name = 'buildingmodule_lvl0_7', x = 3365, z = 100, facing = 3.7, },
				{ name = 'buildingmodule_lvl1_8', x = 3365, z = 100, facing = 3.7, },
				{ name = 'buildingfeature_3', x = 3328, z = 75, facing = 0, },				
				{ name = 'buildingmodule_lvl1_2', x = 2222, z = 1931, facing = 0, },
				{ name = 'buildingmodule_lvl2_2', x = 1424, z = 3538, facing = 0, },
				{ name = 'buildingmodule_lvl2_6', x = 1976, z = 1954, facing = 0, },
				{ name = 'grey_pillar1', x = 2061, z = 2242, facing = 0, },
				{ name = 'grey_pillar1', x = 2119, z = 2033, facing = 2, },
				{ name = 'grey_pillar1', x = 2625, z = 541, facing = 0, },
				{ name = 'grey_pillar1', x = 2647, z = 3477, facing = 0, },
				{ name = 'grey_pillar1', x = 4929, z = 3231, facing = 0, },
				{ name = 'grey_pillar1', x = 4957, z = 3452, facing = 0, },
				{ name = 'grey_pillar1', x = 851, z = 155, facing = 0, },
				{ name = 'grey_pillar2', x = 2026, z = 2106, facing = 0, },
				{ name = 'grey_pillar2', x = 2511, z = 3450, facing = 0, },
				{ name = 'grey_pillar2', x = 2517, z = 713, facing = 0, },
				{ name = 'grey_pillar2', x = 3299, z = 1423, facing = 0, },
				{ name = 'grey_pillar2', x = 4855, z = 3392, facing = 0, },
				{ name = 'greyrock1', x = 2639, z = 641, facing = 1, },
				{ name = 'greyrock1', x = 3327, z = 1487, facing = 0, },
				{ name = 'greyrock1', x = 4951, z = 3332, facing = 0, },
				{ name = 'greyrock2', x = 2616, z = 3524, facing = 0, },
				{ name = 'greyrock2', x = 3108, z = 2676, facing = 0, },
				{ name = 'greyrock2', x = 3258, z = 1497, facing = 0, },
				{ name = 'greyrock2', x = 3368, z = 315, facing = 0, },
				{ name = 'greyrock2', x = 4932, z = 3378, facing = 0, },
				{ name = 'greyrock3', x = 1830, z = 3555, facing = 0, },
				{ name = 'greyrock3', x = 2005, z = 2281, facing = 0, },
				{ name = 'greyrock3', x = 3135, z = 1446, facing = 0, },
				{ name = 'greyrock3', x = 4788, z = 3437, facing = 0, },
				{ name = 'greyrock3', x = 983, z = 2286, facing = 3, },
				{ name = 'greyrock4', x = 2639, z = 590, facing = 0, },
				{ name = 'greyrock4', x = 3526, z = 1250, facing = 0, },
				{ name = 'greyrock4', x = 4919, z = 3419, facing = 0, },
				{ name = 'greyrock5', x = 1850, z = 3484, facing = 3, },
				{ name = 'greyrock5', x = 3342, z = 1269, facing = 0, },
				{ name = 'greyrock5', x = 3365, z = 1436, facing = 0, },
				{ name = 'greyrock6', x = 1782, z = 3637, facing = 2, },
				{ name = 'greyrock6', x = 1796, z = 3426, facing = 0, },
				{ name = 'greyrock6', x = 2574, z = 3473, facing = 0, },
				{ name = 'greyrock6', x = 3082, z = 1633, facing = 0, },
				{ name = 'greyrock6', x = 4716, z = 1527, facing = 0, },
				{ name = 'greyrock6', x = 720, z = 272, facing = 0, },
				{ name = 'greyrock6', x = 897, z = 1920, facing = 0, },
				{ name = 'greyrock7', x = 1017, z = 2254, facing = 0, },
				{ name = 'greyrock7', x = 1037, z = 2212, facing = 0, },
				{ name = 'greyrock7', x = 2521, z = 3513, facing = 0, },
				{ name = 'greyrock7', x = 2557, z = 777, facing = 0, },
				{ name = 'greyrock7', x = 2951, z = 1596, facing = 0, },
				{ name = 'greyrock7', x = 3287, z = 1278, facing = 0, },
				{ name = 'greyrock7', x = 895, z = 179, facing = 0, },
				{ name = 'greyrock7', x = 971, z = 2346, facing = 0, },
				{ name = 'greyrock8', x = 2167, z = 2073, facing = 0, },
				{ name = 'greyrock8', x = 2454, z = 813, facing = 0, },
				{ name = 'greyrock8', x = 3184, z = 1343, facing = 0, },
				{ name = 'greyrock8', x = 4992, z = 3408, facing = 0, },
				{ name = 'greyrock8', x = 5038, z = 3266, facing = 0, },
				{ name = 'greyrock8', x = 56, z = 740, facing = 0, },
				{ name = 'greyrock9', x = 1012, z = 2313, facing = 0, },
				{ name = 'greyrock9', x = 1822, z = 3604, facing = 0, },
				{ name = 'greyrock9', x = 1965, z = 2116, facing = 0, },
				{ name = 'greyrock9', x = 3259, z = 1218, facing = 0, },
				{ name = 'greyrock9', x = 4881, z = 3239, facing = 0, },			
				{ name = 'agrarhut', x = 842, z = 2541, facing = 0, },
				{ name = 'agrarhut', x = 1355, z = 1880, facing = 3, },				
				{ name = 'bighouse', x = 3002, z = 956, facing = 3, },
				{ name = 'containertype1', x = 3026, z = 1096, facing = 0.05, },
				{ name = 'containertype1', x = 760, z = 2577, facing = 3.90, },
				{ name = 'containertype2', x = 2986, z = 1096, facing = 0.00, },
				{ name = 'containertype3', x = 1311, z = 3047, facing = 1.05, },
				{ name = 'containertype4', x = 1279, z = 3124, facing = 3.95, },
				{ name = 'geovent', x = 2012, z = 116, facing = 0, },
				{ name = 'geovent', x = 268, z = 1084, facing = 0, },
				{ name = 'geovent', x = 3076, z = 3980, facing = 0, },
				{ name = 'geovent', x = 4508, z = 468, facing = 0, },
				{ name = 'geovent', x = 4900, z = 3068, facing = 0, },
				{ name = 'geovent', x = 644, z = 3652, facing = 0, },
				{ name = 'hall', x = 2794, z = 1316, facing = 3, },
				{ name = 'pad', x = 1196, z = 3106, facing = 3, },
				{ name = 'tank', x = 1012, z = 2551, facing = 0, },
				{ name = 'tank', x = 1273, z = 2987, facing = 0, },
				{ name = 'tank', x = 1336, z = 2987, facing = 0, },
				{ name = 'tank', x = 1396, z = 2987, facing = 0, },
				{ name = 'tank', x = 2755, z = 1410, facing = 0, },
				{ name = 'tank', x = 2830, z = 1410, facing = 0, },
				{ name = 'tank', x = 3083, z = 886, facing = 0, },
				{ name = 'tank', x = 3084, z = 1016, facing = 0, },
				{ name = 'tank', x = 943, z = 2551, facing = 0, },
				{ name = 'tube_box', x = 1250, z = 2130, facing = 0, },		
				{ name = 'tube_box', x = 1190, z = 2130, facing = 0, },	
				{ name = 'tube_box', x = 1130, z = 2130, facing = 0, },					
				{ name = 'tube_box', x = 1410, z = 2019, facing = 0, },
				{ name = 'tube_box', x = 2958, z = 1247, facing = 3, },
				{ name = 'tube_box', x = 3085, z = 1142, facing = 0, },
				{ name = 'tube_box', x = 3085, z = 953, facing = 0, },
				{ name = 'tube_box', x = 3173, z = 839, facing = 1, },
				{ name = 'tube_box', x = 3264, z = 736, facing = 0, },
				{ name = 'tube_connect', x = 1073, z = 2628, facing = 0, },
				{ name = 'tube_connect', x = 1183, z = 2984, facing = 0, },
				{ name = 'tube_connect', x = 1482, z = 1717, facing = 0, },
				{ name = 'tube_connect', x = 1575, z = 2011, facing = 0, },
				{ name = 'tube_connect', x = 2903, z = 1432, facing = 0, },
				{ name = 'tube_connect', x = 3336, z = 434, facing = 0, },
				{ name = 'tube_connect', x = 997, z = 2752, facing = 0, },
				{ name = 'tube_corner', x = 1016, z = 2649, facing = 2, },
				{ name = 'tube_corner', x = 1018, z = 2913, facing = 3, },
				{ name = 'tube_corner', x = 1166, z = 2942, facing = 1, },
				{ name = 'tube_corner', x = 1396, z = 2111, facing = 0, },
				{ name = 'tube_corner', x = 1426, z = 1738, facing = 2, },
				{ name = 'tube_corner', x = 2917, z = 1267, facing = 2, },
				{ name = 'tube_corner', x = 3066, z = 1231, facing = 0, },
				{ name = 'tube_corner', x = 3098, z = 861, facing = 2, },
				{ name = 'tube_corner', x = 3250, z = 829, facing = 0, },
				{ name = 'tube_corner', x = 3280, z = 455, facing = 2, },
				{ name = 'tube_down', x = 1067, z = 2845, facing = 0, },
				{ name = 'tube_down', x = 1182, z = 3034, facing = 0, },
				{ name = 'tube_down', x = 1441, z = 2987, facing = 1, },
				{ name = 'tube_down', x = 1476, z = 1933, facing = 0, },
				{ name = 'tube_down', x = 1573, z = 2067, facing = 0, },
				{ name = 'tube_down', x = 2901, z = 1486, facing = 0, },
				{ name = 'tube_down', x = 3330, z = 651, facing = 0, },
				{ name = 'tube', x = 1003, z = 2727, facing = 0, },
				{ name = 'tube', x = 1003, z = 2837, facing = 0, },
				{ name = 'tube', x = 1068, z = 2656, facing = 0, },
				{ name = 'tube', x = 1068, z = 2769, facing = 0, },
				{ name = 'tube', x = 1069, z = 2544, facing = 0, },
				{ name = 'tube', x = 1091, z = 2927, facing = 1, },
				{ name = 'tube', x = 1223, z = 2988, facing = 3, },
				{ name = 'tube', x = 1320, z = 2126, facing = 3, },				
				{ name = 'tube', x = 1336, z = 2987, facing = 3, },
				{ name = 'tube', x = 1412, z = 1816, facing = 0, },
				{ name = 'tube', x = 1412, z = 1925, facing = 0, },
				{ name = 'tube', x = 1413, z = 2035, facing = 0, },
				{ name = 'tube', x = 1477, z = 1858, facing = 0, },
				{ name = 'tube', x = 1478, z = 1744, facing = 0, },
				{ name = 'tube', x = 1485, z = 2015, facing = 3, },
				{ name = 'tube', x = 2903, z = 1345, facing = 0, },
				{ name = 'tube', x = 2992, z = 1250, facing = 3, },
				{ name = 'tube', x = 3084, z = 1049, facing = 0, },
				{ name = 'tube', x = 3084, z = 1158, facing = 0, },
				{ name = 'tube', x = 3084, z = 939, facing = 0, },
				{ name = 'tube', x = 3173, z = 844, facing = 3, },
				{ name = 'tube', x = 3266, z = 533, facing = 0, },
				{ name = 'tube', x = 3266, z = 643, facing = 0, },
				{ name = 'tube', x = 3266, z = 753, facing = 0, },
				{ name = 'tube', x = 3331, z = 462, facing = 0, },
				{ name = 'tube', x = 3331, z = 575, facing = 0, },
			},		

			aiConfig = {
				{
					startX = 2000,
					startZ = 200,
					aiLib = "NO AI",
					humanName = "Ally",
					allyTeam = 0,
					unlocks = {	},
					startUnits = {
						{ name = 'medikit', x = 1340, z = 3130, facing = 0, },
						{ name = 'medikit', x = 3017, z = 1188, facing = 0, },							
						{ name = 'euf_metalextractor_lvl1', x = 136, z = 136, facing = 0, },
						{ name = 'euf_metalextractor_lvl1', x = 168, z = 1784, facing = 0, },
						{ name = 'euf_metalextractor_lvl1', x = 1848, z = 1912, facing = 0, },
						{ name = 'euf_metalextractor_lvl1', x = 1928, z = 3848, facing = 0, },
						{ name = 'euf_metalextractor_lvl1', x = 2056, z = 328, facing = 0, },
						{ name = 'euf_metalextractor_lvl1', x = 2264, z = 1032, facing = 0, },
						{ name = 'euf_metalextractor_lvl1', x = 232, z = 344, facing = 0, },
						{ name = 'euf_metalextractor_lvl1', x = 2504, z = 3784, facing = 0, },
						{ name = 'euf_metalextractor_lvl1', x = 2552, z = 2008, facing = 0, },
						{ name = 'euf_metalextractor_lvl1', x = 2616, z = 312, facing = 0, },
						{ name = 'euf_metalextractor_lvl1', x = 3112, z = 3752, facing = 0, },
--						{ name = 'euf_metalextractor_lvl1', x = 3224, z = 248, facing = 0, },
						{ name = 'euf_metalextractor_lvl1', x = 344, z = 1576, facing = 0, },
						{ name = 'euf_metalextractor_lvl1', x = 3560, z = 3480, facing = 0, },
						{ name = 'euf_metalextractor_lvl1', x = 584, z = 2184, facing = 0, },
						{ name = 'euf_metalextractor_lvl2', x = 2856, z = 3064, facing = 0, },
						{ name = 'euf_metalextractor_lvl2', x = 872, z = 824, facing = 0, },
						{ name = 'euf_radar_lvl2', x = 2600, z = 480, facing = 0, },					
						{ name = 'euf_solar', x = 2400, z = 80, facing = 0, },
						{ name = 'euf_solar', x = 2400, z = 160, facing = 0, },
						{ name = 'euf_solar', x = 2480, z = 80, facing = 0, },
						{ name = 'euf_solar', x = 2480, z = 160, facing = 0, },	
						{ name = 'euf_solar', x = 2560, z = 80, facing = 0, },
						{ name = 'euf_solar', x = 2560, z = 160, facing = 0, },
						{ name = 'euf_solar', x = 2640, z = 80, facing = 0, },
						{ name = 'euf_solar', x = 2640, z = 160, facing = 0, },
						{ name = 'euf_marine', x = 2150, z = 450, facing = 2, commands = {{cmdID = planetUtilities.COMMAND.RAW_MOVE, pos = {500, 3500}, options = {"shift"}}, }, },
						{ name = 'euf_marine', x = 2200, z = 500, facing = 2, commands = {{cmdID = planetUtilities.COMMAND.RAW_MOVE, pos = {500, 3500}, options = {"shift"}}, }, },
						{ name = "converter", x = 3125, z = 290, facing = 0, },						
					},
					midgameUnits = {
						{	name = "euf_transport_mis",	x = 3125, z = 290, facing = 0, spawnRadius = 0, delay = 90*30, orbitalDrop = false, },						
					},					
				},
				{
					startX = 4000,
					startZ = 75,
					aiLib = "NO AI",
					humanName = "Enemy",
					unlocks = {},
					allyTeam = 1,
					commander = false,
					startUnits = {
						{ name = "bug_big", x = 4000, z = 500, facing = 0, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {3900, 1200}}, }, },
						{ name = "bug_big", x = 4350, z = 800, facing = 0, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {4000, 1000}}, }, difficultyAtLeast = 3, },						
						{ name = "bug_big", x = 4300, z = 700, facing = 0, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {4200, 1200}}, }, difficultyAtLeast = 4, },
						{ name = "bug_big", x = 4700, z = 350, facing = 0, commands = {{cmdID = planetUtilities.COMMAND.PATROL, pos = {4360, 1200}}, }, difficultyAtLeast = 4, },						
						{ name = "bug_med", x = 300, z = 3800, facing = 0, commands = {}, },	
						{ name = "bug_med", x = 1300, z = 1500, facing = 1, commands = {}, },	
						{ name = "bug_med", x = 1200, z = 1600, facing = 3, commands = {}, difficultyAtLeast = 3, },	
						{ name = 'bug_med', x = 2343, z = 3021, facing = 0, },
						{ name = 'bug_med', x = 2406, z = 1398, facing = 0, },
						{ name = 'bug_med', x = 3502, z = 2114, facing = 0, },
						{ name = 'bug_med', x = 3535, z = 3629, facing = 0, },
						{ name = 'bug_med', x = 4586, z = 3456, facing = 0, },
						{ name = 'bug_med', x = 532, z = 1767, facing = 0, },
						{ name = 'bug_med', x = 543, z = 328, facing = 0, },						
						{ name = "bug_larva", x = 700, z = 3000, facing = 2, commands = {}, },	
						{ name = "bug_larva", x = 800, z = 3200, facing = 0, commands = {}, difficultyAtLeast = 3, },	
						{ name = "bug_larva", x = 850, z = 3250, facing = 1, commands = {}, difficultyAtLeast = 4, },
						{ name = 'bug_larva', x = 1247, z = 1130, facing = 0, difficultyAtLeast = 3, },
						{ name = 'bug_larva', x = 1362, z = 963, facing = 0, difficultyAtLeast = 4, },
						{ name = 'bug_larva', x = 1429, z = 1190, facing = 0, },
						{ name = 'bug_larva', x = 1607, z = 2455, facing = 0, },
						{ name = 'bug_larva', x = 2709, z = 2692, facing = 0, difficultyAtLeast = 3, },
						{ name = 'bug_larva', x = 2805, z = 2537, facing = 0, difficultyAtLeast = 4, },
						{ name = 'bug_larva', x = 2965, z = 2704, facing = 0, },
						{ name = 'bug_larva', x = 3286, z = 1863, facing = 0, },
						{ name = 'bug_larva', x = 4387, z = 2203, facing = 0, difficultyAtLeast = 3, },
						{ name = 'bug_larva', x = 4630, z = 2291, facing = 0, difficultyAtLeast = 4, },
						{ name = 'bug_larva', x = 4719, z = 2100, facing = 0, },
					}
				},
			},
			defeatConditionConfig = {
				-- Indexed by allyTeam.
				[0] = {},
				[1] = {
					ignoreUnitLossDefeat = false,
					vitalCommanders = false,
					loseAfterSeconds = false,
					allyTeamLossObjectiveID = 2,
				},				
			},
			objectiveConfig = {
				[1] = {
					description = "Protect the Sarge",
				},
				[2] = {
					description = "Hunt down all those Xenosects",
				},				
			},
			bonusObjectiveConfig = {
				[1] = { -- Win by 10:00
					victoryByTime = 600,
					image = planetUtilities.ICON_OVERLAY.CLOCK,
					description = "Win by 10:00",
					experience = planetUtilities.BONUS_EXP,
				},
			},
		},
		completionReward = {
			experience = planetUtilities.MAIN_EXP,
			units = {	},
			modules = {},
			abilities = {},
			codexEntries = {}
		},
	}
	
	return planetData
end

return GetPlanet
