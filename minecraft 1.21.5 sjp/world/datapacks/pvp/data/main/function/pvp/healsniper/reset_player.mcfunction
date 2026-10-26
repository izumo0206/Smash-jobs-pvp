#回復スナイパーの一時状態を解除する（実行者：対象プレイヤー）
function main:pvp/healsniper/rifle/zoom_off
clear @s *[minecraft:custom_data~{hs_item:1b}]
function main:pvp/healsniper/init_player
