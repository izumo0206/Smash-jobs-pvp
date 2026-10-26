#炎（火+風）
execute if score @s MKFire matches 20.. if score @s MKWind matches 20.. if score @s MKFlameN matches ..19 run tellraw @s {"text":"[火・風20] 炎魔法で火炎耐性を30秒得る。","color":"dark_red"}
execute if score @s MKFire matches 20.. if score @s MKWind matches 20.. if score @s MKFlameN matches ..19 run scoreboard players set @s MKFlameN 20
execute if score @s MKFire matches 30.. if score @s MKWind matches 30.. if score @s MKFlameN matches ..29 run tellraw @s {"text":"[火・風30] 炎の魔法のCTが10になった。","color":"dark_red"}
execute if score @s MKFire matches 30.. if score @s MKWind matches 30.. if score @s MKFlameN matches ..29 run scoreboard players set @s MKFlameN 30
execute if score @s MKFire matches 40.. if score @s MKWind matches 40.. if score @s MKFlameN matches ..39 run tellraw @s {"text":"[火・風40] 炎魔法が対象へ鈍足Iを3秒与える。","color":"dark_red"}
execute if score @s MKFire matches 40.. if score @s MKWind matches 40.. if score @s MKFlameN matches ..39 run scoreboard players set @s MKFlameN 40
execute if score @s MKFire matches 50.. if score @s MKWind matches 50.. if score @s MKFlameN matches ..49 run tellraw @s {"text":"[火・風50] 炎の魔法のCTが5になった。","color":"dark_red"}
execute if score @s MKFire matches 50.. if score @s MKWind matches 50.. if score @s MKFlameN matches ..49 run scoreboard players set @s MKFlameN 50
execute if score @s MKFire matches 70.. if score @s MKWind matches 70.. if score @s MKFlameN matches ..69 run tellraw @s {"text":"[火・風70] 炎魔法が距離を問わず敵player全員を対象にする。","color":"dark_red"}
execute if score @s MKFire matches 70.. if score @s MKWind matches 70.. if score @s MKFlameN matches ..69 run scoreboard players set @s MKFlameN 70

#雷（光+風）
execute if score @s MKLight matches 20.. if score @s MKWind matches 20.. if score @s MKThunderN matches ..19 run tellraw @s {"text":"[光・風20] 雷魔法が暗闇を3秒与える。","color":"yellow"}
execute if score @s MKLight matches 20.. if score @s MKWind matches 20.. if score @s MKThunderN matches ..19 run scoreboard players set @s MKThunderN 20
execute if score @s MKLight matches 30.. if score @s MKWind matches 30.. if score @s MKThunderN matches ..29 run tellraw @s {"text":"[光・風30] 雷の魔法のCTが10になった。","color":"yellow"}
execute if score @s MKLight matches 30.. if score @s MKWind matches 30.. if score @s MKThunderN matches ..29 run scoreboard players set @s MKThunderN 30
execute if score @s MKLight matches 40.. if score @s MKWind matches 40.. if score @s MKThunderN matches ..39 run tellraw @s {"text":"[光・風40] 雷の魔法のCDが50になった。","color":"yellow"}
execute if score @s MKLight matches 40.. if score @s MKWind matches 40.. if score @s MKThunderN matches ..39 run scoreboard players set @s MKThunderN 40
execute if score @s MKLight matches 50.. if score @s MKWind matches 50.. if score @s MKThunderN matches ..49 run tellraw @s {"text":"[光・風50] 雷の魔法のCTが5になった。","color":"yellow"}
execute if score @s MKLight matches 50.. if score @s MKWind matches 50.. if score @s MKThunderN matches ..49 run scoreboard players set @s MKThunderN 50
execute if score @s MKLight matches 70.. if score @s MKWind matches 70.. if score @s MKThunderN matches ..69 run tellraw @s {"text":"[光・風70] 雷魔法が距離を問わずランダムな敵player1人を対象にする。","color":"yellow"}
execute if score @s MKLight matches 70.. if score @s MKWind matches 70.. if score @s MKThunderN matches ..69 run scoreboard players set @s MKThunderN 70

