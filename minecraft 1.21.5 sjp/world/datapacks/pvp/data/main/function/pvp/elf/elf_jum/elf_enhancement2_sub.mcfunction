#ElfEnhancement2実行


#タグ付け
execute as @a[tag=Elf,scores={ElfCooldown=..0,ElfMP=500..,SelectJum=112},nbt={SelectedItem:{id:"minecraft:stick"}}] run tag @s add ElfEnhancement2


#効果音
execute at @a[team=Blue,tag=ElfEnhancement2] run playsound minecraft:block.amethyst_block.resonate master @a[team=Blue] ~ ~ ~ 20 1 1

execute at @a[team=Red,tag=ElfEnhancement2] run playsound minecraft:block.amethyst_block.resonate master @a[team=Red] ~ ~ ~ 20 1 1


#身体強化魔法
 #パーティクル
  #自分
execute at @a[tag=ElfEnhancement2] run particle minecraft:glow ~ ~ ~ 1.5 2 1.5 1 5 normal
  #魔法陣(全員)
execute if entity @a[team=Blue,tag=ElfEnhancement2] at @a[team=Blue] run function main:pvp/elf/elf_particle/elf_particle_enhancement2
execute if entity @a[team=Red,tag=ElfEnhancement2] at @a[team=Red] run function main:pvp/elf/elf_particle/elf_particle_enhancement2
 #ストレングス
execute at @a[team=Blue,tag=ElfEnhancement2] run effect give @e[team=Blue] minecraft:strength 10 0
execute at @a[team=Red,tag=ElfEnhancement2] run effect give @e[team=Red] minecraft:strength 10 0
 #耐性
execute at @a[team=Blue,tag=ElfEnhancement2] run effect give @e[team=Blue] minecraft:resistance 10 0
execute at @a[team=Red,tag=ElfEnhancement2] run effect give @e[team=Red] minecraft:resistance 10 0
 #スピード
execute at @a[team=Blue,tag=ElfEnhancement2] run effect give @e[team=Blue] minecraft:speed 10 1
execute at @a[team=Red,tag=ElfEnhancement2] run effect give @e[team=Red] minecraft:speed 10 1
 #跳躍
execute at @a[team=Blue,tag=ElfEnhancement2] run effect give @e[team=Blue] minecraft:jump_boost 10 1
execute at @a[team=Red,tag=ElfEnhancement2] run effect give @e[team=Red] minecraft:jump_boost 10 1
 #火炎耐性
execute at @a[team=Blue,tag=ElfEnhancement2] run effect give @e[team=Blue] minecraft:fire_resistance 10 0
execute at @a[team=Red,tag=ElfEnhancement2] run effect give @e[team=Red] minecraft:fire_resistance 10 0


#仕上げ
scoreboard players remove @a[tag=ElfEnhancement2] ElfMP 500

scoreboard players set @a[tag=ElfEnhancement2] ElfCooldown 500

scoreboard players set @a[tag=ElfEnhancement2] sneak 0

tag @a[tag=ElfEnhancement2] remove ElfEnhancement2