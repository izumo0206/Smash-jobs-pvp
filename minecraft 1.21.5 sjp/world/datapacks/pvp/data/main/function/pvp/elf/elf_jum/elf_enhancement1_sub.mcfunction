#ElfEnhancement1実行


#タグ付け
execute as @a[tag=Elf,scores={ElfCooldown=..0,ElfMP=100..,SelectJum=111},nbt={SelectedItem:{id:"minecraft:stick"}}] run tag @s add ElfEnhancement1


#効果音
execute at @a[team=Blue,tag=ElfEnhancement1] run playsound minecraft:block.amethyst_block.resonate master @a[team=Blue,distance=..3] ~ ~ ~ 20 1 1

execute at @a[team=Red,tag=ElfEnhancement1] run playsound minecraft:block.amethyst_block.resonate master @a[team=Red,distance=..3] ~ ~ ~ 20 1 1


#身体強化魔法
 #パーティクル
  #自分
execute at @a[tag=ElfEnhancement1] run particle minecraft:glow ~ ~ ~ 0.5 1 0.5 1 1 normal
  #魔法陣
execute at @a[tag=ElfEnhancement1] run function main:pvp/elf/elf_particle/elf_particle_enhancement1
 #ストレングス
execute at @a[team=Blue,tag=ElfEnhancement1] run effect give @e[team=Blue,distance=..3] minecraft:strength 10 0
execute at @a[team=Red,tag=ElfEnhancement1] run effect give @e[team=Red,distance=..3] minecraft:strength 10 0
 #耐性
execute at @a[team=Blue,tag=ElfEnhancement1] run effect give @e[team=Blue,distance=..3] minecraft:resistance 10 0
execute at @a[team=Red,tag=ElfEnhancement1] run effect give @e[team=Red,distance=..3] minecraft:resistance 10 0
 #スピード
execute at @a[team=Blue,tag=ElfEnhancement1] run effect give @e[team=Blue,distance=..3] minecraft:speed 10 0
execute at @a[team=Red,tag=ElfEnhancement1] run effect give @e[team=Red,distance=..3] minecraft:speed 10 0
 #跳躍
execute at @a[team=Blue,tag=ElfEnhancement1] run effect give @e[team=Blue,distance=..3] minecraft:jump_boost 10 0
execute at @a[team=Red,tag=ElfEnhancement1] run effect give @e[team=Red,distance=..3] minecraft:jump_boost 10 0


#仕上げ
scoreboard players remove @a[tag=ElfEnhancement1] ElfMP 100

scoreboard players set @a[tag=ElfEnhancement1] ElfCooldown 50

scoreboard players set @a[tag=ElfEnhancement1] sneak 0

tag @a[tag=ElfEnhancement1] remove ElfEnhancement1