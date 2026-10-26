# 押下者のチームへ降参票を登録

execute unless entity @s[team=Red] unless entity @s[team=Blue] run tellraw @s {"text":"試合参加チームに所属していないため、降参できません","color":"red"}

execute if entity @s[team=Red,tag=Surrender] run tellraw @s {"text":"すでに降参に同意しています","color":"red"}
execute if entity @s[team=Blue,tag=Surrender] run tellraw @s {"text":"すでに降参に同意しています","color":"red"}

execute if entity @s[team=Red,tag=!Surrender] run function main:stage/surrender/red
execute if entity @s[team=Blue,tag=!Surrender] run function main:stage/surrender/blue
