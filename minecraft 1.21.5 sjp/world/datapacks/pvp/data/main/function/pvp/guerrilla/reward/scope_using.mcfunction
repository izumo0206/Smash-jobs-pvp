#爆撃要請の望遠鏡をのぞいている間、毎tick呼ばれる（advancement main:guerrilla/bomb_scope）
advancement revoke @s only main:guerrilla/bomb_scope
execute unless entity @s[tag=Guerrilla] run return 0
#のぞいている印（2tick更新がなければ「離した」とみなす：player_tick）
scoreboard players set @s GuScope 2
tag @s add GuScoping
#狙っている地点に赤い印（本人にだけ表示）
scoreboard players set #pv GuCalc 1
function main:pvp/guerrilla/reward/aim_start
