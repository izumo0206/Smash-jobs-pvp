#爆発処理後に術者の一時耐性を外し、Armor Standを回収する
scoreboard players operation #wind_owner MKOwner = @s MKOwner
execute as @a if score @s MKOwner = #wind_owner MKOwner run attribute @s minecraft:explosion_knockback_resistance modifier remove main:magic_king_wind_self
kill @s

