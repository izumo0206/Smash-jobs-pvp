#転移実行（execute_tp）
scoreboard objectives add wraith_exit dummy

tag @e remove WraithCurrentIn
tag @e remove WraithCurrentOut

#Redチーム祭司の場合の入口Entity特定
execute if entity @s[team=Red] if score @s wraith_ent matches 0 run tag @s add WraithCurrentIn
execute if entity @s[team=Red] if score @s wraith_ent matches 1 run tag @e[tag=WraithTarget_Red_1,limit=1] add WraithCurrentIn
execute if entity @s[team=Red] if score @s wraith_ent matches 2 run tag @e[tag=WraithTarget_Red_2,limit=1] add WraithCurrentIn
execute if entity @s[team=Red] if score @s wraith_ent matches 3 run tag @e[tag=WraithTarget_Red_3,limit=1] add WraithCurrentIn
execute if entity @s[team=Red] if score @s wraith_ent matches 4 run tag @e[tag=WraithTarget_Red_4,limit=1] add WraithCurrentIn

#Blueチーム祭司の場合の入口Entity特定
execute if entity @s[team=Blue] if score @s wraith_ent matches 0 run tag @s add WraithCurrentIn
execute if entity @s[team=Blue] if score @s wraith_ent matches 1 run tag @e[tag=WraithTarget_Blue_1,limit=1] add WraithCurrentIn
execute if entity @s[team=Blue] if score @s wraith_ent matches 2 run tag @e[tag=WraithTarget_Blue_2,limit=1] add WraithCurrentIn
execute if entity @s[team=Blue] if score @s wraith_ent matches 3 run tag @e[tag=WraithTarget_Blue_3,limit=1] add WraithCurrentIn
execute if entity @s[team=Blue] if score @s wraith_ent matches 4 run tag @e[tag=WraithTarget_Blue_4,limit=1] add WraithCurrentIn

#Redチーム祭司の場合の出口Entity特定
execute if entity @s[team=Red] if score @s wraith_exit matches 0 run tag @s add WraithCurrentOut
execute if entity @s[team=Red] if score @s wraith_exit matches 1 run tag @e[tag=WraithTarget_Red_1,limit=1] add WraithCurrentOut
execute if entity @s[team=Red] if score @s wraith_exit matches 2 run tag @e[tag=WraithTarget_Red_2,limit=1] add WraithCurrentOut
execute if entity @s[team=Red] if score @s wraith_exit matches 3 run tag @e[tag=WraithTarget_Red_3,limit=1] add WraithCurrentOut
execute if entity @s[team=Red] if score @s wraith_exit matches 4 run tag @e[tag=WraithTarget_Red_4,limit=1] add WraithCurrentOut

#Blueチーム祭司の場合の出口Entity特定
execute if entity @s[team=Blue] if score @s wraith_exit matches 0 run tag @s add WraithCurrentOut
execute if entity @s[team=Blue] if score @s wraith_exit matches 1 run tag @e[tag=WraithTarget_Blue_1,limit=1] add WraithCurrentOut
execute if entity @s[team=Blue] if score @s wraith_exit matches 2 run tag @e[tag=WraithTarget_Blue_2,limit=1] add WraithCurrentOut
execute if entity @s[team=Blue] if score @s wraith_exit matches 3 run tag @e[tag=WraithTarget_Blue_3,limit=1] add WraithCurrentOut
execute if entity @s[team=Blue] if score @s wraith_exit matches 4 run tag @e[tag=WraithTarget_Blue_4,limit=1] add WraithCurrentOut

#チーム未所属（テスト時など）のフォールバック
execute unless entity @s[team=Red] unless entity @s[team=Blue] if score @s wraith_ent matches 0 run tag @s add WraithCurrentIn
execute unless entity @s[team=Red] unless entity @s[team=Blue] if score @s wraith_ent matches 1 run tag @e[tag=WraithTarget_1,limit=1] add WraithCurrentIn
execute unless entity @s[team=Red] unless entity @s[team=Blue] if score @s wraith_ent matches 2 run tag @e[tag=WraithTarget_2,limit=1] add WraithCurrentIn
execute unless entity @s[team=Red] unless entity @s[team=Blue] if score @s wraith_ent matches 3 run tag @e[tag=WraithTarget_3,limit=1] add WraithCurrentIn
execute unless entity @s[team=Red] unless entity @s[team=Blue] if score @s wraith_ent matches 4 run tag @e[tag=WraithTarget_4,limit=1] add WraithCurrentIn

