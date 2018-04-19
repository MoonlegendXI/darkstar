-----------------------------------
-- Area: Oldton_Movalpolos
--  NPC: Scrawled_Writing
-- Allows players to spawn NM Goblin Wolfman
-----------------------------------
require("scripts/zones/Oldton_Movalpolos/MobIDs");
require("scripts/globals/npc_util");
require("scripts/globals/status");

function onSpawn(npc)
  npc:setStatus(STATUS_DISAPPEAR);
end;

function onTrade(player,npc,trade)
    local x = npc:getXPos();
    local y = npc:getYPos();
    local z = npc:getZPos();
    local mob = GetMobByID(GOBLIN_WOLFMAN);
    -- Trade Goblin Drink
    if (GetMobAction(GOBLIN_WOLFMAN) == 0 and trade:hasItemQty(4541,1) and trade:getItemCount() == 1) then
        player:tradeComplete();
        SpawnMob(GOBLIN_WOLFMAN):updateClaim(player); -- Goblin Wolfman
        mob:setPos(x-1,y,z);
        npc:setStatus(STATUS_DISAPPEAR);
    end
end;

function onTrigger(player,npc)
end;
