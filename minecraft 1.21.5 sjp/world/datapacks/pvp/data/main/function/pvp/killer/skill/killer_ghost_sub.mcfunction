#KillerGhost実行

#タグ付け
execute as @a[tag=Killer,scores={KillerCooldown=..0,sneak=50..}] run tag @s add KillerGhost

#雷の魔法
execute at @a[tag=KillerGhost] run particle minecraft:end_rod ~ ~ ~ 0.5 0.5 0.5 1 50 normal

execute at @a[tag=KillerGhost] run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 1 1

execute at @a[tag=KillerGhost] run gamemode spectator @p[tag=Killer]

schedule function main:pvp/killer/skill/killer_ghost_sub_sub 5s

execute if entity @a[tag=KillerGhost] run effect give @a[team=Blue] minecraft:blindness 1 1

execute if entity @a[tag=KillerGhost,scores={SelectStatus=1}] run effect give @a[team=Blue] minecraft:blindness 3 1

#仕上げ
scoreboard players set @a[tag=KillerGhost] KillerCooldown 250
scoreboard players set @a[tag=KillerGhost] sneak 0
tag @a[tag=KillerGhost] remove KillerGhost
