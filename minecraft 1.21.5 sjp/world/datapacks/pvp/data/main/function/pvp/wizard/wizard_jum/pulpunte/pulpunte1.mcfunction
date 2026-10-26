#パルプンテ1

#タグ付け
tag @a[tag=WizardPulpunte] add WizardPulpunte1
#効果
execute as @a[team=Blue,tag=WizardPulpunte1] at @e[team=Red] run particle minecraft:effect ~ ~ ~ 1 1 1 1 100 normal
execute as @a[team=Red,tag=WizardPulpunte1] at @e[team=Blue] run particle minecraft:effect ~ ~ ~ 1 1 1 1 100 normal

execute as @a[team=Blue,tag=WizardPulpunte1] at @e[team=Red] run summon minecraft:evoker_fangs ~ ~ ~ {Tags:["MTentity"],Warmup:20}
execute as @a[team=Blue,tag=WizardPulpunte1] at @e[team=Red] run summon minecraft:evoker_fangs ~ ~ ~ {Tags:["MTentity"],Warmup:30}
execute as @a[team=Blue,tag=WizardPulpunte1] at @e[team=Red] run summon minecraft:evoker_fangs ~ ~ ~ {Tags:["MTentity"],Warmup:40}
execute as @a[team=Blue,tag=WizardPulpunte1] at @e[team=Red] run summon minecraft:evoker_fangs ~ ~ ~ {Tags:["MTentity"],Warmup:50}
execute as @a[team=Blue,tag=WizardPulpunte1] at @e[team=Red] run summon minecraft:evoker_fangs ~ ~ ~ {Tags:["MTentity"],Warmup:60}

execute as @a[team=Red,tag=WizardPulpunte1] at @e[team=Blue] run summon minecraft:evoker_fangs ~ ~ ~ {Tags:["MTentity"],Warmup:20}
execute as @a[team=Red,tag=WizardPulpunte1] at @e[team=Blue] run summon minecraft:evoker_fangs ~ ~ ~ {Tags:["MTentity"],Warmup:30}
execute as @a[team=Red,tag=WizardPulpunte1] at @e[team=Blue] run summon minecraft:evoker_fangs ~ ~ ~ {Tags:["MTentity"],Warmup:40}
execute as @a[team=Red,tag=WizardPulpunte1] at @e[team=Blue] run summon minecraft:evoker_fangs ~ ~ ~ {Tags:["MTentity"],Warmup:50}
execute as @a[team=Red,tag=WizardPulpunte1] at @e[team=Blue] run summon minecraft:evoker_fangs ~ ~ ~ {Tags:["MTentity"],Warmup:60}



tag @a[tag=WizardPulpunte1] remove WizardPulpunte1
tag @a[tag=WizardPulpunte] remove WizardPulpunte
