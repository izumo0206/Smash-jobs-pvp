#実行者：ナノブーストを受けた味方。体格・リーチが大きくなり、移動速度上昇・攻撃力上昇・再生
execute store result score @s HsNano run data get storage main:healsniper param.nano.sec 20
attribute @s minecraft:scale modifier remove main:hs_nano
attribute @s minecraft:entity_interaction_range modifier remove main:hs_nano
$attribute @s minecraft:scale modifier add main:hs_nano $(scale) add_multiplied_total
$attribute @s minecraft:entity_interaction_range modifier add main:hs_nano $(reach) add_multiplied_total
$effect give @s minecraft:speed $(sec) $(speed_lv)
$effect give @s minecraft:strength $(sec) $(strength_lv)
$effect give @s minecraft:regeneration $(sec) $(regen_lv)
title @s times 3 25 8
title @s subtitle {text:"体格・リーチ2倍！ 速さ・力・再生アップ",color:"light_purple"}
title @s title {text:"NANO BOOST!!",color:"gold",bold:true}
playsound minecraft:item.totem.use player @a ~ ~ ~ 1 1.3
playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 0.7
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 1 0.5 0.6 60 force @a
particle minecraft:flash ~ ~1 ~ 0 0 0 0 1 force @a
