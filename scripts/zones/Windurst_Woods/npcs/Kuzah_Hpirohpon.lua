-----------------------------------
-- Area: Windurst Woods
--  NPC: Kuzah Hpirohpon
-- Guild Merchant NPC: Clothcrafting Guild
-- !pos -80.068 -3.25 -127.686 241
-----------------------------------
package.loaded["scripts/zones/Windurst_Woods/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/zones/Windurst_Woods/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    if (player:sendGuild(5152,6,21,0)) then
        player:showText(npc,KUZAH_HPIROHPON_DIALOG);
    end
end;

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

