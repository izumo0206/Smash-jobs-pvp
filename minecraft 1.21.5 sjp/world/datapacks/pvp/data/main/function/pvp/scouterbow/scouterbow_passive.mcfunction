#スカウター パッシブ


#スカウターパッシブ
effect give @a[tag=ScouterBow,scores={sneak=1..}] minecraft:speed 1 13 true
effect give @a[tag=ScouterBow,scores={sneak=1..}] minecraft:invisibility 1 1 true

execute as @a[tag=ScouterBow,scores={sneak=1..}] run scoreboard players set @s sneak 0

#スニーク消す
scoreboard players set @a[tag=ScouterBow,scores={sneak=1..}] sneak 0