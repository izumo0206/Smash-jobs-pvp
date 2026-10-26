function main:pvp/dusk/draw/select_target
tag @s add DuskCurrent
tag @s remove DuskFortressExists
execute as @e[tag=DuskArmorStand1] if score @s DuskOwner = @a[tag=DuskCurrent,limit=1] DuskOwner run tag @a[tag=DuskCurrent,limit=1] add DuskFortressExists
execute if entity @s[tag=DuskFortressExists] run return run function main:pvp/dusk/art/duskfortress_exists

execute at @e[tag=DuskCastTarget,limit=1] run summon minecraft:armor_stand ~ ~ ~ {Tags:['DuskArmorStand1','DuskNew','MTentity'],Marker:1b,Invisible:1b,NoGravity:1b}
scoreboard players operation @e[tag=DuskNew,limit=1] DuskOwner = @s DuskOwner
scoreboard players set @e[tag=DuskNew,limit=1] Fortress 0
execute if entity @s[team=Red] run team join Red @e[tag=DuskNew,limit=1]
execute if entity @s[team=Blue] run team join Blue @e[tag=DuskNew,limit=1]
data modify entity @e[tag=DuskNew,limit=1] Rotation set from entity @e[tag=DuskCastTarget,limit=1] Rotation
tag @e[tag=DuskNew,limit=1] remove DuskNew
function main:pvp/dusk/art/duskfortressbuild
playsound minecraft:block.stone.place master @s ~ ~ ~ 1 0.8
scoreboard players set @s DuskCooldown 150
function main:pvp/dusk/draw/finish
tag @s remove DuskCurrent
tag @s remove DuskFortressExists
