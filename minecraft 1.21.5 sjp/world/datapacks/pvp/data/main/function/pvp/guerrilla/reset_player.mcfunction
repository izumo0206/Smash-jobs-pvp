#上級ゲリラ兵の一時状態を解除する（実行者：対象プレイヤー）
tag @s remove GuCrouch
tag @s remove GuP90
tag @s remove GuScoping
attribute @s minecraft:scale modifier remove main:gu_crouch
attribute @s minecraft:sneaking_speed modifier remove main:gu_p90
function main:pvp/guerrilla/body/weight_clear
clear @s *[minecraft:custom_data~{gu_item:1b}]
function main:pvp/guerrilla/init_player
tag @s remove GuReq
