#コーラ

execute as @s[scores={EscaperPoint=10..}] run give @s minecraft:potion[custom_name='コカ・コーカ',lore=['飲むとなんだかすっきりする'],potion_contents={custom_color:4921094,custom_effects:[{id:'minecraft:regeneration',amplifier:1,duration:200,show_particles:false},{id:'minecraft:night_vision',amplifier:0,duration:300,show_particles:false},{id:'minecraft:absorption',amplifier:1,duration:300,show_particles:false},{id:'minecraft:bad_omen',amplifier:0,duration:300,show_particles:false}]}] 1

scoreboard players remove @s EscaperPoint 10
