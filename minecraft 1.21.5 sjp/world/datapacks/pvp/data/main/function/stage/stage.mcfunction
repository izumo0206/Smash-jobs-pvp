#ステージ リピート



#天井 絶対座標
execute as @e[type=minecraft:player,x=53,y=8,z=38,dx=-102,dy=0,dz=-77] at @s run tp @s ~ ~-0.4 ~


#赤チーム　ボタンが押されたら
execute at @e[tag=AkaNoSuta-toTitenn] run execute if block ~ ~2 ~1 minecraft:stone_button[powered=true,facing=south] run function main:stage/ready_red
#青チーム　ボタンが押されたら
execute at @e[tag=AoNoSuta-toTitenn] run execute if block ~ ~2 ~-1 minecraft:stone_button[powered=true,facing=north] run function main:stage/ready_blue

#両方とも準備OKだったら
execute if score メインスタート判断(青) MainStartJuDge matches 1 if score メインスタート判断(赤) MainStartJuDge matches 1 run function main:stage/stage_start




#tp1
execute if entity @a[x=6,y=1,z=-10,dx=-1,dy=3,dz=1] at @e[tag=tp1] run fill ~-3 ~ ~1 ~-3 ~2 ~-1 minecraft:tinted_glass keep
execute if entity @a[x=6,y=1,z=-10,dx=-1,dy=3,dz=1] as @a[x=6,y=1,z=-10,dx=-1,dy=3,dz=1] run tp @s @e[tag=tp1,type=minecraft:armor_stand,limit=1]

execute if entity @a[x=-15,y=3,z=-6,dx=0,dy=2,dz=2] run execute at @e[tag=tp1] run fill ~-3 ~ ~1 ~-3 ~2 ~-1 minecraft:tinted_glass keep
execute if entity @a[x=-13,y=3,z=-6,dx=0,dy=2,dz=2] run execute at @e[tag=tp1] run fill ~-3 ~ ~1 ~-3 ~2 ~-1 minecraft:air destroy


#tp2
execute if entity @a[x=-50,y=1,z=-4,dx=-1,dy=3,dz=1] at @e[tag=tp2] run fill ~-3 ~ ~1 ~-3 ~2 ~-1 minecraft:tinted_glass keep
execute if entity @a[x=-50,y=1,z=-4,dx=-1,dy=3,dz=1] as @a[x=-50,y=1,z=-4,dx=-1,dy=3,dz=1] run tp @s @e[tag=tp2,type=minecraft:armor_stand,limit=1]


execute if entity @a[x=44,y=1,z=16,dx=0,dy=2,dz=2] run execute at @e[tag=tp2] run fill ~-3 ~ ~1 ~-3 ~2 ~-1 minecraft:tinted_glass keep
execute if entity @a[x=46,y=1,z=16,dx=0,dy=2,dz=2] run execute at @e[tag=tp2] run fill ~-3 ~ ~1 ~-3 ~2 ~-1 minecraft:air destroy