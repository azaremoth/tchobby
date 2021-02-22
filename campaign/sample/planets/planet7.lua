--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Planet config

local function GetPlanet(planetUtilities, planetID)
	
	--local image = planetUtilities.planetImages[math.floor(math.random()*#planetUtilities.planetImages) + 1]
	local image = LUA_DIRNAME .. "images/planets/SS-20081007221420_12.png"
	
	local planetData = {
		predownloadMap = true, 
		name = "Apollyon",
		mapDisplay = {
			x = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][1]) or 1.80,
			y = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][2]) or 1.00,
			image = image,
			size = planetUtilities.PLANET_SIZE_MAP*1.1,
--			hintText = "Keep taking planets until you conquer the galaxy.",
--			hintSize = {402, 100},
		},
		infoDisplay = {
			image = image,
			size = planetUtilities.PLANET_SIZE_INFO,
			backgroundImage = planetUtilities.backgroundImages[math.floor(math.random()*#planetUtilities.backgroundImages) + 1],
			terrainType = "Desert",
			radius = "10850 km",
			primary = "Gamma Crucis",
			primaryType = "G8V",
			milRating = 1,
--			feedbackLink = "http://zero-k.info/Forum/Thread/24417",
			text = [[We were too late on Mars! The undead plague did already start to spread throughout the galaxy. They have found an anomaly on this planet. We expect them to tear another hell rift into our realm. This can not happen! Capture and hold the anomaly.]]		},
		tips = {
			{
				image = "unitpics/crystals.png",
				text = [[You have to keep the control point and your score/counter will drop until. The team which reaches zero points first wins.]]
			},
		},
		gameConfig = {
			-- gameName = "tcampaign $VERSION",
			gameName = "tcampaign 0.102",
			mapName = "Titan v3.1",
			missionStartscript = false,			
			playerConfig = {
				startX = 1800,
				startZ = 300,
				allyTeam = 0,
				startMetal = 500,
				startEnergy = 500,
				commanderParameters = {	},
				extraUnlocks = {
					'euf_aatower',
					'euf_factory',
					'euf_constructor_lvl2',
					'euf_metalextractor_lvl2',
					'euf_radar_lvl2',
					'euf_lasertower',
					'euf_raider',
					'euf_tank',
					'euf_aatank',
				},
				commander = false,
				startUnits = {
					{ name = 'euf_aatank', x = 1454, z = 800, facing = 0, },
					{ name = 'euf_aatank', x = 1847, z = 800, facing = 0, },
					{ name = 'euf_bazooka', x = 1100, z = 570, facing = 0, },
					{ name = 'euf_bazooka', x = 1120, z = 570, facing = 0, },
					{ name = 'euf_bazooka', x = 1140, z = 570, facing = 0, },
					{ name = 'euf_bazooka', x = 1160, z = 570, facing = 0, },
					{ name = 'euf_bazooka', x = 1180, z = 570, facing = 0, },
					{ name = 'euf_constructor', x = 879, z = 683, facing = 0, },
					{ name = 'euf_constructor', x = 967, z = 683, facing = 0, },
					{ name = 'euf_hover', x = 1460, z = 610, facing = 0, },
					{ name = 'euf_hover', x = 1860, z = 610, facing = 0, },
					{ name = 'euf_marine', x = 1120, z = 815, facing = 0, },
					{ name = 'euf_marine', x = 1140, z = 815, facing = 0, },
					{ name = 'euf_marine', x = 1160, z = 815, facing = 0, },
					{ name = 'euf_marine', x = 1180, z = 815, facing = 0, },
					{ name = 'euf_marine', x = 1200, z = 815, facing = 0, },
					{ name = 'euf_marine', x = 1220, z = 815, facing = 0, },
					{ name = 'euf_marine', x = 1240, z = 815, facing = 0, },
					{ name = 'euf_mlrs', x = 1654, z = 466, facing = 0, },
					{ name = 'euf_mlrs', x = 1757, z = 466, facing = 0, },
					{ name = 'euf_raider', x = 1600, z = 790, facing = 0, },
					{ name = 'euf_raider', x = 1660, z = 790, facing = 0, },
					{ name = 'euf_raider', x = 1720, z = 790, facing = 0, },
					{ name = 'euf_sarge', x = 1170, z = 685, facing = 0, },
					{ name = 'euf_sniper', x = 2170, z = 685, facing = 0, },
					{ name = 'euf_sniper', x = 1270, z = 685, facing = 0, },
					{ name = 'euf_tank', x = 1660, z = 610, facing = 0, },
				}
			},
			modoptions = {
				scoremode = "countdown",
				numberofcontrolpoints = 1,
				captureradius = 500,
				limitScore = 1000,
			},
			aiConfig = {
				{
					startX = 1900,
					startZ = 6200,
					startMetal = 1000,
					startEnergy = 1000,					
					aiLib = "Skirmish AI",
					humanName = "The Cursed",
					unlocks = {
					'tc_bonebeast',
					'tc_crawler',
					'tc_cursedhand',
					'tc_defender',
					'tc_enforcer',
					'tc_ghoul',
					'tc_gunner',
					'tc_heart_ai',
					'tc_kaboom',
					'tc_lich_ai',
					'tc_lich_sum',
					'tc_mage',
					'tc_metalextractor_lvl1',
					'tc_metalextractor_lvl2',
					'tc_necromancer',
					'tc_necromancer_sum',
					'tc_obelisk',
					'tc_obelisk_lvl2',
					'tc_pestilence',
					'tc_purgatory_ai',
					'tc_pyramid_ai',
					'tc_restless',
					'tc_seer',
					'tc_shade',
					'tc_skeleton',
					'tc_soulcage',
					'tc_soulstone',
					'tc_storage',
					'tc_undeadmarine_gun',
					'tc_undeadmarine_melee',
					'tc_witch',					
					},
					difficultyDependantUnlocks = {
						[2] = {"tc_tower"},
						[2] = {"tc_mancubus"},
						[2] = {"tc_spiderdemon"},
						[2] = {"tc_rictus"},
						[2] = {"tc_darkassembler"},						
						[2] = {"tc_redeemer"},	
						[2] = {"tc_blade"},	
						[3] = {"tc_seeker"},						
						[3] = {"tc_hellfire"},
						[3] = {"tc_acranius"},	
						[3] = {"tc_sledgehammer"},	
						[4] = {"tc_belial"},
					},
					allyTeam = 1,
					commander = false,
					startUnits = {		
						{ name = 'tc_belial', x = 6167, z = 2689, facing = 0, },
						{ name = 'tc_belial', x = 7698, z = 5281, facing = 0, },
						{ name = 'tc_bonebeast', x = 6279, z = 3053, facing = 0, },
						{ name = 'tc_bonebeast', x = 6365, z = 2688, facing = 0, },
						{ name = 'tc_defender', x = 4040, z = 6056, facing = 0, },
						{ name = 'tc_defender', x = 4232, z = 5864, facing = 0, },
						{ name = 'tc_defender', x = 4392, z = 5720, facing = 0, },
						{ name = 'tc_defender', x = 4728, z = 4568, facing = 0, },
						{ name = 'tc_defender', x = 5064, z = 4744, facing = 0, },
						{ name = 'tc_defender', x = 5560, z = 3416, facing = 0, },
						{ name = 'tc_defender', x = 5608, z = 1016, facing = 0, },
						{ name = 'tc_defender', x = 5688, z = 3192, facing = 0, },
						{ name = 'tc_defender', x = 5720, z = 1128, facing = 0, },
						{ name = 'tc_defender', x = 5944, z = 1864, facing = 0, },
						{ name = 'tc_defender', x = 6088, z = 1368, facing = 0, },
						{ name = 'tc_defender', x = 6344, z = 1688, facing = 0, },
						{ name = 'tc_defender', x = 6664, z = 360, facing = 0, },
						{ name = 'tc_defender', x = 6968, z = 2952, facing = 0, },
						{ name = 'tc_defender', x = 7224, z = 3448, facing = 0, },
						{ name = 'tc_defender', x = 7544, z = 5608, facing = 0, },
						{ name = 'tc_defender', x = 7816, z = 4760, facing = 0, },
						{ name = 'tc_defender', x = 7928, z = 648, facing = 0, },
						{ name = 'tc_defender', x = 7976, z = 6072, facing = 0, },
						{ name = 'tc_defender', x = 8248, z = 296, facing = 0, },
						{ name = 'tc_defender', x = 8440, z = 3976, facing = 0, },
						{ name = 'tc_defender', x = 8488, z = 5112, facing = 0, },
						{ name = 'tc_defender', x = 8536, z = 1880, facing = 0, },
						{ name = 'tc_ghoul', x = 5361, z = 4009, facing = 0, },
						{ name = 'tc_ghoul', x = 5417, z = 3890, facing = 0, },
						{ name = 'tc_ghoul', x = 5541, z = 3758, facing = 0, },
						{ name = 'tc_ghoul', x = 5578, z = 3641, facing = 0, },
						{ name = 'tc_heart_ai', x = 8418, z = 4569, facing = 0, },
						{ name = 'tc_heart_ai', x = 8563, z = 5585, facing = 0, },
						{ name = 'tc_hellfire', x = 5560, z = 4760, facing = 0, },
						{ name = 'tc_hellfire', x = 6088, z = 248, facing = 0, },
						{ name = 'tc_hellfire', x = 6728, z = 2312, facing = 0, },
						{ name = 'tc_hellfire', x = 6776, z = 4120, facing = 0, },
						{ name = 'tc_hellfire', x = 7192, z = 4744, facing = 0, },
						{ name = 'tc_hellfire', x = 7368, z = 3704, facing = 0, },
						{ name = 'tc_hellfire', x = 9096, z = 2920, facing = 0, },
						{ name = 'tc_hellfire', x = 9096, z = 3128, facing = 0, },
						{ name = 'tc_lich_ai', x = 7340, z = 5655, facing = 0, },
						{ name = 'tc_lich_ai', x = 8240, z = 2619, facing = 0, },
						{ name = 'tc_mancubus', x = 6070, z = 2814, facing = 0, },
						{ name = 'tc_mancubus', x = 6219, z = 4437, facing = 0, },
						{ name = 'tc_mancubus', x = 7955, z = 2905, facing = 0, },
						{ name = 'tc_metalextractor_lvl1', x = 4280, z = 6024, facing = 0, },
						{ name = 'tc_metalextractor_lvl1', x = 4856, z = 4600, facing = 0, },
						{ name = 'tc_metalextractor_lvl1', x = 5704, z = 3352, facing = 0, },
						{ name = 'tc_metalextractor_lvl1', x = 5704, z = 4216, facing = 0, },
						{ name = 'tc_metalextractor_lvl1', x = 5720, z = 920, facing = 0, },
						{ name = 'tc_metalextractor_lvl1', x = 6024, z = 1496, facing = 0, },
						{ name = 'tc_metalextractor_lvl1', x = 6328, z = 376, facing = 0, },
						{ name = 'tc_metalextractor_lvl1', x = 6520, z = 3080, facing = 0, },
						{ name = 'tc_metalextractor_lvl1', x = 6568, z = 5928, facing = 0, },
						{ name = 'tc_metalextractor_lvl1', x = 6696, z = 5032, facing = 0, },
						{ name = 'tc_metalextractor_lvl1', x = 6984, z = 1928, facing = 0, },
						{ name = 'tc_metalextractor_lvl1', x = 7000, z = 376, facing = 0, },
						{ name = 'tc_metalextractor_lvl1', x = 7272, z = 3128, facing = 0, },
						{ name = 'tc_metalextractor_lvl1', x = 7960, z = 216, facing = 0, },
						{ name = 'tc_metalextractor_lvl1', x = 8232, z = 568, facing = 0, },
						{ name = 'tc_metalextractor_lvl1', x = 8408, z = 2792, facing = 0, },
						{ name = 'tc_metalextractor_lvl1', x = 8488, z = 1560, facing = 0, },
						{ name = 'tc_metalextractor_lvl1', x = 8520, z = 920, facing = 0, },
						{ name = 'tc_metalextractor_lvl1', x = 8648, z = 2184, facing = 0, },
						{ name = 'tc_metalextractor_lvl2', x = 7224, z = 5928, facing = 0, },
						{ name = 'tc_metalextractor_lvl2', x = 8232, z = 5416, facing = 0, },
						{ name = 'tc_metalextractor_lvl2', x = 8392, z = 4296, facing = 0, },
						{ name = 'tc_metalextractor_lvl2', x = 8408, z = 5960, facing = 0, },
						{ name = 'tc_metalextractor_lvl2', x = 8472, z = 4792, facing = 0, },
						{ name = 'tc_metalextractor_lvl2', x = 8760, z = 5272, facing = 0, },
						{ name = 'tc_pitt', x = 8160, z = 2144, facing = 3, difficultyAtLeast = 3, },
						{ name = 'tc_pitt', x = 6666, z = 4700, facing = 1, difficultyAtLeast = 4, },
						{ name = 'tc_pitt', x = 8180, z = 840, facing = 1, difficultyAtLeast = 4, },						
						{ name = 'tc_purgatory_ai', x = 8650, z = 57, facing = 0, },
						{ name = 'tc_purgatory_ai', x = 9154, z = 2741, facing = 0, },
						{ name = 'tc_purgatory_ai', x = 9172, z = 6081, facing = 0, },
						{ name = 'tc_purgatory_ai', x = 9178, z = 1729, facing = 0, },
						{ name = 'tc_purgatory_ai', x = 9180, z = 1054, facing = 0, },
						{ name = 'tc_purgatory_ai', x = 9180, z = 3607, facing = 0, },
						{ name = 'tc_pyramid_ai', x = 7280, z = 3280, facing = 1, },
						{ name = 'tc_pyramid_ai', x = 7968, z = 2464, facing = 0, },
						{ name = 'tc_pyramid_ai', x = 8400, z = 5712, facing = 1, },
						{ name = 'tc_restless', x = 5488, z = 5569, facing = 0, },
						{ name = 'tc_restless', x = 6176, z = 720, facing = 0, },
						{ name = 'tc_restless', x = 6276, z = 4491, facing = 0, },
						{ name = 'tc_restless', x = 7695, z = 3534, facing = 0, },
						{ name = 'tc_restless', x = 7981, z = 5325, facing = 0, },
						{ name = 'tc_restless', x = 8165, z = 1350, facing = 0, },
						{ name = 'tc_seer', x = 5061, z = 4952, facing = 0, },
						{ name = 'tc_seer', x = 5950, z = 5810, facing = 0, },
						{ name = 'tc_seer', x = 5975, z = 2574, facing = 0, },
						{ name = 'tc_seer', x = 6074, z = 660, facing = 0, },
						{ name = 'tc_seer', x = 6174, z = 3965, facing = 0, },
						{ name = 'tc_seer', x = 7515, z = 1000875, facing = 0, },
						{ name = 'tc_seer', x = 8177, z = 4341, facing = 0, },
						{ name = 'tc_seer', x = 8177, z = 5482, facing = 0, },
						{ name = 'tc_seer', x = 8396, z = 2484, facing = 0, },
						{ name = 'tc_soulcage', x = 8256, z = 4568, facing = 0, },
						{ name = 'tc_soulcage', x = 8432, z = 5528, facing = 0, },
						{ name = 'tc_soulcage', x = 8560, z = 5736, facing = 0, },
						{ name = 'tc_soulcage', x = 8576, z = 4568, facing = 0, },
						{ name = 'tc_soulcage', x = 8688, z = 5528, facing = 0, },
						{ name = 'tc_soulstone', x = 7832, z = 888, facing = 0, },
						{ name = 'tc_soulstone', x = 7848, z = 5800, facing = 0, },
						{ name = 'tc_soulstone', x = 7912, z = 968, facing = 0, },
						{ name = 'tc_soulstone', x = 7928, z = 5720, facing = 0, },
						{ name = 'tc_soulstone', x = 7976, z = 3960, facing = 0, },
						{ name = 'tc_soulstone', x = 8008, z = 1064, facing = 0, },
						{ name = 'tc_soulstone', x = 8024, z = 4072, facing = 0, },
						{ name = 'tc_soulstone', x = 8072, z = 3960, facing = 0, },
						{ name = 'tc_soulstone', x = 8680, z = 648, facing = 0, },
						{ name = 'tc_soulstone', x = 8760, z = 728, facing = 0, },
						{ name = 'tc_soulstone', x = 8776, z = 600, facing = 0, },
						{ name = 'tc_spiderdemon', x = 6079, z = 4374, facing = 0, },
						{ name = 'tc_spiderdemon', x = 6141, z = 2982, facing = 0, },
						{ name = 'tc_spiderdemon', x = 6286, z = 2816, facing = 0, },
						{ name = 'tc_storage', x = 8752, z = 4944, facing = 0, },
						{ name = 'tc_storage', x = 8784, z = 4384, facing = 0, },
						{ name = 'tc_storage', x = 8800, z = 5760, facing = 0, },
						{ name = 'tc_tower', x = 6888, z = 4424, facing = 0, },
						{ name = 'tc_tower', x = 6984, z = 1800, facing = 0, },
						{ name = 'tc_tower', x = 7064, z = 3992, facing = 0, },
						{ name = 'tc_tower', x = 7080, z = 3112, facing = 0, },
						{ name = 'tc_tower', x = 7160, z = 5032, facing = 0, },
						{ name = 'tc_tower', x = 7208, z = 5288, facing = 0, },
						{ name = 'tc_tower', x = 7640, z = 536, facing = 0, },
						{ name = 'tc_tower', x = 8040, z = 3368, facing = 0, },
						{ name = 'tc_tower', x = 8072, z = 1368, facing = 0, },
						{ name = 'tc_tower', x = 8232, z = 5080, facing = 0, },
						{ name = 'tc_tower', x = 8344, z = 1160, facing = 0, },
						{ name = 'tc_undeadmarine_gun', x = 7950, z = 5186, facing = 0, },
						{ name = 'tc_undeadmarine_gun', x = 8009, z = 5113, facing = 0, },
						{ name = 'tc_undeadmarine_gun', x = 8013, z = 5020, facing = 0, },
						{ name = 'tc_undeadmarine_gun', x = 8087, z = 4973, facing = 0, },
						{ name = 'tc_undeadmarine_melee', x = 7898, z = 5105, facing = 0, },
						{ name = 'tc_undeadmarine_melee', x = 7955, z = 5022, facing = 0, },
						{ name = 'tc_undeadmarine_melee', x = 8000, z = 4943, facing = 0, },
						{ name = 'tc_witch_shield', x = 7280, z = 3200, facing = 0, },
						{ name = 'tc_witch_shield', x = 7296, z = 5936, facing = 0, },
						{ name = 'tc_witch_shield', x = 8480, z = 5968, facing = 0, },
					},
				midgameUnits = {
						{ name = 'tc_undeadmarine_gun', x = 6100, z = 2900, facing = 0, spawnRadius = 25, delay = 2*60*30, orbitalDrop = false, commands = {{cmdID = planetUtilities.COMMAND.FIGHT, pos = {4250, 3050}}, }, },
						{ name = 'tc_undeadmarine_gun', x = 6120, z = 2900, facing = 0, spawnRadius = 25, delay = 2*60*30, orbitalDrop = false, commands = {{cmdID = planetUtilities.COMMAND.FIGHT, pos = {4250, 3050}}, },},
						{ name = 'tc_undeadmarine_gun', x = 6140, z = 2900, facing = 0, spawnRadius = 25, delay = 2*60*30, orbitalDrop = false, commands = {{cmdID = planetUtilities.COMMAND.FIGHT, pos = {4250, 3050}}, }, },
						{ name = 'tc_undeadmarine_gun', x = 6160, z = 2900, facing = 0, spawnRadius = 25, delay = 2*60*30, orbitalDrop = false, commands = {{cmdID = planetUtilities.COMMAND.FIGHT, pos = {4250, 3050}}, }, },
						{ name = 'tc_undeadmarine_gun', x = 6180, z = 2900, facing = 0, spawnRadius = 25, delay = 2*60*30, orbitalDrop = false, commands = {{cmdID = planetUtilities.COMMAND.FIGHT, pos = {4250, 3050}}, }, },
						{ name = 'tc_undeadmarine_melee', x = 6200, z = 2950, facing = 0, spawnRadius = 25, delay = 2*60*30, orbitalDrop = false, commands = {{cmdID = planetUtilities.COMMAND.FIGHT, pos = {4250, 3050}}, }, },
						{ name = 'tc_undeadmarine_melee', x = 6220, z = 2950, facing = 0, spawnRadius = 25, delay = 2*60*30, orbitalDrop = false, commands = {{cmdID = planetUtilities.COMMAND.FIGHT, pos = {4250, 3050}}, }, },
						{ name = 'tc_undeadmarine_melee', x = 6240, z = 2950, facing = 0, spawnRadius = 25, delay = 2*60*30, orbitalDrop = false, commands = {{cmdID = planetUtilities.COMMAND.FIGHT, pos = {4250, 3050}}, }, },
						{ name = 'tc_undeadmarine_melee', x = 6260, z = 2950, facing = 0, spawnRadius = 25, delay = 2*60*30, orbitalDrop = false, commands = {{cmdID = planetUtilities.COMMAND.FIGHT, pos = {4250, 3050}}, }, },				
						{ name = 'tc_mancubus', x = 6280, z = 2950, facing = 0, spawnRadius = 25, delay = 2*60*30, orbitalDrop = false, commands = {{cmdID = planetUtilities.COMMAND.FIGHT, pos = {4250, 3050}}, }, },
						{ name = 'tc_mancubus', x = 6300, z = 2950, facing = 0, spawnRadius = 25, delay = 2*60*30, orbitalDrop = false, commands = {{cmdID = planetUtilities.COMMAND.FIGHT, pos = {4250, 3050}}, }, },	
						{ name = 'tc_spiderdemon', x = 6280, z = 2850, facing = 0, spawnRadius = 25, delay = 2*60*30, orbitalDrop = false, commands = {{cmdID = planetUtilities.COMMAND.FIGHT, pos = {4250, 3050}}, }, },
						{ name = 'tc_spiderdemon', x = 6300, z = 2850, facing = 0, spawnRadius = 25, delay = 2*60*30, orbitalDrop = false, commands = {{cmdID = planetUtilities.COMMAND.FIGHT, pos = {4250, 3050}}, }, },							
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
					description = "Hold the anomaly long enough or destroy all enemy units",
				},				
			},
			bonusObjectiveConfig = { },
		},
		completionReward = {
			experience = planetUtilities.MAIN_EXP,
			units = {
				'euf_factory',
				'euf_constructor_lvl2',
				'euf_metalextractor_lvl2',
				'euf_radar_lvl2',
				'euf_lasertower',
				'euf_raider',
				'euf_tank',
				'euf_aatank',
			},
			modules = {},
			abilities = {},
			codexEntries = {}
		},
	}
	
	return planetData
end

return GetPlanet