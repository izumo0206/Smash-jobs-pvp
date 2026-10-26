#コインゲート用scoreboard初期化（初回のみ呼び出す）
scoreboard objectives add ShopGateCD dummy
scoreboard players set #red ShopGateCD 0
scoreboard players set #mid ShopGateCD 0
scoreboard players set #blue ShopGateCD 0
scoreboard players set #visualTick ShopGateCD 0
scoreboard players set #20 ShopGateCD 20
scoreboard players set #60 ShopGateCD 60
data modify storage main:shop_gate setup set value 1b
