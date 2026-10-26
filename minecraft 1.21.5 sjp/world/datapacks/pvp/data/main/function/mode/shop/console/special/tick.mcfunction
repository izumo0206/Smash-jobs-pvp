#重力の魔石: 左手に持つと4マス以内の敵をジャンプ不能にする
execute as @a[team=Red] at @s if items entity @s weapon.offhand minecraft:echo_shard[minecraft:custom_data~{shop_gravity:1b}] run effect give @a[team=Blue,distance=..4] minecraft:jump_boost 1 128 true
execute as @a[team=Blue] at @s if items entity @s weapon.offhand minecraft:echo_shard[minecraft:custom_data~{shop_gravity:1b}] run effect give @a[team=Red,distance=..4] minecraft:jump_boost 1 128 true

#ジャンプブーツ: 履いている間は跳躍力上昇II
execute as @a if items entity @s armor.feet minecraft:leather_boots[minecraft:custom_data~{shop_jump_boots:1b}] run effect give @s minecraft:jump_boost 1 1 true

#天翔の剣: 右手は浮遊、左手は浮遊解除。どちらの手でも落下ダメージを無効化
execute as @a if items entity @s weapon.mainhand minecraft:golden_sword[minecraft:custom_data~{shop_sky_sword:1b}] run effect give @s minecraft:levitation 1 6 true
execute as @a if items entity @s weapon.offhand minecraft:golden_sword[minecraft:custom_data~{shop_sky_sword:1b}] run effect clear @s minecraft:levitation
execute as @a[tag=!ShopSkyFall] if items entity @s weapon.mainhand minecraft:golden_sword[minecraft:custom_data~{shop_sky_sword:1b}] run attribute @s minecraft:fall_damage_multiplier modifier add main:shop_sky_sword_fall -1 add_multiplied_total
execute as @a[tag=!ShopSkyFall] if items entity @s weapon.mainhand minecraft:golden_sword[minecraft:custom_data~{shop_sky_sword:1b}] run tag @s add ShopSkyFall
execute as @a[tag=!ShopSkyFall] if items entity @s weapon.offhand minecraft:golden_sword[minecraft:custom_data~{shop_sky_sword:1b}] run attribute @s minecraft:fall_damage_multiplier modifier add main:shop_sky_sword_fall -1 add_multiplied_total
execute as @a[tag=!ShopSkyFall] if items entity @s weapon.offhand minecraft:golden_sword[minecraft:custom_data~{shop_sky_sword:1b}] run tag @s add ShopSkyFall
execute as @a[tag=ShopSkyFall] unless items entity @s weapon.mainhand minecraft:golden_sword[minecraft:custom_data~{shop_sky_sword:1b}] unless items entity @s weapon.offhand minecraft:golden_sword[minecraft:custom_data~{shop_sky_sword:1b}] run attribute @s minecraft:fall_damage_multiplier modifier remove main:shop_sky_sword_fall
execute as @a[tag=ShopSkyFall] unless items entity @s weapon.mainhand minecraft:golden_sword[minecraft:custom_data~{shop_sky_sword:1b}] unless items entity @s weapon.offhand minecraft:golden_sword[minecraft:custom_data~{shop_sky_sword:1b}] run tag @s remove ShopSkyFall

#暗視ゴーグル: 頭に装備している間は暗視
execute as @a if items entity @s armor.head minecraft:iron_helmet[minecraft:custom_data~{shop_night_goggles:1b}] run effect give @s minecraft:night_vision 12 0 true

#ブリンク: 専用アイテム右クリックを消費して前方5マスへ移動
execute as @a[scores={BlinkUse=1..}] at @s if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{shop_blink:1b}] run function main:mode/shop/console/special/blink
scoreboard players set @a[scores={BlinkUse=1..}] BlinkUse 0
