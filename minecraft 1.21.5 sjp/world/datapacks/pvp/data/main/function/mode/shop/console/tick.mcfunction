execute unless data storage main:shop_console {setup:1b} run function main:mode/shop/console/setup
execute if data storage main:stage_start {running:1b} run function main:mode/shop/console/active
execute unless data storage main:stage_start {running:1b} run function main:mode/shop/console/inactive
