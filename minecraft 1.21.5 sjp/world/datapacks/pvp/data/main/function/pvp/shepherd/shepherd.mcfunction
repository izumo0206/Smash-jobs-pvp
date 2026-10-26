#羊飼いリピート
# 1. オーラタイマーを進める (0 -> 40 -> 0 ...)
scoreboard players add #global aura_timer 1
execute if score #global aura_timer matches 40.. run scoreboard players set #global aura_timer 0

# 2. 全羊の年齢 +1
scoreboard players add @e[type=sheep,tag=shepherd_sheep] sheep_age 1

# 3. 羊のオーラ発動 (at @s を忘れずに！)
execute as @e[type=sheep,tag=shepherd_sheep] at @s run function main:pvp/shepherd/aura

# 4. 角笛
execute as @a[scores={use_horn=1..}] run function main:pvp/shepherd/use_horn

#ストレングス無効化
execute at @a[tag=Shepherd] run effect clear @a[tag=Shepherd] minecraft:strength

#白色（透明）
#薄灰色
#灰色（耐性２）
#黒色（敵に盲目）
#茶色（満腹、）
#赤色（攻撃力上昇２）
#橙色（火炎耐性、耐性１）
#黄色
#黄緑色
#緑色
#青緑色
#空色
#青色
#紫色
#赤紫色
#桃色
