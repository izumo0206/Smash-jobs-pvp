#実行者：死亡したプレイヤー
scoreboard players set @s GuDeath 0
execute if entity @s[tag=Guerrilla] run function main:pvp/guerrilla/death/self
execute unless score @s GuAssist matches 1.. run return 0
scoreboard players set @s GuAssist 0
#7秒以内にゲリラ兵の攻撃を受けていた → 死亡位置に頭蓋骨
execute store result storage main:guerrilla drop.x double 0.1 run scoreboard players get @s GuPX
execute store result storage main:guerrilla drop.y double 0.1 run scoreboard players get @s GuPY
execute store result storage main:guerrilla drop.z double 0.1 run scoreboard players get @s GuPZ
data modify storage main:guerrilla drop merge value {kind:"skull",item:"minecraft:skeleton_skull",name:"頭蓋骨"}
function main:pvp/guerrilla/death/spawn with storage main:guerrilla drop
#倒したのが敵チームのゲリラ兵なら、武器もランダムで落とす
execute if entity @s[team=Red] if entity @a[tag=Guerrilla,team=Blue,scores={GuKill=1..}] run function main:pvp/guerrilla/death/drop_weapon
execute if entity @s[team=Blue] if entity @a[tag=Guerrilla,team=Red,scores={GuKill=1..}] run function main:pvp/guerrilla/death/drop_weapon
