#半径・ダメージは config の param.carpet
function main:pvp/guerrilla/fx/explode with storage main:guerrilla param.carpet
#爆発の後に炎が残る（fire_sec 秒。敵だけに効く。本物の火ブロックは置かない）
summon marker ~ ~ ~ {Tags:["GuFire","GuNew"]}
scoreboard players operation @e[type=marker,tag=GuNew] GuID = @s GuID
execute if entity @s[tag=GuBlue] run tag @e[type=marker,tag=GuNew] add GuBlue
execute if entity @s[tag=GuRed] run tag @e[type=marker,tag=GuNew] add GuRed
execute store result score @e[type=marker,tag=GuNew] GuTimer run data get storage main:guerrilla param.carpet.fire_sec 20
scoreboard players set @e[type=marker,tag=GuNew] GuCount 0
tag @e[type=marker,tag=GuNew] remove GuNew
tp @s ~ -300 ~
kill @s
