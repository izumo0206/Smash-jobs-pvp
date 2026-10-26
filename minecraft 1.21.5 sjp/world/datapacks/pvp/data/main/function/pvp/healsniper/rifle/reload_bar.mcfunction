#持っているスナイパーにリロードの残り時間を耐久値バーとして表示
execute store result storage main:healsniper bar.d int 1 run scoreboard players get @s HsReload
execute store result storage main:healsniper bar.m int 1 run scoreboard players get @s HsReloadMax
function main:pvp/healsniper/rifle/reload_bar_m with storage main:healsniper bar
