#ステージ2 レッドストーンセット

#tp
tp @s -245 27 -35 30 50
#タグ付け
tag @s add observation2
#アマスタ召喚
summon minecraft:armor_stand -245 27 -35 {Tags:["StageObservation2"],Marker:true,Invisible:true,NoGravity:true}
#スペクテイターモード
gamemode spectator @s

#レッドストーンブロック置く
execute as @e[tag=CentralControlSystem] at @s run setblock ~5 ~ ~ minecraft:redstone_block