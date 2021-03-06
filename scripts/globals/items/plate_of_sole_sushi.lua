-----------------------------------------
-- ID: 5149
-- Item: plate_of_sole_sushi
-- Food Effect: 30Min, All Races
-----------------------------------------
-- HP 20
-- Strength 5
-- Dexterity 6
-- Accuracy % 15
-- Ranged ACC % 15
-- Sleep Resist 1
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
    target:addStatusEffect(dsp.effects.FOOD,0,0,1800,5149);
end;

function onEffectGain(target, effect)
    target:addMod(MOD_HP, 20);
    target:addMod(MOD_STR, 5);
    target:addMod(MOD_DEX, 6);
    target:addMod(MOD_FOOD_ACCP, 15);
    target:addMod(MOD_FOOD_ACC_CAP, 72);
    target:addMod(MOD_FOOD_RACCP, 15);
    target:addMod(MOD_FOOD_RACC_CAP, 72);
    target:addMod(MOD_SLEEPRES, 1);
end;

function onEffectLose(target, effect)
    target:delMod(MOD_HP, 20);
    target:delMod(MOD_STR, 5);
    target:delMod(MOD_DEX, 6);
    target:delMod(MOD_FOOD_ACCP, 15);
    target:delMod(MOD_FOOD_ACC_CAP, 72);
    target:delMod(MOD_FOOD_RACCP, 15);
    target:delMod(MOD_FOOD_RACC_CAP, 72);
    target:delMod(MOD_SLEEPRES, 1);
end;
