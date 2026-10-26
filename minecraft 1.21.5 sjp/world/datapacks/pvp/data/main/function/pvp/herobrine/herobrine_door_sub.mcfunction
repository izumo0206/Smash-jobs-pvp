#雷実行

#タグ付け
execute as @a[tag=Herobrine,scores={sneak=100..}] run tag @s add HerobrineDoor



execute at @a[tag=HerobrineDoor] run playsound minecraft:entity.ender_dragon.growl master @p ~ ~ ~ 0.8 0.5
execute at @a[tag=HerobrineDoor] run playsound minecraft:entity.arrow.hit_player master @p ~ ~ ~ 0.5 2
execute at @a[tag=HerobrineDoor] run particle minecraft:explosion



#激怒
give @a[tag=HerobrineDoor] minecraft:redstone[custom_name="真理",lore=["噓もまた真実"]]
execute at @e[tag=HerobrineDoor] run summon minecraft:lightning_bolt ~ ~ ~ {Tags:["MTentity"]}
execute at @e[tag=HerobrineDoor] run attribute @p[tag=HerobrineDoor] minecraft:movement_speed base set 0.2
execute at @e[tag=HerobrineDoor] run attribute @p[tag=HerobrineDoor] minecraft:attack_damage base set 11
schedule function main:pvp/herobrine/herobrine_door_sub_sub 5s


#仕上げ
scoreboard players set @e[tag=HerobrineDoor] sneak 0
tag @e[tag=HerobrineDoor] remove HerobrineDoor
