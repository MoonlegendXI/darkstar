-----------------------------------
--
-- Zone: Dynamis-Jeuno [D]
--
-----------------------------------
package.loaded["scripts/zones/Dynamis-Jeuno_[D]/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/zones/Dynamis-Jeuno_[D]/TextIDs");
-----------------------------------

function onInitialize(zone)
end;

function onZoneIn(player,prevZone)
    local cs = -1;
    player:setPos(48.930,10.002,-71.032,195);
    return cs;
end;

function onRegionEnter(player,region)
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;
