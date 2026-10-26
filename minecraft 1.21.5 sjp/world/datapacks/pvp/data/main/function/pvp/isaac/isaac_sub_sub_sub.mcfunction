execute as @a[tag=Isaac,scores={sneak=10..}] run tag @s add Knocbackisaac

execute as @a[tag=Knocbackisaac,scores={sneak=10..}] run tag @s remove Sharpisaac

execute as @a[tag=Knocbackisaac] run clear @a[tag=Knocbackisaac] minecraft:netherite_hoe

execute as @a[tag=Knocbackisaac] run give @a[tag=Knocbackisaac] minecraft:netherite_pickaxe[attribute_modifiers=[{"type":"movement_speed","amount":-0.1,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"armor","amount":5,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"attack_damage","amount":1,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"attack_knockback","amount":1.5,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"attack_speed","amount":0.5,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"entity_interaction_range","amount":1.2,"operation":"add_value","slot":"mainhand","id":"2"}],custom_name="クラッシャー",lore=["凶器であり狂気"],unbreakable={}]
