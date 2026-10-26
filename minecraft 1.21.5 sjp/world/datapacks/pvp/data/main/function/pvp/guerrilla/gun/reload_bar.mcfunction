#持っている銃にリロードの残り時間を耐久値バーとして表示（実行者：リロード中のゲリラ兵）
execute store result storage main:guerrilla bar.d int 1 run scoreboard players get @s GuReload
execute store result storage main:guerrilla bar.m int 1 run scoreboard players get @s GuReloadMax
function main:pvp/guerrilla/gun/reload_bar_m with storage main:guerrilla bar
