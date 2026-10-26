#エルフ　リピート

#精霊王の加護(MP回復)
scoreboard players add @a[tag=Elf] ElfMP 1

execute as @a[tag=Elf,scores={MPcharge=1..}] run function main:pvp/elf/elf_mp_charge


#処理
scoreboard players set @a[tag=Elf,scores={walk=1..}] sneak 0
scoreboard players set @a[tag=Elf,scores={dash=1..}] sneak 0
scoreboard players remove @a[tag=Elf,scores={ElfCooldown=1..}] ElfCooldown 1
scoreboard players set @a[tag=Elf,scores={walk=1..}] walk 0
scoreboard players set @a[tag=Elf,scores={dash=1..}] dash 0
scoreboard players remove @a[tag=Elf,scores={seireicooldown=1..}] seireicooldown 1

#いい匂い
execute at @a[tag=Elf] positioned ^ ^ ^-0.1 anchored eyes run particle minecraft:composter ~ ~1 ~ 0.2 0.2 0.2 1 1 normal


#魔法
 #回復魔法(小)
execute if entity @a[tag=Elf,scores={SelectJum=101}] run function main:pvp/elf/elf_jum/elf_recovery1
 #回復魔法(大)
execute if entity @a[tag=Elf,scores={SelectJum=102}] run function main:pvp/elf/elf_jum/elf_recovery2
 #身体強化(小)
execute if entity @a[tag=Elf,scores={SelectJum=111}] run function main:pvp/elf/elf_jum/elf_enhancement1
 #身体強化(大)
execute if entity @a[tag=Elf,scores={SelectJum=112}] run function main:pvp/elf/elf_jum/elf_enhancement2
 #結界魔法
execute if entity @a[tag=Elf,scores={SelectJum=121}] run function main:pvp/elf/elf_jum/elf_barrier 
 #状態回復魔法
execute if entity @a[tag=Elf,scores={SelectJum=131}] run function main:pvp/elf/elf_jum/elf_revert


#結界魔法効果
 #衝撃吸収
execute at @e[tag=BlueBarrierRadius] run effect give @e[team=Blue,distance=..10] minecraft:absorption 1 2
execute at @e[tag=RedBarrierRadius] run effect give @e[team=Red,distance=..10] minecraft:absorption 1 2
 #発光
execute at @e[tag=BlueBarrierRadius] run effect give @e[team=Red,distance=..10] minecraft:glowing 1 0
execute at @e[tag=RedBarrierRadius] run effect give @e[team=Blue,distance=..10] minecraft:glowing 1 0
 #結界魔法球状パーティクル
execute as @e[type=armor_stand,tag=ElfRadius] at @s run function main:pvp/elf/elf_barrier_particle/elf_barrier_particle2
 #結界魔法魔法陣
#execute at @e[type=armor_stand,tag=ElfCircle] run function main:pvp/elf/elf_particle/elf_particle_barrier



#風の精霊の加護

#木の精霊の加護(体力が16を切ると回復)
execute at @a[tag=Elf,scores={ElfHP=..16,ElfMP=50..,seireicooldown=..0}] run function main:pvp/elf/elf_seirei


#MP上限
scoreboard players set @a[tag=Elf,scores={ElfMP=3000..}] ElfMP 2999


#MPパーティクル
execute at @a[tag=Elf,scores={ElfMP=1000..}] run particle minecraft:composter ~ ~ ~ 0.5 1 0.5 1 1 normal

execute at @a[tag=Elf,scores={ElfMP=2000..}] run particle minecraft:composter ~ ~ ~ 0.5 1 0.5 1 3 normal

execute at @a[tag=Elf,scores={ElfMP=2999..}] run particle minecraft:composter ~ ~ ~ 1 1 1 1 7 normal


#ストレングス無効化
execute at @a[tag=Elf] run effect clear @a[tag=Elf] minecraft:strength


#木の精霊XP表示
execute at @a run execute if score @p seireicooldown matches 181..200 run xp set @p 10 levels
execute at @a run execute if score @p seireicooldown matches 161..180 run xp set @p 9 levels
execute at @a run execute if score @p seireicooldown matches 141..160 run xp set @p 8 levels
execute at @a run execute if score @p seireicooldown matches 121..140 run xp set @p 7 levels
execute at @a run execute if score @p seireicooldown matches 101..120 run xp set @p 6 levels
execute at @a run execute if score @p seireicooldown matches 81..100 run xp set @p 5 levels
execute at @a run execute if score @p seireicooldown matches 61..80 run xp set @p 4 levels
execute at @a run execute if score @p seireicooldown matches 41..60 run xp set @p 3 levels
execute at @a run execute if score @p seireicooldown matches 21..40 run xp set @p 2 levels
execute at @a run execute if score @p seireicooldown matches 1..20 run xp set @p 1 levels
execute at @a run execute if score @p seireicooldown matches 0 run xp set @p 0 levels
