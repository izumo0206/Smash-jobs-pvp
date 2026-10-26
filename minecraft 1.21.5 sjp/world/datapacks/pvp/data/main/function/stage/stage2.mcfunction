#ステージ リピート




#赤チーム　ボタンが押されたら
execute at @e[tag=AkaNoSuta-toTitenn2] run execute if block ~-1 ~2 ~ minecraft:stone_button[powered=true,facing=west] run function main:stage/ready_red2
#青チーム　ボタンが押されたら
execute at @e[tag=AoNoSuta-toTitenn2] run execute if block ~1 ~2 ~ minecraft:stone_button[powered=true,facing=east] run function main:stage/ready_blue2

#両方とも準備OKだったら
execute if score メインスタート判断(青) MainStartJuDge2 matches 1 if score メインスタート判断(赤) MainStartJuDge2 matches 1 run function main:stage/stage_start2


#tpのやつ1
execute at @e[tag=gatiarea2] if block ~ ~ ~ minecraft:polished_blackstone_button[powered=true] run tp @p @e[tag=gatiarea1,limit=1]
execute at @e[tag=gatiarea2] run setblock ~ ~ ~ minecraft:polished_blackstone_button[face=floor,facing=east]
#tpのやつ2
execute at @e[tag=gatiarea1] if block ~ ~ ~ minecraft:polished_blackstone_button[powered=true] run tp @p @e[tag=gatiarea2,limit=1]
execute at @e[tag=gatiarea1] run setblock ~ ~ ~ minecraft:polished_blackstone_button[face=floor,facing=east]
#浮遊のやつ1
execute as @a[x=-247,y=-2,z=-21,dx=2,dy=0,dz=-2] run effect give @s minecraft:levitation 1 13 true
#浮遊のやつ2
execute as @a[x=-271,y=-2,z=3,dx=2,dy=0,dz=-2] run effect give @s minecraft:levitation 1 13 true


#可変ステージ
scoreboard players operation 時間(ステージ) time = 時間 time
scoreboard players operation 時間(ステージ) time %= 時間(ステージ)計算用 time
execute if score 時間(ステージ) time matches 200 run tellraw @a [{"text":"10秒後にステージが変形します","color":"red"}]
execute if score 時間(ステージ) time matches 2 at @e[tag=AreaRondom,sort=random,limit=1] run setblock ~ ~ ~ minecraft:redstone_block
execute if score 時間(ステージ) time matches 1 at @e[tag=AreaRondom] run setblock ~ ~ ~ air