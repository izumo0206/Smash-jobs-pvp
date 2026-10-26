#ElfRecovery1実行


#タグ付け
execute as @a[tag=Elf,scores={ElfCooldown=..0,ElfMP=100..,SelectJum=101},nbt={SelectedItem:{id:"minecraft:stick"}}] run tag @s add ElfRecovery1


#効果音
execute at @a[team=Blue,tag=ElfRecovery1] run playsound minecraft:entity.player.levelup master @a[team=Blue,distance=..3] ~ ~ ~ 0.3 2

execute at @a[team=Red,tag=ElfRecovery1] run playsound minecraft:entity.player.levelup master @a[team=Red,distance=..3] ~ ~ ~ 0.3 2


#回復魔法
 #パーティクル
  #自分
execute at @a[tag=ElfRecovery1] run particle minecraft:heart ~ ~ ~ 0.3 0.3 0.3 1 1 normal
  #魔法陣
execute at @a[tag=ElfRecovery1] run function main:pvp/elf/elf_particle/elf_particle_recovery1
 #HP全回復
execute at @a[team=Blue,tag=ElfRecovery1] run effect give @e[team=Blue,distance=..3] minecraft:instant_health 1 2
execute at @a[team=Red,tag=ElfRecovery1] run effect give @e[team=Red,distance=..3] minecraft:instant_health 1 2


#仕上げ
scoreboard players remove @a[tag=ElfRecovery1] ElfMP 100

scoreboard players set @a[tag=ElfRecovery1] ElfCooldown 100

scoreboard players set @a[tag=ElfRecovery1] sneak 0

tag @a[tag=ElfRecovery1] remove ElfRecovery1