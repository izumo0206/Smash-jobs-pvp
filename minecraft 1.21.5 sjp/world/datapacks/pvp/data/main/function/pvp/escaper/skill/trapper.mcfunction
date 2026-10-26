#トラッパー


#画面表示
execute if entity @a[tag=Escaper,scores={SelectJum=1}] as @a[tag=Escaper,scores={SelectJum=1}] run title @s actionbar [{"text":"罠 cd:200","color":"gray"},{"text":"   CD:  ","color":"black"},{"score":{"name":"*","objective":"EscaperCooldown"},"color":"dark_purple"}]

#罠実行
execute as @a[tag=Escaper,scores={EscaperCooldown=..0,shearsDrop=1..}] run function main:pvp/escaper/skill/trapper_sub

execute at @e[tag=Escapertrap,team=Blue] run execute at @a[distance=..2,team=Red] run function main:pvp/escaper/skill/trapper_sub_sub