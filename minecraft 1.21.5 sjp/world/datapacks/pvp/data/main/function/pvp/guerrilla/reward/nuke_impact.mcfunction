bossbar set main:gu_nuke name {text:"大規模爆風爆弾 着弾",color:"dark_red",bold:true}
bossbar set main:gu_nuke value 0
execute as @a at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 0.5
execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~ ~ 1 0.5
effect give @a minecraft:darkness 3 0 true
#敵チームのプレイヤーを全員倒す（発動した人がいればその人の撃破として記録）
tag @a remove GuSrc
execute as @a[tag=Guerrilla] if score @s GuID = #nukeId GuCalc run tag @s add GuSrc
execute if score #nukeTeam GuCalc matches 1 as @a[team=Red,gamemode=!spectator] run function main:pvp/guerrilla/reward/nuke_kill
execute if score #nukeTeam GuCalc matches 2 as @a[team=Blue,gamemode=!spectator] run function main:pvp/guerrilla/reward/nuke_kill
tag @a remove GuSrc
