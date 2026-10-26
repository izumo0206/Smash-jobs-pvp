#ElfRevert実行


#タグ付け
execute as @a[tag=Elf,scores={ElfCooldown=..0,ElfMP=200..,SelectJum=131},nbt={SelectedItem:{id:"minecraft:stick"}}] run tag @s add ElfRevert


#効果音
execute at @a[team=Blue,tag=ElfRevert] run playsound minecraft:entity.player.levelup master @a[team=Blue] ~ ~ ~ 0.3

execute at @a[team=Red,tag=ElfRevert] run playsound minecraft:entity.player.levelup master @a[team=Red] ~ ~ ~ 0.3


#状態回復
 #パーティクル
  #全員
execute at @e[team=Blue,tag=ElfRevert] run particle minecraft:composter ~ ~ ~ 1 1 1 1 50 normal
execute at @e[team=Red,tag=ElfRevert] run particle minecraft:composter ~ ~ ~ 1 1 1 1 50 normal
  #魔法陣(全員)
execute if entity @e[team=Blue,tag=ElfRevert] run execute at @a[team=Blue] run function main:pvp/elf/elf_particle/elf_particle_revert
execute if entity @e[team=Red,tag=ElfRevert] run execute at @a[team=Red] run function main:pvp/elf/elf_particle/elf_particle_revert
 #エフェクトクリア
execute at @a[team=Blue,tag=ElfRevert] run effect clear @e[team=Blue]
execute at @a[team=Red,tag=ElfRevert] run effect clear @e[team=Red]


#仕上げ
scoreboard players remove @a[tag=ElfRevert] ElfMP 200

scoreboard players set @a[tag=ElfRevert] ElfCooldown 200

scoreboard players set @a[tag=ElfRevert] sneak 0

tag @a[tag=ElfRevert] remove ElfRevert