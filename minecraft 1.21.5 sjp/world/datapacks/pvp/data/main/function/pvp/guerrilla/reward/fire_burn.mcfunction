#範囲内の敵（敵チームのプレイヤーと、自分のチーム以外のmob）に炎のダメージ
scoreboard players set @s GuCount 0
tag @a remove GuSrc
scoreboard players operation #id GuCalc = @s GuID
execute as @a[tag=Guerrilla] if score @s GuID = #id GuCalc run tag @s add GuSrc
function main:pvp/guerrilla/reward/fire_burn_m with storage main:guerrilla param.carpet
playsound minecraft:block.fire.ambient player @a ~ ~ ~ 1 1
tag @a remove GuSrc