execute unless entity @s[team=Red] unless entity @s[team=Blue] if score @s wraith_exit matches 0 run tag @s add WraithCurrentOut
execute unless entity @s[team=Red] unless entity @s[team=Blue] if score @s wraith_exit matches 1 run tag @e[tag=WraithTarget_1,limit=1] add WraithCurrentOut
execute unless entity @s[team=Red] unless entity @s[team=Blue] if score @s wraith_exit matches 2 run tag @e[tag=WraithTarget_2,limit=1] add WraithCurrentOut
execute unless entity @s[team=Red] unless entity @s[team=Blue] if score @s wraith_exit matches 3 run tag @e[tag=WraithTarget_3,limit=1] add WraithCurrentOut
execute unless entity @s[team=Red] unless entity @s[team=Blue] if score @s wraith_exit matches 4 run tag @e[tag=WraithTarget_4,limit=1] add WraithCurrentOut

#同一対象判定（同一Entityなら不発キャンセル）
execute if entity @e[tag=WraithCurrentIn,tag=WraithCurrentOut] run title @s actionbar {text:'同一対象への転移はできません',color:'red'}
execute if entity @e[tag=WraithCurrentIn,tag=WraithCurrentOut] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5
execute if entity @e[tag=WraithCurrentIn,tag=WraithCurrentOut] run tag @e remove WraithCurrentIn
execute if entity @e[tag=WraithCurrentIn,tag=WraithCurrentOut] run tag @e remove WraithCurrentOut
execute if entity @e[tag=WraithCurrentIn,tag=WraithCurrentOut] run scoreboard players set @s wraith_ent -1
execute if entity @e[tag=WraithCurrentIn,tag=WraithCurrentOut] run return 0

#存在確認
execute unless entity @e[tag=WraithCurrentIn] run title @s actionbar {text:'入口対象が存在しません',color:'red'}
execute unless entity @e[tag=WraithCurrentIn] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5
execute unless entity @e[tag=WraithCurrentIn] run tag @e remove WraithCurrentIn
execute unless entity @e[tag=WraithCurrentIn] run tag @e remove WraithCurrentOut
execute unless entity @e[tag=WraithCurrentIn] run scoreboard players set @s wraith_ent -1
execute unless entity @e[tag=WraithCurrentIn] run scoreboard players set @s wraith_exit -1
execute unless entity @e[tag=WraithCurrentIn] run return 0

execute unless entity @e[tag=WraithCurrentOut] run title @s actionbar {text:'出口対象が存在しません',color:'red'}
execute unless entity @e[tag=WraithCurrentOut] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5
execute unless entity @e[tag=WraithCurrentOut] run tag @e remove WraithCurrentIn
execute unless entity @e[tag=WraithCurrentOut] run tag @e remove WraithCurrentOut
execute unless entity @e[tag=WraithCurrentOut] run scoreboard players set @s wraith_ent -1
execute unless entity @e[tag=WraithCurrentOut] run scoreboard players set @s wraith_exit -1
execute unless entity @e[tag=WraithCurrentOut] run return 0

#転移実行
execute at @e[tag=WraithCurrentIn] run particle minecraft:witch ~ ~1 ~ 1 1 1 0.5 100
execute at @e[tag=WraithCurrentOut] run particle minecraft:portal ~ ~1 ~ 1 1 1 1 100
execute at @e[tag=WraithCurrentOut] run playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 2 1
execute at @e[tag=WraithCurrentOut,limit=1] run tp @e[tag=WraithCurrentIn,limit=1] ~ ~ ~

#全バフ・デバフ無効化（200tick = 10秒）付与
scoreboard players set @e[tag=WraithCurrentIn] wraith_void 200
scoreboard players set @e[tag=WraithCurrentOut] wraith_void 200

#祭司のクールダウン（200tick = 10秒）開始
scoreboard players set @s wraith_cd 200

#入口・出口選択解除
scoreboard players set @s wraith_ent -1
scoreboard players set @s wraith_exit -1

#一時タグ削除
tag @e remove WraithCurrentIn
tag @e remove WraithCurrentOut
