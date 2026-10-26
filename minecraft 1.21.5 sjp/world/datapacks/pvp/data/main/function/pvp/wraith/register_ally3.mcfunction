#スロット3の味方登録

#Redチーム
execute if entity @s[team=Red] at @s as @a[team=Red,distance=0.1..3,limit=1,sort=nearest] run function main:pvp/wraith/sub_reg_ally_red3
#Blueチーム
execute if entity @s[team=Blue] at @s as @a[team=Blue,distance=0.1..3,limit=1,sort=nearest] run function main:pvp/wraith/sub_reg_ally_blue3
#チームなし
execute unless entity @s[team=Red] unless entity @s[team=Blue] at @s as @a[distance=0.1..3,limit=1,sort=nearest] run function main:pvp/wraith/sub_reg_ally_none3
