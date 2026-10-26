$effect give @a[tag=MKSpellTarget] minecraft:slowness $(duration) $(level) true
$execute if score @s MKDark matches 20.. run effect give @a[tag=MKSpellTarget] minecraft:darkness $(duration) 0 true
$execute if score @s MKDark matches 70.. run effect give @a[tag=MKSpellTarget] minecraft:jump_boost $(duration) 199 true
