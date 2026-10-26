#視線上5マス以内で、上面が空いている最初の非置換ブロックを描画地点にする
execute unless block ~ ~ ~ #minecraft:replaceable run return run function main:pvp/dusk/draw/target_block
scoreboard players add @s DuskRange 1
execute if score @s DuskRange matches 20.. run return run kill @s
tp @s ^ ^ ^0.25
execute at @s run function main:pvp/dusk/draw/raycast
