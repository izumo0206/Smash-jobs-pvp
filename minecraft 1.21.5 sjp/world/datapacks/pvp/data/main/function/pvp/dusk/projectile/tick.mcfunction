particle minecraft:squid_ink ~ ~ ~ 0 0 0 0 1 force
tag @s add DuskProjectileCurrent
execute if entity @s[team=Red] positioned ~ ~-0.8 ~ if entity @a[team=Blue,distance=..1.25] run return run function main:pvp/dusk/projectile/hit_red
execute if entity @s[team=Blue] positioned ~ ~-0.8 ~ if entity @a[team=Red,distance=..1.25] run return run function main:pvp/dusk/projectile/hit_blue
execute unless block ~ ~ ~ #minecraft:replaceable run return run kill @s
scoreboard players add @s DuskRange 1
execute if score @s DuskRange matches 11.. run return run kill @s
tp @s ^ ^ ^1
tag @s remove DuskProjectileCurrent
