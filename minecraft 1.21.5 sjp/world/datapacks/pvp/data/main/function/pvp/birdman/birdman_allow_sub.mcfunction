#花火回収実行

#タグ付け
execute as @a[tag=Birdman,scores={BirdmanCooldown=..0,sneak=200..}] run tag @s add BirdmanArrow



execute at @a[tag=BirdmanArrow] run playsound minecraft:entity.arrow.shoot master @s ~ ~ ~ 0.5 2 1



#花火回収実行

execute at @a[tag=BirdmanArrow] run give @p minecraft:firework_rocket 16



#仕上げ
scoreboard players set @a[tag=BirdmanArrow] sneak 0
scoreboard players set @a[tag=BirdmanArrow] BirdmanCooldown 400
tag @a[tag=BirdmanArrow] remove BirdmanArrow