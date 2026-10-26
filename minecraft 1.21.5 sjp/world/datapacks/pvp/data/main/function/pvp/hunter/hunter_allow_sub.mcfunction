#矢回収実行

#タグ付け
execute as @a[tag=Hunter,scores={sneak=200..}] run tag @s add HunterArrow



execute at @a[tag=HunterArrow] run playsound minecraft:entity.arrow.shoot master @s ~ ~ ~ 0.5 2 1



#矢回収実行

execute at @a[tag=HunterArrow,scores={Jump=0}] run clear @p minecraft:tipped_arrow[custom_name="毒の矢",potion_contents={"custom_color":369424,"custom_effects":[{"id":"hunger","amplifier":0,"duration":300},{"id":"poison","amplifier":1,"duration":300}]}]

execute at @a[tag=HunterArrow,scores={Jump=1}] run clear @p minecraft:tipped_arrow[custom_name="弱化の矢",potion_contents={"custom_color":9079434,"custom_effects":[{"id":"slowness","amplifier":1,"duration":400},{"id":"weakness","amplifier":1,"duration":400}]}]

execute at @a[tag=HunterArrow,scores={Jump=2}] run clear @p minecraft:tipped_arrow[custom_name="麻痺の矢",potion_contents={"custom_color":16776960,"custom_effects":[{"id":"slowness","amplifier":199,"duration":100},{"id":"jump_boost","amplifier":199,"duration":100}]}]


execute as @a[tag=HunterArrow,scores={Jump=0}] run give @s minecraft:tipped_arrow[custom_name="毒の矢",potion_contents={"custom_color":369424,"custom_effects":[{"id":"hunger","amplifier":0,"duration":300},{"id":"poison","amplifier":1,"duration":300}]}]

execute as @a[tag=HunterArrow,scores={Jump=1}] run give @s minecraft:tipped_arrow[custom_name="弱化の矢",potion_contents={"custom_color":9079434,"custom_effects":[{"id":"slowness","amplifier":1,"duration":400},{"id":"weakness","amplifier":1,"duration":400}]}]

execute as @a[tag=HunterArrow,scores={Jump=2}] run give @s minecraft:tipped_arrow[custom_name="麻痺の矢",potion_contents={"custom_color":16776960,"custom_effects":[{"id":"slowness","amplifier":199,"duration":100},{"id":"jump_boost","amplifier":199,"duration":100}]}]



#仕上げ
scoreboard players set @a[tag=HunterArrow] sneak 0
tag @a[tag=HunterArrow] remove HunterArrow