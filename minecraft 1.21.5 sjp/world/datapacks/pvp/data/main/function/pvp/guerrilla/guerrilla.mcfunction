#上級ゲリラ兵 毎tick処理（pvp/pvp_control から呼ばれる）

#プレイヤーごとの処理（入力・しゃがみ・射撃・表示）
execute as @a[tag=Guerrilla] at @s run function main:pvp/guerrilla/player_tick

#死亡処理（頭蓋骨・武器のドロップ、ゲリラ兵自身の所持品消滅）
#位置の更新より先に行う（リスポーン後の位置で上書きされないように）
execute as @a[scores={GuDeath=1..}] run function main:pvp/guerrilla/death/process
scoreboard players set @a[scores={GuKill=1..}] GuKill 0

#ゲリラ兵に攻撃された敵の記録（アシスト7秒・死亡位置）。生存中のプレイヤーのみ位置を更新する
scoreboard players remove @a[scores={GuAssist=1..}] GuAssist 1
execute as @e[type=player,scores={GuAssist=1..}] run function main:pvp/guerrilla/death/store_pos

#ゲリラ兵が捨てた装備は誰にも拾わせない（新しく出たアイテムだけ1回調べる）
execute as @e[type=item,tag=!GuChk] run function main:pvp/guerrilla/drop/scan_item

#ドロップ品の拾得（ゲリラ兵のみ・生存中のみ）
execute as @e[type=player,tag=Guerrilla,gamemode=!spectator] at @s if entity @e[type=item,tag=GuDrop,distance=..1.5] run function main:pvp/guerrilla/drop/pickup

#投擲物・爆撃
execute as @e[type=snowball,tag=!GuSeen] at @s run function main:pvp/guerrilla/projectile/scan_snowball
execute as @e[type=marker,tag=GuNadeM] at @s run function main:pvp/guerrilla/projectile/nade_tick
execute as @e[type=marker,tag=GuStrike] at @s run function main:pvp/guerrilla/reward/strike_tick
execute as @e[type=marker,tag=GuCarpet] at @s run function main:pvp/guerrilla/reward/carpet_tick
execute as @e[type=creeper,tag=GuBomb] at @s run function main:pvp/guerrilla/reward/bomb_tick
execute as @e[type=marker,tag=GuFire] at @s run function main:pvp/guerrilla/reward/fire_tick
execute if score #nuke GuCalc matches 1.. run function main:pvp/guerrilla/reward/nuke_tick

#1秒ごとの整理（初期装備の維持・捨てた装備の削除）
scoreboard players add #slow GuCalc 1
execute if score #slow GuCalc matches 20.. run function main:pvp/guerrilla/slow

