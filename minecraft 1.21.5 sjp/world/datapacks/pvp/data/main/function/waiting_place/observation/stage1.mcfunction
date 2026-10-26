#ステージ1 レッドストーンセット

#tp
tp @s -47 65 -54 -40 50
#タグ付け
tag @s add observation1
#アマスタ召喚
summon minecraft:armor_stand -47 65 -54 {Tags:["StageObservation1"],Marker:true,Invisible:true,NoGravity:true}
#スペクテイターモード
gamemode spectator @s

#レッドストーンブロック置く
execute as @e[tag=CentralControlSystem] at @s run setblock ~5 ~ ~1 minecraft:redstone_block