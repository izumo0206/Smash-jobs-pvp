#パルプンテ5

#タグ付け
tag @a[tag=WizardPulpunte] add WizardPulpunte5
#効果
execute as @a[team=Blue,tag=WizardPulpunte5] at @s run particle minecraft:effect ~ ~ ~ 1 1 1 1 100 normal
execute as @a[team=Red,tag=WizardPulpunte5] at @s run particle minecraft:effect ~ ~ ~ 1 1 1 1 100 normal

execute as @a[tag=WizardPulpunte5,team=Blue] at @s run summon minecraft:skeleton ^0.5 ^0.5 ^-0.5 {Tags:["MTentity"],CustomNameVisible:1b,Team:"Blue",CustomName:{text:"青チームの護衛",color:"blue"},equipment:{mainhand:{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{"minecraft:unbreaking":255,"minecraft:power":10}}},feet:{id:"minecraft:netherite_boots",count:1,components:{"minecraft:unbreakable":{},"minecraft:enchantments":{"minecraft:unbreaking":255}}},legs:{id:"minecraft:netherite_leggings",count:1,components:{"minecraft:unbreakable":{},"minecraft:enchantments":{"minecraft:unbreaking":255}}},chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:unbreakable":{},"minecraft:enchantments":{"minecraft:unbreaking":255}}},head:{id:"minecraft:leather_helmet",count:1,components:{"minecraft:dyed_color":255,"minecraft:unbreakable":{},"minecraft:enchantments":{"minecraft:unbreaking":255}}}}}
execute as @a[tag=WizardPulpunte5,team=Red] at @s run summon minecraft:skeleton ^0.5 ^0.5 ^-0.5 {Tags:["MTentity"],CustomNameVisible:1b,Team:"Red",CustomName:{text:"赤チームの護衛",color:"red"},equipment:{mainhand:{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{"minecraft:unbreaking":255,"minecraft:power":10}}},feet:{id:"minecraft:netherite_boots",count:1,components:{"minecraft:unbreakable":{},"minecraft:enchantments":{"minecraft:unbreaking":255}}},legs:{id:"minecraft:netherite_leggings",count:1,components:{"minecraft:unbreakable":{},"minecraft:enchantments":{"minecraft:unbreaking":255}}},chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:unbreakable":{},"minecraft:enchantments":{"minecraft:unbreaking":255}}},head:{id:"minecraft:leather_helmet",count:1,components:{"minecraft:dyed_color":16711680,"minecraft:unbreakable":{},"minecraft:enchantments":{"minecraft:unbreaking":255}}}}}


tag @a[tag=WizardPulpunte5] remove WizardPulpunte5
tag @a[tag=WizardPulpunte] remove WizardPulpunte
