#誠実なる友実行

#タグ付け
execute as @a[tag=Herobrine,scores={redstonecooldown=..0},nbt={Inventory:[{id:"minecraft:redstone"}]}] run tag @s add Herobrineredstone


execute at @a[tag=Herobrineredstone] run playsound minecraft:entity.bat.loop master @p ~ ~ ~ 0.8 0.5
execute at @a[tag=Herobrineredstone] run particle minecraft:heart

#鮮血
effect give @e[tag=Herobrineredstone] minecraft:regeneration 12 1 false
clear @a[tag=Herobrineredstone] minecraft:redstone 1

#仕上げ
scoreboard players set @e[tag=Herobrineredstone] redstonecooldown 400
tag @e[tag=Herobrineredstone] remove Herobrineredstone