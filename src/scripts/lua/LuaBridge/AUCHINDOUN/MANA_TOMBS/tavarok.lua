--?!MAP=557
assert( include("manatombs.lua") , "Failed to load manatombs.lua")
local mod = require("DUNGEON_AUCHINDOUN.INSTANCE_MANATOMBS")
assert(mod)
module(mod._NAME..".TAVAROK",package.seeall)
local self = getfenv(1)

WorldDBQuery("DELETE FROM ai_agents WHERE entry = 18343;")

function OnCombat(unit,_,mAggro)
	self[tostring(unit)] = {
		arcing = math.random(5,10),
		quake = math.random(10,20),
		prison = math.random(30,40),
		isHeroic = (mAggro:IsPlayer() and mAggro:IsHeroic() )
	}
	unit:RegisterAIUpdateEvent(1000)
end
function OnWipe(unit)
	unit:RemoveAIUpdateEvent()
	self[tostring(unit)] = nil
end
function AIUpdate(unit)
	if(unit:IsCasting() ) then return end
	if(unit:GetNextTarget() == nil) then
		unit:WipeThreatList()
	end
	local args = self[tostring(unit)]
	args.arcing = args.arcing - 1
	args.quake = args.quake - 1
	args.prison = args.prison - 1
	if(args.prison <= 0) then
		local target = unit:GetRandomEnemy()
		unit:FullCastSpellOnTarget(32361,target)
		args.prison = math.random(30,40)
	elseif(args.quake <= 0) then
		unit:FullCastSpell(33919)
		args.quake = math.random(20,30)
	elseif(args.arcing <= 0) then
		if(args.isHeroic) then
			unit:FullCastSpellOnTarget(38761,unit:GetMainTank())
		else
			unit:FullCastSpellOnTarget(8374,unit:GetMainTank())
		end
		args.arcing = math.random(10,15)
	end
end

RegisterUnitEvent(18343,1,OnCombat)
RegisterUnitEvent(18343,2,OnWipe)
RegisterUnitEvent(18343,21,AIUpdate)