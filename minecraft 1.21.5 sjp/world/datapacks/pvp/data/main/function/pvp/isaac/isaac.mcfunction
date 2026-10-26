scoreboard players set @a[tag=Isaac,scores={walk=1..}] Ray 0
scoreboard players set @a[tag=Isaac,scores={dash=1..}] Ray 0
scoreboard players set @a[tag=Isaac,scores={walk=1..}] walk 0
scoreboard players set @a[tag=Isaac,scores={dash=1..}] dash 0

execute as @a[tag=Isaac,scores={walk=0,dash=0}] run scoreboard players add @a[tag=Isaac] Ray 1

execute if entity @a[tag=Isaac] as @a[tag=Isaac,scores={Ray=20..}] run title @s actionbar [{"text":"動いちゃダメ Ray:100 ","color":"black"},{"text":"   MP:  ","color":"black"},{"score":{"name":"*","objective":"Ray"},"color":"dark_purple"}]

execute at @a[tag=Isaac,scores={Ray=100..}] run particle minecraft:heart ~ ~ ~ 1 1 1 1 10 normal

execute as @a[tag=Isaac,scores={Ray=100..}] run effect give @a[tag=Isaac,scores={Ray=100..}] minecraft:instant_health 1 5
execute as @a[tag=Isaac,scores={Ray=100..}] run effect clear @a[tag=Isaac,scores={Ray=100..}] minecraft:poison

scoreboard players set @a[tag=Isaac,scores={Ray=100..}] Ray 0

scoreboard players set @a[tag=Isaac,scores={sneak=10..}] sneak 0
