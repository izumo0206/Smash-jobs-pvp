#回復スナイパー 毎tick処理（pvp/pvp_control から呼ばれる）

#プレイヤーごとの処理（入力・ズーム・射撃・表示）
execute as @a[tag=HealSniper] at @s run function main:pvp/healsniper/player_tick

#死亡処理（眠り・ナノブーストの解除、スナイパーの弾の補充）
execute as @a[scores={HsDeath=1..}] run function main:pvp/healsniper/death/process

#麻酔弾・眠り
execute as @e[type=item_display,tag=HsDart] at @s run function main:pvp/healsniper/dart/tick
execute as @a[tag=HsSleeping] at @s run function main:pvp/healsniper/dart/sleep_tick

#味方への回復・ナノブースト
execute as @a[scores={HsHeal=1..}] run function main:pvp/healsniper/fx/heal_tick
execute as @a[scores={HsNano=1..}] at @s run function main:pvp/healsniper/nano/tick

#捨てた装備は誰にも拾わせない（新しく出たアイテムだけ1回調べる）
execute as @e[type=item,tag=!HsChk] run function main:pvp/healsniper/item/scan

#1秒ごとの整理（装備の維持）
scoreboard players add #slow HsCalc 1
execute if score #slow HsCalc matches 20.. run function main:pvp/healsniper/slow

