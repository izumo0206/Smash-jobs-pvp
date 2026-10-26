#光の矢 リピート

execute if entity @e[type=minecraft:spectral_arrow] run function main:pvp/bow/spectral_arrow_sub



#普通の矢 キル
kill @e[type=minecraft:arrow,nbt={inGround:true}]