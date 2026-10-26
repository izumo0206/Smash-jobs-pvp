#弾の粒（全員に表示）と、近くをかすめた敵への風切り音（1発につき1人1回）
$particle minecraft:dust{color:[1.0,0.9,0.45],scale:$(trail_size)} ~ ~ ~ 0 0 0 0 1 force @a
$execute if score #team GuCalc matches 1 as @e[type=player,team=Red,gamemode=!spectator,tag=!GuWhizzed,distance=..$(whiz_radius)] run function main:pvp/guerrilla/gun/whiz
$execute if score #team GuCalc matches 2 as @e[type=player,team=Blue,gamemode=!spectator,tag=!GuWhizzed,distance=..$(whiz_radius)] run function main:pvp/guerrilla/gun/whiz
