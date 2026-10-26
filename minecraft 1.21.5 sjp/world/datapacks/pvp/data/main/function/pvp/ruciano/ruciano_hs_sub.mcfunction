#縫世実行


execute at @a[tag=RucianoHs] run playsound minecraft:theworld master @a ~ ~ ~ 5

kill @e[type=item,nbt={Item:{id:"minecraft:clock"}}]

#縫世実行

execute at @a[tag=RucianoHs] run effect give @a[tag=!Ruciano] minecraft:blindness 5 9
execute at @a[tag=RucianoHs] run effect give @a[tag=!Ruciano] minecraft:weakness 5 200
execute at @a[tag=RucianoHs] run effect give @a[tag=!Ruciano] minecraft:slowness 5 200
execute at @a[tag=RucianoHs] run effect give @a[tag=!Ruciano] minecraft:jump_boost 5 237
execute at @a[tag=RucianoHs] run effect give @a[tag=Ruciano] minecraft:speed 5 0 true
execute at @a[tag=RucianoHs] run effect give @a[tag=Ruciano] minecraft:resistance 5 5 true
execute as @a[tag=RucianoHs] run give @a[tag=Ruciano] minecraft:iron_sword[attribute_modifiers=[{"type":"attack_damage","amount":55,"operation":"add_value","slot":"mainhand","id":"2"},{"type":"entity_interaction_range","amount":1,"operation":"add_value","slot":"mainhand","id":"2"}],custom_name="チェックメイト",enchantment_glint_override=true]


#仕上げ
schedule function main:pvp/ruciano/ruciano_hs_sub_sub 120
scoreboard players set @a[tag=Ruciano] sneak 0
scoreboard players set @a[tag=RucianoHs] Stopwatch 0
tag @a[tag=RucianoHs] remove RucianoHs