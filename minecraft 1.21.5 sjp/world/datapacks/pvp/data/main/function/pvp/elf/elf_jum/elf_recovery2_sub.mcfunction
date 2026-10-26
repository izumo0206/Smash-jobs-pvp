#ElfRecovery2実行


#タグ付け
execute as @a[tag=Elf,scores={ElfCooldown=..0,ElfMP=500..,SelectJum=102},nbt={SelectedItem:{id:"minecraft:stick"}}] run tag @s add ElfRecovery2


#効果音
execute at @a[team=Blue,tag=ElfRecovery2] run playsound minecraft:entity.player.levelup master @a[team=Blue] ~ ~ ~ 0.3 2

execute at @a[team=Red,tag=ElfRecovery2] run playsound minecraft:entity.player.levelup master @a[team=Red] ~ ~ ~ 0.3 2


#回復魔法
 #パーティクル
  #自分
execute at @a[tag=ElfRecovery2] run particle minecraft:heart ~ ~ ~ 1.5 2 1.5 0.5 5 normal
  #魔法陣(全員)
execute if entity @a[team=Blue,tag=ElfRecovery2] run execute at @a[team=Blue] run function main:pvp/elf/elf_particle/elf_particle_recovery2
execute if entity @a[team=Red,tag=ElfRecovery2] run execute at @a[team=Red] run function main:pvp/elf/elf_particle/elf_particle_recovery2
 #HP全回復
execute at @a[team=Blue,tag=ElfRecovery2] run effect give @e[team=Blue] minecraft:instant_health 1 250
execute at @a[team=Red,tag=ElfRecovery2] run effect give @e[team=Red] minecraft:instant_health 1 250
 #リジェネ2
execute at @a[team=Blue,tag=ElfRecovery2] run effect give @e[team=Blue] minecraft:regeneration 5 1
execute at @a[team=Red,tag=ElfRecovery2] run effect give @e[team=Red] minecraft:regeneration 5 1
 #リジェネ1
execute at @a[team=Blue,tag=ElfRecovery2] run effect give @e[team=Blue] minecraft:regeneration 10 0
execute at @a[team=Red,tag=ElfRecovery2] run effect give @e[team=Red] minecraft:regeneration 10 0
 #満腹度回復2
execute at @a[team=Blue,tag=ElfRecovery2] run effect give @e[team=Blue] minecraft:saturation 10 1
execute at @a[team=Red,tag=ElfRecovery2] run effect give @e[team=Red] minecraft:saturation 10 1

#仕上げ
scoreboard players remove @a[tag=ElfRecovery2] ElfMP 500

scoreboard players set @a[tag=ElfRecovery2] ElfCooldown 200

scoreboard players set @a[tag=ElfRecovery2] sneak 0

tag @a[tag=ElfRecovery2] remove ElfRecovery2