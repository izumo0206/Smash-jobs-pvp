#アッシュ


#スキル本回収
execute if entity @a[tag=Ashe] run function main:pvp/ashe/ashe_skill

#Eの発光
execute at @e[tag=asheEblue] run execute at @e[distance=..8,team=Red] run effect give @p minecraft:glowing 3 1 true
execute at @e[tag=asheEred] run execute at @e[distance=..8,team=Blue] run effect give @p minecraft:glowing 3 1 true