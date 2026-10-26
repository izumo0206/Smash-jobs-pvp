execute as @a[tag=Knocbackisaac,scores={sneak=10..}] run tag @s add Sharpisaac

execute as @a[tag=Knocbackisaac,scores={sneak=10..}] run tag @s remove Knocbackisaac

execute as @a[tag=Isaac] run clear @a[tag=Isaac] minecraft:netherite_pickaxe

execute as @a[tag=Isaac] run give @a[tag=Isaac] netherite_hoe[attribute_modifiers=[{"type":"attack_damage","amount":2,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"attack_speed","amount":3,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"entity_interaction_range","amount":0.7,"operation":"add_value","slot":"mainhand","id":"2"}],custom_name="グラインダー",lore=["血がこびりついている"],unbreakable={}]

return 0
