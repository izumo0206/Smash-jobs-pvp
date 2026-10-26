#E実行

execute if entity @a[tag=Ashe] run clear @p

execute as @a[tag=Ashe] run tag @s add AsheE

execute at @a[tag=AsheE] run playsound minecraft:entity.parrot.fly master @s ~ ~ ~ 1 1 1

execute if entity @a[team=Blue,tag=AsheE] run execute at @r[team=Red,limit=1] run summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,Tags:["asheEblue","MTentity"],CustomName:'{"text":"スカウトホーク","color":"aqua"},',CustomNameVisible:true,Glowing:false,NoGravity:true}
execute if entity @a[team=Red,tag=AsheE] run execute at @r[team=Blue,limit=1] run summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,Tags:["asheEred","MTentity"],CustomName:'{"text":"スカウトホーク","color":"aqua"},',CustomNameVisible:true,Glowing:false,NoGravity:true}

execute as @a[tag=Ashe] run effect give @s minecraft:regeneration 10 1

schedule function main:pvp/ashe/ashe_e_sub 180

scoreboard players set @a[tag=AsheE] sneak 0
tag @a[tag=AsheE] remove AsheE

give @p minecraft:diamond_boots[attribute_modifiers=[{"type":"armor","amount":0,"operation":"add_value","slot":"armor","id":"2"}],custom_name="タップダンサー",trim={"material":"diamond","pattern":"dune"},unbreakable={}]
item replace entity @p armor.feet from entity @p container.0
clear @p minecraft:diamond_boots 1
