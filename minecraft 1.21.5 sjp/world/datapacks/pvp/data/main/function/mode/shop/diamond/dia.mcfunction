#コインゲートのメイン

#初回だけクールダウン用objectiveと定数を用意する
execute unless data storage main:shop_gate {setup:1b} run function main:mode/shop/diamond/gate/setup

#スコア通貨・ショップコンソール・ショップ装備効果
function main:mode/shop/console/tick

#既存Armor Standを座標アンカーとして引き継ぎ、表示だけtext_displayへ移行する
function main:mode/shop/diamond/gate/migrate

#150秒クールダウン（3000tick）をスポットごとに進める
execute if score #red ShopGateCD matches 2.. run scoreboard players remove #red ShopGateCD 1
execute if score #mid ShopGateCD matches 2.. run scoreboard players remove #mid ShopGateCD 1
execute if score #blue ShopGateCD matches 2.. run scoreboard players remove #blue ShopGateCD 1
execute if score #red ShopGateCD matches 1 run function main:mode/shop/diamond/gate/revive/red
execute if score #mid ShopGateCD matches 1 run function main:mode/shop/diamond/gate/revive/mid
execute if score #blue ShopGateCD matches 1 run function main:mode/shop/diamond/gate/revive/blue

#試合終了時などにscoreだけ先に0になった、読み込み直後のゲートを無音で復元する
execute if score #red ShopGateCD matches 0 if entity @e[tag=CoinGateAnchor,tag=diared,tag=CoinGateCooldown] run function main:mode/shop/diamond/gate/restore/red
execute if score #mid ShopGateCD matches 0 if entity @e[tag=CoinGateAnchor,tag=diamid,tag=CoinGateCooldown] run function main:mode/shop/diamond/gate/restore/mid
execute if score #blue ShopGateCD matches 0 if entity @e[tag=CoinGateAnchor,tag=diablue,tag=CoinGateCooldown] run function main:mode/shop/diamond/gate/restore/blue

#表示は1秒ごと、状態パーティクルは0.5秒ごとに更新する
scoreboard players add #visualTick ShopGateCD 1
execute if score #visualTick ShopGateCD matches 10 run function main:mode/shop/diamond/gate/particles
execute if score #visualTick ShopGateCD matches 20.. run function main:mode/shop/diamond/gate/second

#回収可能なゲートでスニークしている間だけ、プレイヤー個人の5秒進捗を増やす
execute at @e[tag=CoinGateAnchor,tag=dia] run execute as @a[distance=..3,scores={sneak2=1..}] run scoreboard players add @s diamond 1

#スポット赤
execute at @e[tag=CoinGateAnchor,tag=diared,tag=dia] run execute as @a[distance=..3,scores={diamond=1..}] run function main:mode/shop/diamond/dia_red

#スポット中央
execute at @e[tag=CoinGateAnchor,tag=diamid,tag=dia] run execute as @a[distance=..3,scores={diamond=1..}] run function main:mode/shop/diamond/dia_mid

#スポット青
execute at @e[tag=CoinGateAnchor,tag=diablue,tag=dia] run execute as @a[distance=..3,scores={diamond=1..}] run function main:mode/shop/diamond/dia_blue
