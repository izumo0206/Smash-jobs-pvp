#ガーディアン

execute if entity @a[tag=Guardian,scores={trident=1..}] run schedule function main:pvp/guardian/guardian_sub 8t

execute if entity @a[tag=Guardian,scores={trident=1..}] run scoreboard players set @a[tag=Guardian] trident 0

execute as @e[type=minecraft:trident,nbt={inGround:true}] run kill @s

execute at @e[type=minecraft:ender_pearl] run particle minecraft:reverse_portal ~ ~ ~ 0.5 0.5 0.5 0 100

execute if entity @a[tag=Guardian] as @a[tag=Guardian] run title @s actionbar [{"text":"回廊跳躍 ct:10 ","color":"dark_gray"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"}]

execute as @a[tag=Guardian,scores={sneak=10..}] run function main:pvp/guardian/enpa

execute as @a[tag=Guardian,scores={ender_pearl=1..}] at @s run function main:pvp/guardian/used_enpa

#エンパ無限回収
item replace entity @a[tag=Guardian] container.1 with minecraft:ender_pearl