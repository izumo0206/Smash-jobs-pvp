$execute if entity @s[tag=GuBlue] as @e[type=player,team=Red,gamemode=!spectator,distance=..$(fire_radius)] run function main:pvp/guerrilla/reward/fire_hit {damage:$(fire_damage)}
$execute if entity @s[tag=GuRed] as @e[type=player,team=Blue,gamemode=!spectator,distance=..$(fire_radius)] run function main:pvp/guerrilla/reward/fire_hit {damage:$(fire_damage)}
$execute if entity @s[tag=GuBlue] as @e[type=!player,type=!#main:gu_not_target,team=!Blue,tag=!GuBomb,distance=..$(fire_radius)] run function main:pvp/guerrilla/reward/fire_hit {damage:$(fire_damage)}
$execute if entity @s[tag=GuRed] as @e[type=!player,type=!#main:gu_not_target,team=!Red,tag=!GuBomb,distance=..$(fire_radius)] run function main:pvp/guerrilla/reward/fire_hit {damage:$(fire_damage)}
