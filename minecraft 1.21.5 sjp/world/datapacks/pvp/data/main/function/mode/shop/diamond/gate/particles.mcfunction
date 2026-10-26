#赤：残り61秒以上
execute if score #red ShopGateCD matches 1201.. at @e[tag=CoinGateAnchor,tag=diared] run particle minecraft:dust{color:[1.0,0.0,0.0],scale:1.1} ~ ~0.8 ~ 0.45 0.35 0.45 0 8 normal
execute if score #mid ShopGateCD matches 1201.. at @e[tag=CoinGateAnchor,tag=diamid] run particle minecraft:dust{color:[1.0,0.0,0.0],scale:1.1} ~ ~0.8 ~ 0.45 0.35 0.45 0 8 normal
execute if score #blue ShopGateCD matches 1201.. at @e[tag=CoinGateAnchor,tag=diablue] run particle minecraft:dust{color:[1.0,0.0,0.0],scale:1.1} ~ ~0.8 ~ 0.45 0.35 0.45 0 8 normal

#黄：残り1～60秒
execute if score #red ShopGateCD matches 1..1200 at @e[tag=CoinGateAnchor,tag=diared] run particle minecraft:dust{color:[1.0,0.85,0.0],scale:1.1} ~ ~0.8 ~ 0.45 0.35 0.45 0 8 normal
execute if score #mid ShopGateCD matches 1..1200 at @e[tag=CoinGateAnchor,tag=diamid] run particle minecraft:dust{color:[1.0,0.85,0.0],scale:1.1} ~ ~0.8 ~ 0.45 0.35 0.45 0 8 normal
execute if score #blue ShopGateCD matches 1..1200 at @e[tag=CoinGateAnchor,tag=diablue] run particle minecraft:dust{color:[1.0,0.85,0.0],scale:1.1} ~ ~0.8 ~ 0.45 0.35 0.45 0 8 normal

#緑：回収可能
execute if score #red ShopGateCD matches 0 at @e[tag=CoinGateAnchor,tag=diared] run particle minecraft:dust{color:[0.1,1.0,0.2],scale:1.2} ~ ~0.8 ~ 0.45 0.35 0.45 0 8 normal
execute if score #mid ShopGateCD matches 0 at @e[tag=CoinGateAnchor,tag=diamid] run particle minecraft:dust{color:[0.1,1.0,0.2],scale:1.2} ~ ~0.8 ~ 0.45 0.35 0.45 0 8 normal
execute if score #blue ShopGateCD matches 0 at @e[tag=CoinGateAnchor,tag=diablue] run particle minecraft:dust{color:[0.1,1.0,0.2],scale:1.2} ~ ~0.8 ~ 0.45 0.35 0.45 0 8 normal