#氷（水+土）
execute if score @s MKWater matches 20.. if score @s MKEarth matches 20.. if score @s MKIceN matches ..19 run tellraw @s {"text":"[水・土20] 氷魔法が鈍足Xを5秒与える。","color":"aqua"}
execute if score @s MKWater matches 20.. if score @s MKEarth matches 20.. if score @s MKIceN matches ..19 run scoreboard players set @s MKIceN 20
execute if score @s MKWater matches 30.. if score @s MKEarth matches 30.. if score @s MKIceN matches ..29 run tellraw @s {"text":"[水・土30] 氷の魔法のCTが10になった。","color":"aqua"}
execute if score @s MKWater matches 30.. if score @s MKEarth matches 30.. if score @s MKIceN matches ..29 run scoreboard players set @s MKIceN 30
execute if score @s MKWater matches 40.. if score @s MKEarth matches 40.. if score @s MKIceN matches ..39 run tellraw @s {"text":"[水・土40] 氷の魔法のCDが50になった。","color":"aqua"}
execute if score @s MKWater matches 40.. if score @s MKEarth matches 40.. if score @s MKIceN matches ..39 run scoreboard players set @s MKIceN 40
execute if score @s MKWater matches 50.. if score @s MKEarth matches 50.. if score @s MKIceN matches ..49 run tellraw @s {"text":"[水・土50] 氷の魔法のCTが5になった。","color":"aqua"}
execute if score @s MKWater matches 50.. if score @s MKEarth matches 50.. if score @s MKIceN matches ..49 run scoreboard players set @s MKIceN 50
execute if score @s MKWater matches 70.. if score @s MKEarth matches 70.. if score @s MKIceN matches ..69 run tellraw @s {"text":"[水・土70] 氷魔法が距離を問わず敵player全員を対象にする。","color":"aqua"}
execute if score @s MKWater matches 70.. if score @s MKEarth matches 70.. if score @s MKIceN matches ..69 run scoreboard players set @s MKIceN 70

#混沌（光+闇）
execute if score @s MKLight matches 10.. if score @s MKDark matches 10.. if score @s MKChaosN matches ..9 run tellraw @s {"text":"[光・闇10] 混沌魔法がランダムなplayerへ5ダメージを与える。","color":"dark_purple"}
execute if score @s MKLight matches 10.. if score @s MKDark matches 10.. if score @s MKChaosN matches ..9 run scoreboard players set @s MKChaosN 10
execute if score @s MKLight matches 20.. if score @s MKDark matches 20.. if score @s MKChaosN matches ..19 run tellraw @s {"text":"[光・闇20] 混沌魔法でランダムなelementを5得る。","color":"dark_purple"}
execute if score @s MKLight matches 20.. if score @s MKDark matches 20.. if score @s MKChaosN matches ..19 run scoreboard players set @s MKChaosN 20
execute if score @s MKLight matches 30.. if score @s MKDark matches 30.. if score @s MKChaosN matches ..29 run tellraw @s {"text":"[光・闇30] 混沌魔法のランダム効果が解放された。","color":"dark_purple"}
execute if score @s MKLight matches 30.. if score @s MKDark matches 30.. if score @s MKChaosN matches ..29 run scoreboard players set @s MKChaosN 30

#全element72
execute if score @s MKFire matches 72 if score @s MKWater matches 72 if score @s MKWind matches 72 if score @s MKEarth matches 72 if score @s MKLight matches 72 if score @s MKDark matches 72 if score @s MKUltimate matches 0 run tellraw @s {"text":"[全element72] 混沌の最終効果が解放された。MP500で相手player全員をkillする。","color":"dark_purple","bold":true}
execute if score @s MKFire matches 72 if score @s MKWater matches 72 if score @s MKWind matches 72 if score @s MKEarth matches 72 if score @s MKLight matches 72 if score @s MKDark matches 72 run scoreboard players set @s MKUltimate 1
