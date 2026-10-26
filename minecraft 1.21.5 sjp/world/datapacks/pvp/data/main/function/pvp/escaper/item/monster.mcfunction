#モンスター

execute as @s[scores={EscaperPoint=10..}] run give @s minecraft:potion[custom_name='クリーチャーエナジー',lore=['Unleash the Creature !'],potion_contents={custom_color:52285,custom_effects:[{id:'minecraft:strength',amplifier:1,duration:100},{id:'minecraft:nausea',amplifier:0,duration:100,show_particles:false},{id:'minecraft:resistance',amplifier:3,duration:100,show_particles:false},{id:'minecraft:night_vision',amplifier:0,duration:100,show_particles:false},{id:'minecraft:bad_omen',amplifier:0,duration:100,show_particles:false}]}] 1

scoreboard players remove @s EscaperPoint 10
