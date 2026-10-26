#魔法使いMP

#タグ付け
execute as @a[tag=Wizard,scores={sneak=1..,walk=0,dash=0},nbt={SelectedItem:{id:"minecraft:nether_star",components:{"minecraft:custom_name":"魔法の素"}}}] run tag @s add WizardMP

execute at @a[tag=WizardMP] run particle minecraft:witch ~ ~ ~ 0.5 0.6 0.5 1 1 normal

scoreboard players add @a[tag=WizardMP] WizardMP 1
scoreboard players set @a[tag=WizardMP] sneak 0

#タグ剥奪
tag @a[tag=WizardMP] remove WizardMP