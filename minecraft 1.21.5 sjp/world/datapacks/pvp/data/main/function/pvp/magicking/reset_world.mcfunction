#魔王が設置したブロックを消してからmarkerを回収する
execute as @e[tag=MKFlameMarker] at @s run function main:pvp/magicking/spell/flame/remove_fire
execute as @e[tag=MKIceMarker] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:powder_snow
kill @e[tag=MKWaterWall]
kill @e[tag=MKFlameMarker]
kill @e[tag=MKIceMarker]
kill @e[tag=MKChaosPosition]
kill @e[tag=MKWindBurst]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",components:{"minecraft:custom_data":{magic_king_element_check:1b}}}}]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{magic_king_devour:1b}}}}]
tag @a remove MKSpellTarget
tag @a remove MKChaosPool
tag @a remove MKChaosTarget
tag @a remove MKChaosCaster
tag @a remove MKChaosA
tag @a remove MKChaosB
tag @a remove MKDamageCaster

#混沌の一時attributeを試合終了時にも復元する
execute as @a[scores={MKGravityOld=1..}] run function main:pvp/magicking/util/restore_gravity
execute as @a[scores={MKScaleOld=1..}] run function main:pvp/magicking/util/restore_scale
execute as @a run attribute @s minecraft:explosion_knockback_resistance modifier remove main:magic_king_wind_self
