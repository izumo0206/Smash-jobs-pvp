scoreboard players operation @s WizardMP -= @s MKCost
scoreboard players operation @s WizardCooldown = @s MKCD
scoreboard players set @s sneak 0
#術者本人だけは爆風で飛ばないよう、一時的に爆発ノックバック耐性を加える
attribute @s minecraft:explosion_knockback_resistance modifier remove main:magic_king_wind_self
attribute @s minecraft:explosion_knockback_resistance modifier add main:magic_king_wind_self 1 add_value
#風20以降の15秒速度バフ
execute store result storage main:magicking level int 1 run scoreboard players get @s MKLevel
function main:pvp/magicking/spell/wind/summon_burst
execute if score @s MKWind matches 20..69 run function main:pvp/magicking/spell/wind/apply_self with storage main:magicking
execute if score @s MKWind matches 70.. if entity @s[team=Blue] run function main:pvp/magicking/spell/wind/apply_blue_entity with storage main:magicking
execute if score @s MKWind matches 70.. if entity @s[team=Red] run function main:pvp/magicking/spell/wind/apply_red_entity with storage main:magicking
#風20以降、速度上昇と同じ15秒の低速落下を味方entity全体へ付与
execute if score @s MKWind matches 20.. if entity @s[team=Blue] run effect give @e[team=Blue] minecraft:slow_falling 15 0 true
execute if score @s MKWind matches 20.. if entity @s[team=Red] run effect give @e[team=Red] minecraft:slow_falling 15 0 true
#発動時に8m以内へ敵playerがいる場合だけ風+1
scoreboard players set @s MKCount 0
execute if entity @s[team=Blue] if entity @a[team=Red,gamemode=!spectator,distance=..8] run scoreboard players set @s MKCount 1
execute if entity @s[team=Red] if entity @a[team=Blue,gamemode=!spectator,distance=..8] run scoreboard players set @s MKCount 1
execute if score @s MKCount matches 1.. run function main:pvp/magicking/element/add_wind
