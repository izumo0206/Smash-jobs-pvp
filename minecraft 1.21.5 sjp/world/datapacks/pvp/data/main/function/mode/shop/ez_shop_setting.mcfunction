#ショップON/OFF

playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 1 1

execute if score ステージ決め ShopSetting matches 2 run scoreboard players set ステージ決め ShopSetting 0

execute if score ステージ決め ShopSetting matches 1 run scoreboard players set ステージ決め ShopSetting 2

execute if score ステージ決め ShopSetting matches 0 run scoreboard players set ステージ決め ShopSetting 1

#看板
execute if score ステージ決め ShopSetting matches 1 at @e[tag=KariokiShopSetting] run data merge block ~ ~2 ~ {front_text:{messages:["",["ショップは有効です"],"",""]},is_waxed:1}
execute if score ステージ決め ShopSetting matches 2 at @e[tag=KariokiShopSetting] run data merge block ~ ~2 ~ {front_text:{messages:["",["ショップは無効です"],"",""]},is_waxed:1}

#処理
execute if score ステージ決め ShopSetting matches 1 run scoreboard players set ステージ決め shop 1

execute if score ステージ決め ShopSetting matches 2 run scoreboard players set ステージ決め shop 2

#function main:mode/shop/shop_amasuta

function main:mode/shop/syounin
execute if score ステージ決め ShopSetting matches 1 unless data storage main:shop_console {setup:1b} run function main:mode/shop/console/setup
execute if score ステージ決め ShopSetting matches 2 if data storage main:shop_console {setup:1b} run function main:mode/shop/console/inactive
