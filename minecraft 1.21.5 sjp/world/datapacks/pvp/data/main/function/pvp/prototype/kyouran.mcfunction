#狂乱

#タグ付け
execute as @a[tag=Prototype] run tag @s add Kyouran

execute at @a[tag=Kyouran] run playsound minecraft:block.beacon.power_select master @a[distance=..6] ~ ~ ~ 5

kill @e[type=item,nbt={Item:{id:"minecraft:redstone"}}]

#効果実行
execute at @a[tag=Kyouran] run effect give @s minecraft:strength 4 1

#スコアボード
scoreboard players set @s prptotype_kill 0
scoreboard players set @s proto_Kyouran 0
tag @a[tag=Kyouran] remove Kyouran