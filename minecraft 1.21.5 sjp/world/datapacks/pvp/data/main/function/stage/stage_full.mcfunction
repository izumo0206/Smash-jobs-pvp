#ステージ リピート

#ステージ3～7共通開始処理の実行中は、この旧リピート処理を停止
execute if data storage main:stage_start {active:1b} run return 0



#ステージ3～7の旧開始ボタン検知は廃止
#試合開始はmain:stage/common_startによる準備確認・カウントダウンから行う



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
