# 1. 全ての羊飼いの羊の年齢を +1 する 
scoreboard players add @e[type=sheep,tag=shepherd_sheep] sheep_age 1

# 2. 羊のオーラ（バフ・デバフ）を発動
execute as @e[type=sheep,tag=shepherd_sheep] run function main:pvp/shepherd/aura

# 3. 角笛処理
execute as @a[scores={use_horn=1..}] run function main:pvp/shepherd/use_horn