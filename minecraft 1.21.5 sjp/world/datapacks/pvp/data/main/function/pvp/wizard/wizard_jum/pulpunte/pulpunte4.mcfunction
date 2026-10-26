#パルプンテ4

#タグ付け
tag @a[tag=WizardPulpunte] add WizardPulpunte4
#効果
execute as @a[team=Blue,tag=WizardPulpunte4] at @e[team=Red] run particle minecraft:effect ~ ~ ~ 1 1 1 1 100 normal
execute as @a[team=Red,tag=WizardPulpunte4] at @e[team=Blue] run particle minecraft:effect ~ ~ ~ 1 1 1 1 100 normal

execute as @a[tag=WizardPulpunte4,team=Blue] at @e[team=Red] run summon minecraft:spectral_arrow ~ ~80 ~ {Tags:[bombing,"MTentity"]}
execute as @a[tag=WizardPulpunte4,team=Red] at @e[team=Blue] run summon minecraft:spectral_arrow ~ ~80 ~ {Tags:[bombing,"MTentity"]}


tag @a[tag=WizardPulpunte4] remove WizardPulpunte4
tag @a[tag=WizardPulpunte] remove WizardPulpunte
