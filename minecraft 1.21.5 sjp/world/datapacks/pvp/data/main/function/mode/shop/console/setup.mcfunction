#ショップコンソール用objectiveを初回だけ作成する
scoreboard objectives add ShopCoin dummy {text:'コイン',color:'gold'}
scoreboard objectives add ShopOpen trigger
scoreboard objectives add ShopBuy trigger
scoreboard objectives add ShopUse minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add BlinkUse minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add ShopTmp dummy
scoreboard players set #valid ShopTmp 0
data modify storage main:shop_console setup set value 1b

#移行時に所持していた物理ダイヤだけは同数のコインへ変換する
execute as @a run function main:mode/shop/console/migrate_player
function main:mode/shop/console/cleanup_villagers
