#WizardPulpunte実行

#タグ付け
tag @s add WizardPulpunte

execute at @s run particle minecraft:entity_effect{color:[1.0f,1.0f,1.0f,1.0f]} ~ ~ ~ 0.5 0.5 0.5 1 100 normal
execute at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 0.5 1 1

#仕上げ
scoreboard players set @s WizardCooldown 300
scoreboard players remove @s WizardMP 100
scoreboard players set @s sneak 0

#効果を6種類から均等抽選
execute store result storage main:pulpunte outcome int 1 run random value 0..5
execute if data storage main:pulpunte {outcome:0} run function main:pvp/wizard/wizard_jum/pulpunte/pulpunte0
execute if data storage main:pulpunte {outcome:1} run function main:pvp/wizard/wizard_jum/pulpunte/pulpunte1
execute if data storage main:pulpunte {outcome:2} run function main:pvp/wizard/wizard_jum/pulpunte/pulpunte2
execute if data storage main:pulpunte {outcome:3} run function main:pvp/wizard/wizard_jum/pulpunte/pulpunte3
execute if data storage main:pulpunte {outcome:4} run function main:pvp/wizard/wizard_jum/pulpunte/pulpunte4
execute if data storage main:pulpunte {outcome:5} run function main:pvp/wizard/wizard_jum/pulpunte/pulpunte5
