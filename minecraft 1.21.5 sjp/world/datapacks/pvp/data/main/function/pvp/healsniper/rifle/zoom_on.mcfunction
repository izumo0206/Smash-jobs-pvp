#ズーム：移動速度を下げて視界を狭める（倍率は config の param.rifle.zoom）
tag @s add HsZoom
attribute @s minecraft:movement_speed modifier remove main:hs_zoom
$attribute @s minecraft:movement_speed modifier add main:hs_zoom $(zoom) add_multiplied_total
