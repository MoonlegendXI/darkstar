-----------------------------------
-- Area: Oldton Movalpolos (11)
--  Mob: Goblin Wolfman
-----------------------------------
require("scripts/zones/Oldton_Movalpolos/MobIDs");
require("scripts/globals/settings");
require("scripts/globals/status");


function onMobInitialize(mob)
end;

function onMobDeath(mob, player, isKiller)
end;

function onMobSpawn(mob) 
  mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
end;

function onMobFight(mob, target) 
end;

function onMobDespawn(mob)
    local npc = GetNPCByID(SCRAWLED_WRITING);
    npc:updateNPCHideTime(FORCE_SPAWN_QM_RESET_TIME);
    local randpos = math.random(1,3);
    switch (randpos): caseof
    {
        [1] = function (x) npc:setPos(-16.806,7.718,14.155); end,
        [2] = function (x) npc:setPos(-150.020,8.000,-251.543); end,
        [3] = function (x) npc:setPos(-19.355,12.053,-107.989); end,       
    }
end;