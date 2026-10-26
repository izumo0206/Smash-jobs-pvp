#効果
effect give @a[tag=Zwolf] minecraft:saturation 1 2 true
damage @e[tag=Zwolf,limit=1] 4 minecraft:player_attack
effect give @a[tag=Zwolf] minecraft:speed 2 1 true


#敵プレイヤーにペナルティ
execute as @a[tag=Zwolf,team=Blue] run effect give @a[team=Red] minecraft:slowness 3 0 true
execute as @a[tag=Zwolf,team=Red] run effect give @a[team=Blue] minecraft:slowness 3 0 true
execute as @a[tag=Zwolf,team=Blue] run effect give @a[team=Red] minecraft:blindness 3 0 true
execute as @a[tag=Zwolf,team=Red] run effect give @a[team=Blue] minecraft:blindness 3 0 true

scoreboard players set @a[tag=Zwolf] zwolfCD 200
scoreboard players set @a[tag=Zwolf] sneak 0