#読込済みの旧ショップ村人を順次除去する
function main:mode/shop/console/cleanup_villagers

#参加チームへ専用コンソールを1個だけ保証する
execute as @a[team=Red] run function main:mode/shop/console/ensure_item
execute as @a[team=Blue] run function main:mode/shop/console/ensure_item

#専用アイテム右クリックと予備triggerの両方から開く
scoreboard players enable @a[team=Red] ShopOpen
scoreboard players enable @a[team=Blue] ShopOpen
scoreboard players enable @a[team=Red] ShopBuy
scoreboard players enable @a[team=Blue] ShopBuy
execute as @a[scores={ShopUse=1..}] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_data~{shop_console:1b}] run function main:mode/shop/console/ui/open
execute as @a[scores={ShopUse=1..}] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_data~{shop_ticket_device:1b}] run function main:mode/shop/console/special/ticket_device
execute as @a[scores={ShopOpen=1..}] run function main:mode/shop/console/ui/open
execute as @a[scores={ShopBuy=1..}] run function main:mode/shop/console/purchase/dispatch
scoreboard players set @a[scores={ShopUse=1..}] ShopUse 0
scoreboard players reset @a[scores={ShopOpen=1..}] ShopOpen
scoreboard players reset @a[scores={ShopBuy=1..}] ShopBuy

#ショップ専用装備・使用アイテムの継続処理
function main:mode/shop/console/special/tick

#コンソールと旧物理ダイヤは手渡しできないよう、落ちたアイテムを回収する
execute as @e[type=minecraft:item] if items entity @s contents minecraft:carrot_on_a_stick[minecraft:custom_data~{shop_console:1b}] run kill @s
execute as @e[type=minecraft:item] if items entity @s contents minecraft:diamond run kill @s
