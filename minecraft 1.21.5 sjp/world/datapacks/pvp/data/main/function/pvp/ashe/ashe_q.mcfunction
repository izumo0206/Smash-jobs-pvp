#Q実行

execute if entity @a[tag=Ashe] run clear @p

execute if entity @a[tag=Ashe] run give @p minecraft:crossbow[custom_name="レンジャーフォーカス",enchantment_glint_override=true,enchantments={"quick_charge":5,"piercing":1},use_cooldown={seconds:0.5,cooldown_group:"2"},unbreakable={}]

execute if entity @a[tag=Ashe] run give @p minecraft:tipped_arrow[custom_name="氷の矢",potion_contents={"custom_color":7895160,"custom_effects":[{"id":"slowness","amplifier":0,"duration":800}]}] 8

execute if entity @a[tag=Ashe] run give @p minecraft:bread 64

give @p minecraft:diamond_boots[attribute_modifiers=[{"type":"armor","amount":0,"operation":"add_value","slot":"armor","id":"2"}],custom_name="タップダンサー",trim={"material":"diamond","pattern":"dune"},unbreakable={}]
item replace entity @p armor.feet from entity @p container.3
clear @p minecraft:diamond_boots 1