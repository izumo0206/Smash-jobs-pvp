#スカウター パッシブ


#スカウターパッシブ
effect give @a[tag=Scouter,scores={sneak=1..}] minecraft:speed 1 18 true
effect give @a[tag=Scouter,scores={sneak=1..}] minecraft:invisibility 1 1 true
#execute as @a[tag=Scouter,scores={sneak=1..}] at @a[tag=Scouter] run particle minecraft:ash ~ ~ ~ 0.5 1 0.5 0.01 4 force @a



execute as @a[tag=Scouter,scores={sneak=1..}] run scoreboard players set @s sneak 0

#スニーク消す
scoreboard players set @a[tag=Scouter,scores={sneak=1..}] sneak 0