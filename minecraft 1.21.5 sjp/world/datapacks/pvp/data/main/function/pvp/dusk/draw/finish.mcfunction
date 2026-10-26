scoreboard players set @s DuskCast 0
tag @s remove DuskHasTarget
function main:pvp/dusk/draw/clear_target
tag @e[tag=DuskCastTarget] remove DuskCastTarget
