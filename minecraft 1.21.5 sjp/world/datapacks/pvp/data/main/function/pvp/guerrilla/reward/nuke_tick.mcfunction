scoreboard players remove #nuke GuCalc 1
scoreboard players operation #nb GuCalc = #nuke GuCalc
scoreboard players remove #nb GuCalc 100
execute if score #nuke GuCalc matches 101.. store result bossbar main:gu_nuke value run scoreboard players get #nb GuCalc
#カウントダウン中の鼓動（1秒ごと）
scoreboard players operation #m GuCalc = #nuke GuCalc
scoreboard players operation #m GuCalc %= #10 GuCalc
execute if score #nuke GuCalc matches 101.. if score #m GuCalc matches 0 as @a at @s run playsound minecraft:block.note_block.basedrum master @s ~ ~ ~ 1 0.5
execute if score #nuke GuCalc matches 100 run function main:pvp/guerrilla/reward/nuke_impact
execute if score #nuke GuCalc matches 1..100 as @a[gamemode=!spectator] at @s run function main:pvp/guerrilla/reward/nuke_blast
execute if score #nuke GuCalc matches ..0 run bossbar remove main:gu_nuke
