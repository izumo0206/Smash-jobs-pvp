#罠師　リピート

#毒の罠
execute at @e[tag=poisontrap] run particle composter ~ ~-1 ~ 0 0 0 0 0

execute at @e[tag=poisontrap,team=Blue] run execute at @a[distance=..2,team=Red] run function main:pvp/trapper/trapper_wana/trapper_poison

execute at @e[tag=poisontrap,team=Red] run execute at @a[distance=..2,team=Blue] run function main:pvp/trapper/trapper_wana/trapper_poison


#闇の罠
execute at @e[tag=darknesstrap] run particle smoke ~ ~-1 ~ 0 0 0 0 0

execute at @e[tag=darknesstrap,team=Blue] run execute at @a[distance=..2,team=Red] run function main:pvp/trapper/trapper_wana/trapper_darkness

execute at @e[tag=darknesstrap,team=Red] run execute at @a[distance=..2,team=Blue] run function main:pvp/trapper/trapper_wana/trapper_darkness

#鈍足の罠
execute at @e[tag=slowtrap] run particle mycelium ~ ~-1 ~ 0 0 0 0 5

execute at @e[tag=slowtrap,team=Blue] run execute at @a[distance=..2,team=Red] run function main:pvp/trapper/trapper_wana/trapper_slow

execute at @e[tag=slowtrap,team=Red] run execute at @a[distance=..2,team=Blue] run function main:pvp/trapper/trapper_wana/trapper_slow

#転送の罠
execute at @e[tag=enter] run execute at @a[tag=!Trapper,distance=..2] run function main:pvp/trapper/trapper_wana/trapper_tp