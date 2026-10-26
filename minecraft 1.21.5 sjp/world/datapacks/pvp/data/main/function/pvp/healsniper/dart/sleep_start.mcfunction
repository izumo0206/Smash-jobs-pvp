#実行者：眠らされた敵。その場で動けなくなる（ダメージを受けるか、sleep tick 経つと起きる）
tag @s add HsSleeping
$scoreboard players set @s HsSleep $(sleep)
execute store result score @s HsHp run data get entity @s Health 10
attribute @s minecraft:movement_speed modifier remove main:hs_sleep
attribute @s minecraft:jump_strength modifier remove main:hs_sleep
attribute @s minecraft:movement_speed modifier add main:hs_sleep -1 add_multiplied_total
attribute @s minecraft:jump_strength modifier add main:hs_sleep -1 add_multiplied_total
effect give @s minecraft:blindness infinite 0 true
title @s times 5 30 10
title @s subtitle {text:"麻酔弾で眠らされた（ダメージを受けると起きる）",color:"gray"}
title @s title {text:"Zzz…",color:"aqua"}
execute at @s run playsound minecraft:entity.fox.sleep player @a ~ ~ ~ 1 0.8
execute at @s run particle minecraft:poof ~ ~1 ~ 0.3 0.4 0.3 0.02 10 force @a
