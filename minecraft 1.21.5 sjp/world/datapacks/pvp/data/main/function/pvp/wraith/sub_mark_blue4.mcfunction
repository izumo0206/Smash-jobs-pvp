#敵（Red）本人が@s
execute at @s run kill @e[tag=WraithTarget_Blue_4,tag=WraithGate]
tag @e[tag=WraithTarget_Blue_4] remove WraithTarget_Blue_4
tag @s add WraithTarget_Blue_4

execute at @s run playsound minecraft:entity.warden.heartbeat master @a ~ ~ ~ 1.5 1
execute at @s run particle minecraft:soul ~ ~1 ~ 0.3 0.5 0.3 0.05 15

scoreboard players set @p[tag=Wraith,team=Blue,limit=1] wraith_type_4 1
scoreboard players set @p[tag=Wraith,team=Blue,limit=1] wraith_mark_4 400
execute as @p[tag=Wraith,team=Blue,limit=1] run title @s actionbar {text:'[ 座標4 に敵を刻印しました（20秒） ]',color:'red'}
