$execute if entity @s[team=Blue] run effect give @a[team=Red,gamemode=!spectator] minecraft:glowing $(seconds) 0 true
$execute if entity @s[team=Red] run effect give @a[team=Blue,gamemode=!spectator] minecraft:glowing $(seconds) 0 true
