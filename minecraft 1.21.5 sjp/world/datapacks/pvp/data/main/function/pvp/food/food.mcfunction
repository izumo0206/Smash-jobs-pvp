#再生能力CD減少
scoreboard players remove @a[scores={foodcd=1..}] foodcd 1

#再生能力CD付与
execute as @a[scores={foodcd=..0,food=20..}] run scoreboard players set @s foodcd 600

#再生能力付与
execute as @a[scores={foodcd=600,food=20..}] run effect give @s minecraft:regeneration 15 0 true
