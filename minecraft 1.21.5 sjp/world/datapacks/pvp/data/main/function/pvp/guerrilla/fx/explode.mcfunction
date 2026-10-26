#敵チームだけに効く爆発（実行者：GuID とチームtag を持つentity）
tag @a remove GuSrc
scoreboard players operation #id GuCalc = @s GuID
execute as @a[tag=Guerrilla] if score @s GuID = #id GuCalc run tag @s add GuSrc
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 4 0.8
$execute if entity @s[tag=GuBlue] as @e[type=player,team=Red,gamemode=!spectator,distance=..$(radius)] run function main:pvp/guerrilla/fx/explode_hit {damage:$(damage)}
$execute if entity @s[tag=GuRed] as @e[type=player,team=Blue,gamemode=!spectator,distance=..$(radius)] run function main:pvp/guerrilla/fx/explode_hit {damage:$(damage)}
#mob（自分のチーム以外。防具立てなどは除外）
$execute if entity @s[tag=GuBlue] as @e[type=!player,type=!#main:gu_not_target,team=!Blue,tag=!GuBomb,distance=..$(radius)] run function main:pvp/guerrilla/fx/explode_hit {damage:$(damage)}
$execute if entity @s[tag=GuRed] as @e[type=!player,type=!#main:gu_not_target,team=!Red,tag=!GuBomb,distance=..$(radius)] run function main:pvp/guerrilla/fx/explode_hit {damage:$(damage)}
tag @a remove GuSrc
