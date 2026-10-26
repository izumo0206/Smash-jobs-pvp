#光の矢 リピート

execute if entity @e[type=minecraft:spectral_arrow] run function main:pvp/bomber/spectral_arrow

#MPチャージ
execute as @a[tag=Bomber,scores={sneak=1..}] run scoreboard players add @a[tag=Bomber] BomberMP 1
execute as @a[tag=Bomber,scores={sneak=1..}] run scoreboard players set @a[tag=Bomber] sneak 0

#普通の矢 キル
kill @e[type=minecraft:arrow,nbt={inGround:true}]

item replace entity @a[tag=Bomber] container.1 with minecraft:spectral_arrow

execute if entity @a[tag=Bomber] run function main:pvp/bomber/ultimate