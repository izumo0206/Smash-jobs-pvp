#"再生"

#タグ付け
execute as @a[tag=Prototype] run tag @s add Saisei

execute at @a[tag=Saisei] run playsound minecraft:entity.slime.jump master @a[distance=..6] ~ ~ ~ 5
execute at @a[tag=Saisei] run particle minecraft:item_slime ~ ~ ~ 1 1 1 1 100 normal

kill @e[type=item,nbt={Item:{id:"minecraft:slime_ball"}}]

#効果実行
execute at @a[tag=Saisei] run effect give @a minecraft:regeneration 5 2

#スコアボード
scoreboard players set @s prptotype_kill 0
scoreboard players set @s proto_Saisei 0
tag @a[tag=Saisei] remove Saisei