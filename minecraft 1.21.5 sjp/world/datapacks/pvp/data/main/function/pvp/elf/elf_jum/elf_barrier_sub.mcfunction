#ElfBarrier実行


#タグ付け
execute as @a[tag=Elf,scores={ElfCooldown=..0,ElfMP=500..,SelectJum=121},nbt={SelectedItem:{id:"minecraft:stick"}}] run tag @s add ElfBarrier


#効果音
execute at @a[team=Blue,tag=ElfBarrier] run playsound minecraft:entity.wither.spawn master @a[team=Blue,distance=..10] ~ ~ ~ 0.3 2

execute at @a[team=Red,tag=ElfBarrier] run playsound minecraft:entity.wither.spawn master @a[team=Red,distance=..10] ~ ~ ~ 0.3 2


#結界魔法
 #パーティクル(自分)
execute at @a[tag=ElfBarrier] run particle minecraft:crit ~ ~ ~ 0.3 0.3 0.3 1 10 normal
 #アマスタ召喚
  #球
execute at @a[team=Blue,tag=ElfBarrier] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ElfRadius","BlueBarrierRadius","MTentity"],Marker:true,Invisible:true,NoGravity:true,Rotation:[90F,-90F]}
execute at @a[team=Red,tag=ElfBarrier] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ElfRadius","RedBarrierRadius","MTentity"],Marker:true,Invisible:true,NoGravity:true,Rotation:[90F,-90F]}
  #魔法陣
execute at @a[team=Blue,tag=ElfBarrier] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ElfCircle","BlueBarrierRadius","MTentity"],Marker:true,Invisible:true,NoGravity:true}
execute at @a[team=Red,tag=ElfBarrier] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ElfCircle","MTentity"],Marker:true,Invisible:true,NoGravity:true}
 #アマスタ消す
schedule function main:pvp/elf/elf_armorstand_clear 200


#仕上げ
scoreboard players remove @a[tag=ElfBarrier] ElfMP 500

scoreboard players set @a[tag=ElfBarrier] ElfCooldown 500

scoreboard players set @a[tag=ElfBarrier] sneak 0

tag @a[tag=ElfBarrier] remove ElfBarrier
