#画家リワークの初期化
execute unless data storage main:dusk {setup:1b} run function main:pvp/dusk/setup
execute as @a[tag=Dusk] unless score @s DuskOwner matches 1.. run function main:pvp/dusk/assign_owner

#染料切り替え・ブラシ投擲
function main:pvp/dusk/items/dropped
execute as @e[tag=DuskBrushProjectile] at @s run function main:pvp/dusk/projectile/tick

#既存の建築物・召喚物
function main:pvp/dusk/entities

#プレイヤーごとの描画入力
execute as @a[tag=Dusk] at @s run function main:pvp/dusk/player_tick
