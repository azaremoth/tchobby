local DEV_NAME = ""
local STABLE_NAME = " (old)"

local stableSubnameMap = {
	{"Skirmish AI", "AI: Skirmish"},
}

local devSubnameMap = {
	{"Skirmish AI", "AI: Skirmish"},
}

local function GetAiSimpleName(name)
	if name == "Null AI" then
		return "Inactive AI"
	end
	if string.find(name, "Zombie Survival") then
		return name
	end
	local subnameMap = (WG.Chobby.Configuration:GetIsDevEngine() and devSubnameMap) or stableSubnameMap
	for i = 1, #subnameMap do
		if string.find(name, subnameMap[i][1]) then
			return subnameMap[i][2]
		end
	end
	return false
end

local simpleAiOrder = {
	["AI: Skirmish"] = -6,
	["Zombie Survival: Very Easy"] = -5,
	["Zombie Survival: Easy"] = -4,
	["Zombie Survival: Normal"] = -3,
	["Zombie Survival: Hard"] = -2,
	["Zombie Survival: Suicidal"] = -1,
	["Inactive AI"] = 6,
}

local aiTooltip = {
	["AI: Skirmish"] = "For playing skirmishes",
	["Zombie Survival: Very Easy"] = "Defeat waves of undead.",
	["Zombie Survival: Easy"] = "Defeat waves of undead.",
	["Zombie Survival: Normal"] = "Defeat waves of undead.",
	["Zombie Survival: Hard"] = "Defeat waves of undead.",
	["Zombie Survival: Suicidal"] = "Defeat waves of undead. You will probably die!",
	["Inactive AI"] = 6,
}

return {
	GetAiSimpleName = GetAiSimpleName,
	simpleAiOrder = simpleAiOrder,
	aiTooltip = aiTooltip
}
