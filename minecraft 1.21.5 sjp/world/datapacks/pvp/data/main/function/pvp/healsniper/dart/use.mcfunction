#麻酔弾を撃つ（実行者：回復スナイパー）。頭蓋骨のような弾が飛び、敵に当たると眠らせる
execute if score @s HsDartCD matches 1.. run return run function main:pvp/healsniper/dart/not_ready
execute store result score @s HsDartCD run data get storage main:healsniper param.dart.cd
execute anchored eyes positioned ^ ^ ^0.6 run summon item_display ~ ~ ~ {Tags:["HsDart","HsNew"],item:{id:"minecraft:skeleton_skull",count:1},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}
execute anchored eyes positioned ^ ^ ^0.6 run tp @e[type=item_display,tag=HsNew,limit=1] ~ ~ ~ ~ ~
execute if entity @s[team=Blue] run tag @e[type=item_display,tag=HsNew] add HsBlue
execute if entity @s[team=Red] run tag @e[type=item_display,tag=HsNew] add HsRed
execute store result score @e[type=item_display,tag=HsNew] HsLife run data get storage main:healsniper param.dart.range 4
tag @e[type=item_display,tag=HsNew] remove HsNew
playsound minecraft:entity.llama.spit player @a ~ ~ ~ 1 0.6
playsound minecraft:item.crossbow.shoot player @a ~ ~ ~ 0.6 1.6
