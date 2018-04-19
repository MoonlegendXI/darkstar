-----------------------------------
--
-- Zone: Dynamis-Bastok [D]
--
-----------------------------------
package.loaded["scripts/zones/Dynamis-Bastok_[D]/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/zones/Dynamis-Bastok_[D]/TextIDs");
-----------------------------------

function onInitialize(zone)
end;

function onZoneIn(player,prevZone)
    local cs = -1;
    player:setPos(116.482,0.994,-72.121,128);
    return cs;
end;

function onRegionEnter(player,region)
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;
