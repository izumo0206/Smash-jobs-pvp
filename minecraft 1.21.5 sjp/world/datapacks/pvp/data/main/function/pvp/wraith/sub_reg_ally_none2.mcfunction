#味方（チームなし）本人が@s
execute at @s run kill @e[tag=WraithTarget_2,tag=WraithGate]
tag @e[tag=WraithTarget_2] remove WraithTarget_2
tag @s add WraithTarget_2

damage @s 4 player_attack by @p[tag=Wraith,limit=1]

execute at @s run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1
execute at @s run particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0 10

scoreboard players set @p[tag=Wraith,limit=1] wraith_type_2 2
scoreboard players set @p[tag=Wraith,limit=1] wraith_sneak_cd 20
scoreboard players set @p[tag=Wraith,limit=1] sneak 0
execute as @p[tag=Wraith,limit=1] run title @s actionbar {text:'[ 座標2 に味方を登録しました（4ダメージ） ]',color:'green'}
