#粘液

#タグ付け
execute as @a[tag=Prototype] run tag @s add Neneki

execute at @a[tag=Neneki] run playsound minecraft:entity.slime.death master @a[distance=..6] ~ ~ ~ 5
execute at @a[tag=Neneki] at @a[tag=!Neneki,distance=..10] run particle minecraft:squid_ink ~ ~ ~ 1 1 1 0.1 100 normal

kill @e[type=item,nbt={Item:{id:"minecraft:honeycomb"}}]

#効果実行
execute at @a[tag=Neneki,team=Red] run effect give @a[team=Blue,distance=..10] minecraft:poison 10 2 true
execute at @a[tag=Neneki,team=Red] run effect give @a[team=Blue,distance=..10] minecraft:slowness 10 2 true

execute at @a[tag=Neneki,team=Blue] run effect give @a[team=Red,distance=..10] minecraft:poison 10 2 true
execute at @a[tag=Neneki,team=Blue] run effect give @a[team=Red,distance=..10] minecraft:slowness 10 2 true


#スコアボード
scoreboard players set @s prptotype_kill 0
scoreboard players set @s proto_Neneki 0
tag @a[tag=Neneki] remove Neneki