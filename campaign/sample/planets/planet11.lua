--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Planet config

local function GetPlanet(planetUtilities, planetID)
	
	--local image = planetUtilities.planetImages[math.floor(math.random()*#planetUtilities.planetImages) + 1]
	local image = LUA_DIRNAME .. "images/planets/tundra03.png"
	
	local planetData = {
		predownloadMap = true,
--		startingPlanet = true,
		name = "Cold death",
		mapDisplay = {
			x = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][1]) or 1.80,
			y = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][2]) or 1.00,
			image = image,
			size = planetUtilities.PLANET_SIZE_MAP*0.7,
--			hintText = "Keep taking planets until you conquer the galaxy.",
--			hintSize = {402, 100},
		},
		infoDisplay = {
			image = image,
			size = planetUtilities.PLANET_SIZE_INFO,
			backgroundImage = planetUtilities.backgroundImages[math.floor(math.random()*#planetUtilities.backgroundImages) + 1],
			terrainType = "Iceworld",
			radius = "7450 km",
			primary = "Beleth",
			primaryType = "Crucis system",
			milRating = 1,
--			feedbackLink = "http://zero-k.info/Forum/Thread/24417",
			text = [[The Cursed have established bases here. We will destroy all of them!]] },
		tips = {		},
		gameConfig = {
			gameName = "tcampaign $VERSION",
			-- gameName = "tcampaign 0.103",
			mapName = "Iceland_v1",
			missionStartscript = false,			
			playerConfig = {
				startX = 1650,
				startZ = 6700,
				allyTeam = 0,
				startMetal = 1000,
				startEnergy = 1000,
				commanderParameters = {	},
				-- To be adapted
				extraUnlocks = {

				},
				commander = false,
				startUnits = {
					{ name = 'euf_bazooka', x = 1467.59924, z = 6193.72266, facing = 2, },
					{ name = 'euf_bazooka', x = 1559.66345, z = 6136.88672, facing = 2, },
					{ name = 'euf_bazooka', x = 1945.21924, z = 5869.02197, facing = 2, },
					{ name = 'euf_bazooka', x = 2002.31091, z = 5817.06299, facing = 2, },
					{ name = 'euf_constructor', x = 1395.81238, z = 6739.39697, facing = 2, },
					{ name = 'euf_constructor', x = 1775.1947, z = 6701.93555, facing = 2, },
					{ name = 'euf_marine', x = 1276.08069, z = 5990.6167, facing = 2, },
					{ name = 'euf_marine', x = 1971.07739, z = 5449.56982, facing = 2, },
					{ name = 'euf_paladin', x = 1502.46851, z = 5869.23633, facing = 2, },
					{ name = 'euf_paladin', x = 1766.19116, z = 5697.19434, facing = 2, },
					{ name = 'euf_priest', x = 1486.83862, z = 5997.41455, facing = 2, },
					{ name = 'euf_priest', x = 1884.81323, z = 5692.25635, facing = 2, },
					{ name = 'euf_pyro', x = 1391.07666, z = 5918.44434, facing = 2, },
					{ name = 'euf_pyro', x = 1838.97266, z = 5581.6001, facing = 2, },
					{ name = 'euf_sarge_lvl1', x = 1623.28906, z = 6693.81885, facing = 2, },
					{ name = 'euf_sniper', x = 1709.9939, z = 5868.77734, facing = 2, },
				}
			},
			modoptions = { },
			aiConfig = {
				{
					startX = 6100,
					startZ = 1600,
					startMetal = 2000,
					startEnergy = 2000,
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
					'tc_teeth',
					'tc_teeth_rotated',
					'tc_teeth_rotated2',
					'tc_tower',
					'tc_tower_survival',
					'tc_undeadmarine_gun',
					'tc_undeadmarine_melee',
					'tc_wall_lvl2',
					'tc_witch',
					'tc_witch_shield',
					},
					allyTeam = 1,
					commander = false,
					startUnits = {
						{ name = 'tc_crawler', x = 6433.73047, z = 4014.27075, facing = 0, },
						{ name = 'tc_crawler', x = 7458.61035, z = 6916.31641, facing = 0, },
						{ name = 'tc_darkassembler', x = 6528, z = 6352, facing = 0, },
						{ name = 'tc_defender_survival', x = 5784, z = 6392, facing = 0, },
						{ name = 'tc_defender_survival', x = 6120, z = 6680, facing = 0, },
						{ name = 'tc_defender_survival', x = 6312, z = 7064, facing = 0, },
						{ name = 'tc_defender_survival', x = 6392, z = 5880, facing = 0, },
						{ name = 'tc_defender', x = 5720, z = 1352, facing = 0, },
						{ name = 'tc_defender', x = 5864, z = 2056, facing = 0, },
						{ name = 'tc_defender', x = 6248, z = 2616, facing = 0, },
						{ name = 'tc_defender', x = 6312, z = 872, facing = 0, },
						{ name = 'tc_defender', x = 6792, z = 2136, facing = 0, },
						{ name = 'tc_defender', x = 7096, z = 1272, facing = 0, },
						{ name = 'tc_defender', x = 7368, z = 1864, facing = 0, },
						{ name = 'tc_ghoul', x = 4498.12891, z = 2217.47412, facing = 0, },
						{ name = 'tc_ghoul', x = 4532.70508, z = 6288.06348, facing = 0, },
						{ name = 'tc_ghoul', x = 5045.58301, z = 4334.0096, facing = 0, },
						{ name = 'tc_ghoul', x = 5341.40625, z = 6667.65918, facing = 0, },
						{ name = 'tc_ghoul', x = 6037.70459, z = 5560.28369, facing = 0, },
						{ name = 'tc_ghoul', x = 6479.58594, z = 3053.73242, facing = 0, },
						{ name = 'tc_ghoul', x = 7141.82275, z = 6059.88379, facing = 0, },
						{ name = 'tc_shade', x = 7169.96045, z = 3196.02734, facing = 0, },
						{ name = 'tc_hellfire', x = 6008, z = 2456, facing = 0, },
						{ name = 'tc_hellfire', x = 6248, z = 4008, facing = 0, },
						{ name = 'tc_hellfire', x = 6440, z = 7192, facing = 0, },
						{ name = 'tc_hellfire', x = 6600, z = 6024, facing = 0, },
						{ name = 'tc_metalextractor_lvl1', x = 6376, z = 6472, facing = 0, },
						{ name = 'tc_metalextractor_lvl1', x = 6760, z = 6968, facing = 0, },
						{ name = 'tc_metalextractor_lvl1', x = 6824, z = 3656, facing = 0, },
						{ name = 'tc_metalextractor_lvl1', x = 6920, z = 6344, facing = 0, },
						{ name = 'tc_metalextractor_lvl1', x = 6952, z = 3096, facing = 0, },
						{ name = 'tc_metalextractor_lvl1', x = 7400, z = 2616, facing = 0, },
						{ name = 'tc_metalextractor_lvl1', x = 7432, z = 3048, facing = 0, },
						{ name = 'tc_metalextractor_lvl2', x = 6088, z = 1160, facing = 0, },
						{ name = 'tc_metalextractor_lvl2', x = 6152, z = 2264, facing = 0, },
						{ name = 'tc_metalextractor_lvl2', x = 7048, z = 1576, facing = 0, },
						{ name = 'tc_pitt', x = 6048, z = 1584, facing = 0, },
						{ name = 'tc_pyramid_ai', x = 6480, z = 6752, facing = 0, },
						{ name = 'tc_pyramid_ai', x = 6512, z = 2048, facing = 0, },
						{ name = 'tc_restless', x = 6116.90771, z = 1362.95117, facing = 0, },
						{ name = 'tc_restless', x = 6221.46631, z = 6515.52539, facing = 0, },
						{ name = 'tc_restless', x = 6250.16211, z = 2155.03906, facing = 0, },
						{ name = 'tc_restless', x = 6887.63086, z = 6155.4541, facing = 0, },
						{ name = 'tc_restless', x = 6980.86719, z = 6662.27051, facing = 0, },
						{ name = 'tc_restless', x = 7140.90088, z = 1746.55334, facing = 0, },
						{ name = 'tc_seeker', x = 4348.98633, z = 5408.75488, facing = 0, },
						{ name = 'tc_seeker', x = 5172.04102, z = 3939.29541, facing = 0, },
						{ name = 'tc_seer', x = 5854.17529, z = 2267.04297, facing = 0, },
						{ name = 'tc_seer', x = 6251.54199, z = 6897.35938, facing = 0, },
						{ name = 'tc_seer', x = 6316.0918, z = 6042.53613, facing = 0, },
						{ name = 'tc_seer', x = 7232.21484, z = 1622.2373, facing = 0, },
						{ name = 'tc_soulcage', x = 6336, z = 1400, facing = 0, },
						{ name = 'tc_soulcage', x = 6544, z = 1288, facing = 0, },
						{ name = 'tc_soulcage', x = 6560, z = 1528, facing = 0, },
						{ name = 'tc_soulstone', x = 6040, z = 1912, facing = 0, },
						{ name = 'tc_soulstone', x = 6088, z = 2040, facing = 0, },
						{ name = 'tc_soulstone', x = 6136, z = 1912, facing = 0, },
						{ name = 'tc_soulstone', x = 6664, z = 6520, facing = 0, },
						{ name = 'tc_soulstone', x = 6712, z = 6648, facing = 0, },
						{ name = 'tc_soulstone', x = 6760, z = 6520, facing = 0, },
						{ name = 'tc_soulstone', x = 6872, z = 1784, facing = 0, },
						{ name = 'tc_soulstone', x = 6952, z = 1848, facing = 0, },
						{ name = 'tc_soulstone', x = 7064, z = 6456, facing = 0, },
						{ name = 'tc_soulstone', x = 7096, z = 6568, facing = 0, },
						{ name = 'tc_soulstone', x = 7176, z = 6472, facing = 0, },
						{ name = 'tc_storage', x = 6320, z = 1104, facing = 0, },
						{ name = 'tc_storage', x = 6832, z = 1392, facing = 0, },
						{ name = 'tc_tower', x = 6296, z = 6776, facing = 0, },
						{ name = 'tc_tower', x = 6456, z = 6152, facing = 0, },
						{ name = 'tc_tower', x = 6520, z = 2376, facing = 0, },
						{ name = 'tc_tower', x = 7160, z = 2024, facing = 0, },
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
				'euf_hover',
			},
			modules = {},
			abilities = {},
			codexEntries = {}
		},
	}
	
	return planetData
end

return GetPlanet
