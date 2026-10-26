#実行者：投げた本人
scoreboard players operation #id GuCalc = @s GuID
execute if entity @s[team=Blue] run scoreboard players set #team GuCalc 1
execute if entity @s[team=Red] run scoreboard players set #team GuCalc 2
