function main:pvp/dusk/draw/select_target
execute at @e[tag=DuskCastTarget,limit=1] run summon minecraft:armor_stand ~ ~ ~ {Tags:['DuskArmorStand2','DuskNew','MTentity'],Marker:1b,Invisible:1b,NoGravity:1b}
scoreboard players operation @e[tag=DuskNew,limit=1] DuskOwner = @s DuskOwner
scoreboard players set @e[tag=DuskNew,limit=1] Wall 0
execute if entity @s[team=Red] run team join Red @e[tag=DuskNew,limit=1]
execute if entity @s[team=Blue] run team join Blue @e[tag=DuskNew,limit=1]
data modify entity @e[tag=DuskNew,limit=1] Rotation set from entity @e[tag=DuskCastTarget,limit=1] Rotation
tag @e[tag=DuskNew,limit=1] remove DuskNew
function main:pvp/dusk/art/duskwallbuild

#従来の回復・採掘速度上昇・敵への採掘速度低下を維持
execute if entity @s[team=Blue] run effect give @a[team=Blue] minecraft:regeneration 3 7
execute if entity @s[team=Blue] run effect give @a[team=Blue] minecraft:haste 5 7
execute if entity @s[team=Blue] run effect give @a[team=Red,sort=furthest,limit=1] minecraft:mining_fatigue 3 7
execute if entity @s[team=Red] run effect give @a[team=Red] minecraft:regeneration 3 7
execute if entity @s[team=Red] run effect give @a[team=Red] minecraft:haste 5 7
execute if entity @s[team=Red] run effect give @a[team=Blue,sort=furthest,limit=1] minecraft:mining_fatigue 3 7
playsound minecraft:block.glass.place master @s ~ ~ ~ 1 0.8
scoreboard players set @s DuskCooldown 400
function main:pvp/dusk/draw/finish
