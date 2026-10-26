#ステージ2視察


#スペクテイト
execute as @a[gamemode=spectator,tag=observation2] at @s run spectate @e[tag=StageObservation2,sort=nearest,limit=1] @s


#最初の角度
execute as @e[tag=StageObservation2,scores={observation=1}] at @s run tp @s ~ ~ ~ 30 50

#時間経過
scoreboard players add @e[tag=StageObservation2] observation 1

#移動
execute as @e[type=minecraft:armor_stand,tag=StageObservation2] at @s run tp @s ~-0.1 ~-0.102 ~0.1 ~-0.4 ~-0.05

#戻る
execute as @e[scores={observation=199}] at @s as @a[tag=observation2,sort=nearest,limit=1] run gamemode adventure
execute as @e[scores={observation=199}] at @s as @a[tag=observation2,sort=nearest,limit=1] run tag @s remove observation2
execute as @e[scores={observation=199}] at @s as @a[sort=nearest,limit=1] run tp @s 5027 1 5011 90 0
#アマスタキル
kill @e[scores={observation=200..}]

#誰も視察してなかった場合レッドストーンブロック外す
execute unless entity @e[tag=observation2] as @e[tag=CentralControlSystem] at @s run schedule function main:waiting_place/observation/stage2_sub_sub 5t append