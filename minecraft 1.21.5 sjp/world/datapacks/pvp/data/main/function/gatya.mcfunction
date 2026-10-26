#アレイの卵を捨てたプレイヤーを検知
execute as @a[scores={gatya=1..}] at @s run tag @s add Gatya

#アイテムを配る
execute as @a[tags=Gatya] run effect give @a minecraft:instant_health 1 3 true