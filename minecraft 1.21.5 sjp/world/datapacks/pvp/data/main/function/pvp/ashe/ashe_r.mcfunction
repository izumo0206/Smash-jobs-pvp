#R実行

execute if entity @a[tag=Ashe] run clear @p

execute if entity @a[tag=Ashe] run give @p minecraft:crossbow[custom_name="クリスタルアロー",enchantments={"quick_charge":5},unbreakable={}]

execute if entity @a[tag=Ashe] run give @s minecraft:tipped_arrow[custom_name="クリスタルアロー",potion_contents={"custom_color":46079,"custom_effects":[{"id":"slowness","amplifier":199,"duration":800},{"id":"jump_boost","amplifier":199,"duration":800},{"id":"weakness","amplifier":199,"duration":800}]}]

execute if entity @a[tag=Ashe] run effect give @p minecraft:speed 4 4 true

scoreboard players set @a[tag=Ashe] sneak 150

execute if entity @a[tag=Ashe] run give @p minecraft:bread 64

give @p minecraft:diamond_boots[attribute_modifiers=[{"type":"armor","amount":0,"operation":"add_value","slot":"armor","id":"2"}],custom_name="タップダンサー",trim={"material":"diamond","pattern":"dune"},unbreakable={}]
clear @p minecraft:diamond_boots 1