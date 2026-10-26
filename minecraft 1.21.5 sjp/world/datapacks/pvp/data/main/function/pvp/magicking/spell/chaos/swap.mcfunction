tag @a remove MKChaosA
tag @a remove MKChaosB
tag @a[tag=MKChaosPool,sort=random,limit=1] add MKChaosA
tag @a[tag=MKChaosPool,tag=!MKChaosA,sort=random,limit=1] add MKChaosB
execute if entity @a[tag=MKChaosA] if entity @a[tag=MKChaosB] at @a[tag=MKChaosA,limit=1] run summon minecraft:marker ~ ~ ~ {Tags:["MKChaosPosA","MKChaosPosition","MTentity"]}
execute if entity @a[tag=MKChaosA] if entity @a[tag=MKChaosB] at @a[tag=MKChaosB,limit=1] run summon minecraft:marker ~ ~ ~ {Tags:["MKChaosPosB","MKChaosPosition","MTentity"]}
execute if entity @e[tag=MKChaosPosA] if entity @e[tag=MKChaosPosB] run tp @a[tag=MKChaosA] @e[tag=MKChaosPosB,limit=1]
execute if entity @e[tag=MKChaosPosA] if entity @e[tag=MKChaosPosB] run tp @a[tag=MKChaosB] @e[tag=MKChaosPosA,limit=1]
execute if entity @e[tag=MKChaosPosA] if entity @e[tag=MKChaosPosB] run tellraw @a[tag=MKChaosCaster] {"text":"[混沌] ランダムな2人の位置を交換した。","color":"dark_purple"}
execute unless entity @a[tag=MKChaosB] run tellraw @a[tag=MKChaosCaster] {"text":"[混沌] 交換対象が2人いないため何も起きなかった。","color":"gray"}
kill @e[tag=MKChaosPosition]
tag @a remove MKChaosA
tag @a remove MKChaosB
