#カルピス

execute as @s[scores={EscaperPoint=10..}] run give @s minecraft:potion[custom_name='カルチス',lore=['カラダにチッス。'],potion_contents={custom_color:16777215,custom_effects:[{id:'minecraft:resistance',amplifier:1,duration:300,show_particles:false},{id:'minecraft:water_breathing',amplifier:0,duration:300,show_particles:false},{id:'minecraft:night_vision',amplifier:0,duration:300,show_particles:false},{id:'minecraft:absorption',amplifier:0,duration:300,show_particles:false},{id:'minecraft:luck',amplifier:0,duration:300,show_particles:false}]}] 1

scoreboard players remove @s EscaperPoint 10
