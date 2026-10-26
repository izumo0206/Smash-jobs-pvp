execute if entity @s[team=Blue] run kill @a[team=Red,gamemode=!spectator]
execute if entity @s[team=Red] run kill @a[team=Blue,gamemode=!spectator]
particle minecraft:flash ~ ~1 ~ 1 1 1 1 20 force
playsound minecraft:entity.wither.death master @a ~ ~ ~ 1 0.5
