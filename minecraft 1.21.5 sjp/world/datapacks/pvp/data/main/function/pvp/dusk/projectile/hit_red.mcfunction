execute positioned ~ ~-0.8 ~ run effect give @a[team=Blue,distance=..1.25,sort=nearest,limit=1] minecraft:darkness 5 0 true
execute as @a[tag=Dusk] if score @s DuskOwner = @e[tag=DuskProjectileCurrent,limit=1] DuskOwner run scoreboard players remove @s DuskCooldown 50
execute as @a[tag=Dusk,scores={DuskCooldown=..-1}] if score @s DuskOwner = @e[tag=DuskProjectileCurrent,limit=1] DuskOwner run scoreboard players set @s DuskCooldown 0
playsound minecraft:entity.squid.squirt player @a[tag=Dusk] ~ ~ ~ 1 0.8
kill @s
