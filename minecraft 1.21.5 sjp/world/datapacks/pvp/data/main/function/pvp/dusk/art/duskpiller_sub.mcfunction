function main:pvp/dusk/draw/select_target
execute at @e[tag=DuskCastTarget,limit=1] run summon minecraft:armor_stand ~ ~ ~ {Tags:['DuskArmorStand3','DuskNew','MTentity'],Marker:1b,Invisible:1b,NoGravity:1b}
scoreboard players operation @e[tag=DuskNew,limit=1] DuskOwner = @s DuskOwner
scoreboard players set @e[tag=DuskNew,limit=1] Piller 0
execute if entity @s[team=Red] run team join Red @e[tag=DuskNew,limit=1]
execute if entity @s[team=Blue] run team join Blue @e[tag=DuskNew,limit=1]
tag @e[tag=DuskNew,limit=1] remove DuskNew
function main:pvp/dusk/art/duskpillerbuild
playsound minecraft:block.stone.place master @s ~ ~ ~ 1 0.6
scoreboard players set @s DuskCooldown 100
function main:pvp/dusk/draw/finish
