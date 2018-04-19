-----------------------------------
--
-- Zone: Dynamis-Windurst [D]
--
-----------------------------------
package.loaded["scripts/zones/Dynamis-Windurst_[D]/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/zones/Dynamis-Windurst_[D]/TextIDs");
-----------------------------------

function onInitialize(zone)
end;

function onZoneIn(player,prevZone)
    local cs = -1;
    player:setPos(-221.988,1.000,-120.184,0);
    return cs;
end;

function onRegionEnter(player,region)
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;
