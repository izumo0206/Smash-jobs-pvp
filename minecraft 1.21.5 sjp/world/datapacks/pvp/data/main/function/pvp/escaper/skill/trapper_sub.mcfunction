#逃亡者の罠実行

#タグ付け
execute as @a[tag=Escaper,scores={EscaperCooldown=..0,SelectJum=1}] run tag @s add EscaperTrap



execute at @a[tag=EscaperTrap] run playsound minecraft:entity.wither_skeleton.ambient master @s ~ ~ ~ 10

execute as @e[type=minecraft:item] if items entity @s contents minecraft:shears run kill @s

execute at @a[tag=EscaperTrap,team=Blue] run give @p minecraft:shears[custom_name='闇の罠',lore=['暗黒が貴様を包む']] 1


#闇の罠設置

execute at @a[tag=EscaperTrap,team=Blue] run particle minecraft:witch ~ ~ ~ 1 1 1 1 500 normal
execute at @a[tag=EscaperTrap,team=Red] run particle minecraft:witch ~ ~ ~ 1 1 1 1 500 normal

kill @e[tag=Escapertrap]

execute at @a[team=Blue,tag=EscaperTrap] unless entity @e[distance=..6,tag=trap] run summon minecraft:armor_stand ~ ~1 ~ {Invisible:1b,Marker:1b,CustomName:{text:'罠'},NoGravity:1b,Tags:['Escapertrap','trap','MTentity'],Team:'Blue'}

#仕上げ
scoreboard players set @a[tag=EscaperTrap] EscaperCooldown 200
scoreboard players set @a[tag=EscaperTrap] shearsDrop 0
tag @a[tag=EscaperTrap] remove EscaperTrap
