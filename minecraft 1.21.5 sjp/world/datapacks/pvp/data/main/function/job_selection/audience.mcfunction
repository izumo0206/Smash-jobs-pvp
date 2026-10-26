#観客


#タグ消し
execute as @e[tag=KansatusyaNoMa] at @s run tag @p remove Assist
execute as @e[tag=KansatusyaNoMa] at @s run tag @p remove Wizard
execute as @e[tag=KansatusyaNoMa] at @s run tag @p remove Scouter
execute as @e[tag=KansatusyaNoMa] at @s run tag @p remove Bow
execute as @e[tag=KansatusyaNoMa] at @s run tag @p remove Pirate
execute as @e[tag=KansatusyaNoMa] at @s run tag @p remove Sword

#暴発防止
execute at @e[tag=KansatusyaNoMa] run scoreboard players set @p sneak 0
execute at @e[tag=KansatusyaNoMa] run team leave @p

#タグ付け
execute as @e[tag=KansatusyaNoMa] at @s run tag @p add Kansatusya

#持ち物
execute at @e[tag=KansatusyaNoMa] run gamemode spectator @p
execute as @e[tag=KansatusyaNoMa] at @s run tp @p @p[tag=!Kansatusya,limit=1]