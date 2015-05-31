# COMMON VARIABLES
#------------------
var redstoneTransmissionCoil = <ThermalExpansion:material:2>;

var steamTurbineHousing      = <Railcraft:machine.alpha:1>;
var steamOven                = <Railcraft:machine.alpha:3>;
var manualSteamTrap          = <Railcraft:machine.alpha:9>;
var automatedSteamTrap       = <Railcraft:machine.alpha:10>;
var lowPressureBoilerTank    = <Railcraft:machine.beta:3>;
var highPressureBoilerTank   = <Railcraft:machine.beta:4>;
var hobbyistSteamEngine      = <Railcraft:machine.beta:7>;
var commercialSteamEngine    = <Railcraft:machine.beta:8>;
var industrialSteamEngine    = <Railcraft:machine.beta:9>;

var goldPlateGear            = <Railcraft:part.gear:0>;
var gildedIronIngot          = <Steamcraft:steamcraftIngot:3>;

# ORE DICTIONARY
#----------------

# Gears
var anyIronGear              = <ore:gearIron>;
var anySteelGear             = <ore:gearSteel>;

# Ingots
var anyRedstoneAlloyIngot    = <ore:ingotRedstoneAlloy>;

# Plates
var anyIronPlate             = <ore:plateIron>;
var anySteelPlate            = <ore:plateSteel>;

# Add Steel Gears to Ore Dictionary
anySteelGear.add(<Railcraft:part.gear:2>);

# Add Plates to Ore Dictionary
anyIronPlate.add(<Railcraft:part.plate:0>);
anySteelPlate.add(<Railcraft:part.plate:1>);

# RECIPE TWEAKS
#---------------

# Tweak Steam Engines to be Consistent with Dynamos
recipes.removeShaped(hobbyistSteamEngine);
recipes.addShaped(hobbyistSteamEngine, [
    [null,            redstoneTransmissionCoil, null],
    [goldPlateGear,   gildedIronIngot,          goldPlateGear],
    [gildedIronIngot, anyRedstoneAlloyIngot,    gildedIronIngot]]);

recipes.removeShaped(commercialSteamEngine);
recipes.addShaped(commercialSteamEngine, [
    [null,          redstoneTransmissionCoil, null],
    [anyIronGear,   anyIronPlate,             anyIronGear],
    [anyIronPlate,  anyRedstoneAlloyIngot,    anyIronPlate]]);

recipes.removeShaped(industrialSteamEngine);
recipes.addShaped(industrialSteamEngine, [
    [null,          redstoneTransmissionCoil, null],
    [anySteelGear,  anySteelPlate,            anySteelGear],
    [anySteelPlate, anyRedstoneAlloyIngot,    anySteelPlate]]);
