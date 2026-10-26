#シールド

#クールダウン
scoreboard players remove @a[tag=Sword,scores={shieldCooldown=1..}] shieldCooldown 1

#盾配布 ダメージリセット
execute as @a[tag=Sword,scores={shieldCooldown=1}] run give @s shield[attribute_modifiers=[{"type":"movement_speed","amount":-0.05,"operation":"add_value","slot":"offhand","id":"3"},{"type":"attack_damage","amount":-2,"operation":"add_value","slot":"offhand","id":"3"}],banner_patterns=[{pattern:"straight_cross",color:"white"}],base_color="black",custom_name="不動の盾",lore=["我が戦場に果ては無し"],unbreakable={}]
execute as @a[tag=Sword,scores={shieldCooldown=1}] run scoreboard players set @s shield 0


#表示
execute as @a[tag=Sword] run title @s actionbar [{"text":"盾耐久値","color":"black"},{"text":" : "},{"score":{"name":"*","objective":"shield_sub"},"color":"dark_purple"},{"text":"   盾","color":"black"},{"text":"CD : "},{"score":{"name":"*","objective":"shieldCooldown"},"color":"dark_purple"}]

#剣投げ
#execute as @a[tag=Sword,scores={dropSword=1..}] at @s run function main:pvp/sword/throwsword

#execute as @e[type=armor_stand,tag=throwsword] at @s run tp ^ ^ ^1.0

#execute at @a[tag=Sword] run kill @e[distance=20..,tag=throwsword]

#表示用 演算
execute as @a[tag=Sword] run scoreboard players operation @s shield_sub = 盾耐久値 shield_sub
execute as @a[tag=Sword] run scoreboard players operation @s shield_sub -= @s shield

#既定のダメージ量を受けた
execute as @a[tag=Sword,scores={shield=3000..}] run clear @s minecraft:shield
execute as @a[tag=Sword,scores={shield=3000..}] run scoreboard players set @s shieldCooldown 3000
execute as @a[tag=Sword,scores={shield=3000..}] run scoreboard players set @s shield 0

#煙幕
function main:pvp/sword/smoke
