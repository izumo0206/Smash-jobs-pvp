#AssistHallucinations実行

#タグ付け
execute as @a[tag=Assist,scores={AssistCooldown=..0,sneak=30..,AssistMP=200..,Kirikae=5},nbt={SelectedItem:{id:"minecraft:blaze_rod",components:{"minecraft:custom_name":"アシストの杖"}}}] run tag @s add AssistHallucinations


#幻覚の杖実行
execute at @a[tag=AssistHallucinations] run particle minecraft:falling_lava ~ ~ ~ 1 1 1 1 100 normal
execute at @a[tag=AssistHallucinations] run playsound minecraft:block.respawn_anchor.deplete master @s ~ ~ ~ 0.5 2 1

execute if entity @a[team=Blue,tag=AssistHallucinations] run effect give @a[team=Red] minecraft:blindness 13 9
execute if entity @a[team=Red,tag=AssistHallucinations] run effect give @a[team=Blue] minecraft:blindness 13 9

execute if entity @a[team=Blue,tag=AssistHallucinations] at @a[team=Red] run particle minecraft:elder_guardian ~ ~ ~ 0 0 0 1 1
execute if entity @a[team=Red,tag=AssistHallucinations] at @a[team=Blue] run particle minecraft:elder_guardian ~ ~ ~ 0 0 0 1 1

#仕上げ
scoreboard players remove @a[tag=AssistHallucinations] AssistMP 200
scoreboard players set @a[tag=AssistHallucinations] AssistCooldown 100
scoreboard players set @a[tag=AssistHallucinations] sneak 0
tag @a[tag=AssistHallucinations] remove AssistHallucinations
