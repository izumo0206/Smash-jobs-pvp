#スロット3の敵刻印登録

#Red祭司 -> Blue敵
execute if entity @s[team=Red] at @s as @a[team=Blue,distance=..4,limit=1,sort=nearest] run function main:pvp/wraith/sub_mark_red3
#Blue祭司 -> Red敵
execute if entity @s[team=Blue] at @s as @a[team=Red,distance=..4,limit=1,sort=nearest] run function main:pvp/wraith/sub_mark_blue3
#チームなし
execute unless entity @s[team=Red] unless entity @s[team=Blue] at @s as @a[distance=0.1..4,limit=1,sort=nearest] run function main:pvp/wraith/sub_mark_none3
