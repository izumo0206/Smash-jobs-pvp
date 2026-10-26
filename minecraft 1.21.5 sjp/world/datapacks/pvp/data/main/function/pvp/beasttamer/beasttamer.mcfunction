#ビーストテイマー　リピート



#MP回復
execute as @a[tag=Beasttamer,scores={sneak=1..,walk=0,dash=0},nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{display:{Name:'{"text":"獣の杖"}',Lore:['{"text":"MPを回復させる"}']}}}}] run function main:pvp/beasttamer/beasttamer_mp

scoreboard players set @a[tag=Beasttamer,scores={BeasttamerCooldown=1..}] sneak 0
scoreboard players set @a[tag=Beasttamer,scores={walk=1..}] sneak 0
scoreboard players set @a[tag=Beasttamer,scores={dash=1..}] sneak 0
scoreboard players remove @a[tag=Beasttamer,scores={BeasttamerCooldown=1..}] BeasttamerCooldown 1
scoreboard players set @a[tag=Beasttamer,scores={walk=1..}] walk 0
scoreboard players set @a[tag=Beasttamer,scores={dash=1..}] dash 0

kill @e[type=item,nbt={Item:{id:"minecraft:saddle"}}]

#詠唱時パーティクル
execute as @a[tag=Beasttamer,scores={sneak=1..}] run execute at @s run particle minecraft:effect ~ ~1 ~ 1 1 1 1 1 normal

#狼
execute at @e[tag=Wolf,team=Red] run effect give @a[team=Blue,distance=..2] minecraft:glowing 1 1 true
execute at @e[tag=Wolf,team=Blue] run effect give @a[team=Red,distance=..2] minecraft:glowing 1 1 true

#ビーストテイマーの魔法
execute if entity @a[tag=Beasttamer] run function main:pvp/beasttamer/beasttamer_summon

#ほね
item replace entity @a[tag=Beasttamer] container.0 with minecraft:bone