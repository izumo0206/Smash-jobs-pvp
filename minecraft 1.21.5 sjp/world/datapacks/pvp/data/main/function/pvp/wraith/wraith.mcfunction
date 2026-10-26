#祭司メインループ

#1. タイマー・クールダウン減算
scoreboard players remove @a[tag=Wraith,scores={wraith_spec_time=1..}] wraith_spec_time 1
execute as @a[tag=Wraith,scores={wraith_spec_time=1..}] at @s run function main:pvp/wraith/spectator_tick
execute as @a[tag=Wraith,gamemode=spectator,scores={wraith_spec_time=0}] at @s run function main:pvp/wraith/spectator_end

scoreboard players remove @a[tag=Wraith,scores={wraith_cd=1..}] wraith_cd 1
scoreboard players remove @a[tag=Wraith,scores={wraith_sneak_cd=1..}] wraith_sneak_cd 1

scoreboard players remove @a[tag=Wraith,scores={wraith_mark_1=1..}] wraith_mark_1 1
scoreboard players remove @a[tag=Wraith,scores={wraith_mark_2=1..}] wraith_mark_2 1
scoreboard players remove @a[tag=Wraith,scores={wraith_mark_3=1..}] wraith_mark_3 1
scoreboard players remove @a[tag=Wraith,scores={wraith_mark_4=1..}] wraith_mark_4 1

#2. 刻印切れチェック（wraith_type == 1 かつ mark == 0）
execute as @a[tag=Wraith,scores={wraith_type_1=1,wraith_mark_1=0}] at @s run function main:pvp/wraith/expire_mark1
execute as @a[tag=Wraith,scores={wraith_type_2=1,wraith_mark_2=0}] at @s run function main:pvp/wraith/expire_mark2
execute as @a[tag=Wraith,scores={wraith_type_3=1,wraith_mark_3=0}] at @s run function main:pvp/wraith/expire_mark3
execute as @a[tag=Wraith,scores={wraith_type_4=1,wraith_mark_4=0}] at @s run function main:pvp/wraith/expire_mark4

#3. アレイ破壊チェック（wraith_type == 3 なのにアレイが存在しない）
execute as @a[tag=Wraith,scores={wraith_type_1=3}] at @s run function main:pvp/wraith/check_gate1
execute as @a[tag=Wraith,scores={wraith_type_2=3}] at @s run function main:pvp/wraith/check_gate2
execute as @a[tag=Wraith,scores={wraith_type_3=3}] at @s run function main:pvp/wraith/check_gate3
execute as @a[tag=Wraith,scores={wraith_type_4=3}] at @s run function main:pvp/wraith/check_gate4

#4. 入力ハンドラ
#Qドロップ検知（Qキー入力があった場合のみ実行）
execute as @a[tag=Wraith,scores={wraith_drop_s=1..}] at @s run function main:pvp/wraith/drop_input
execute as @a[tag=Wraith,scores={wraith_drop_f=1..}] at @s run function main:pvp/wraith/drop_input

#右クリック（ゲート生成）
execute as @a[tag=Wraith,scores={wraith_rc=1..}] at @s run function main:pvp/wraith/spawn_gate

#スニーク（味方登録）
execute as @a[tag=Wraith] at @s if predicate main:is_sneaking run function main:pvp/wraith/register_ally

#攻撃ヒット（敵刻印）
execute as @a[tag=Wraith,scores={wraith_dmg=1..}] at @s run function main:pvp/wraith/mark_enemy

#長剣スニークCT（幽体離脱チャージ）
execute as @a[tag=Wraith] at @s run function main:pvp/wraith/sword_charge

#5. 虚空無効化効果（全エンティティ対象）
execute if entity @e[scores={wraith_void=1..}] run function main:pvp/wraith/void_effect

#6. アクションバー画面表示
execute as @a[tag=Wraith] at @s run function main:pvp/wraith/wraithdisplay
