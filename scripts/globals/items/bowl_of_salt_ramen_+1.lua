-----------------------------------------
-- ID: 6463
-- Item: bowl_of_salt_ramen_+1
-- Food Effect: 60Min, All Races
-----------------------------------------
-- DEX +6
-- VIT +6
-- AGI +6
-- Accuracy +6% (cap 95)
-- Ranged Accuracy +6% (cap 95)
-- Evasion +6% (cap 95)
-- Resist Slow +15
-----------------------------------------
require("scripts/globals/status");
-----------------------------------------

function onItemCheck(target)
    local result = 0;
    if (target:hasStatusEffect(dsp.effects.FOOD) == true or target:hasStatusEffect(dsp.effects.FIELD_SUPPORT_FOOD) == true) then
        result = 246;
    end
    return result;
end;

function onItemUse(target)
    target:addStatusEffect(dsp.effects.FOOD,0,0,3600,6463);
end;

-----------------------------------------
-- onEffectGain Action
-----------------------------------------

function onEffectGain(target,effect)
    target:addMod(MOD_DEX, 6);
    target:addMod(MOD_VIT, 6);
    target:addMod(MOD_AGI, 6);
    target:addMod(MOD_FOOD_ACCP, 6);
    target:addMod(MOD_FOOD_ACC_CAP, 95);
    target:addMod(MOD_FOOD_RACCP, 6);
    target:addMod(MOD_FOOD_RACC_CAP, 95);
    -- target:addMod(MOD_FOOD_EVAP, 6);
    -- target:addMod(MOD_FOOD_EVA_CAP, 95);
    target:addMod(MOD_SLOWRES, 15);
end;

function onEffectLose(target, effect)
    target:delMod(MOD_DEX, 6);
    target:delMod(MOD_VIT, 6);
    target:delMod(MOD_AGI, 6);
    target:delMod(MOD_FOOD_ACCP, 6);
    target:delMod(MOD_FOOD_ACC_CAP, 95);
    target:delMod(MOD_FOOD_RACCP, 6);
    target:delMod(MOD_FOOD_RACC_CAP, 95);
    -- target:delMod(MOD_FOOD_EVAP, 6);
    -- target:delMod(MOD_FOOD_EVA_CAP, 95);
    target:delMod(MOD_SLOWRES, 15);
end;
