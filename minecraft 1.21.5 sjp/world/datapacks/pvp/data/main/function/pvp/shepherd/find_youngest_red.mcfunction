# 1. 候補者リストアップ
tag @e[tag=shepherd_sheep,team=Red,tag=!safe] add candidate_red

# 2. 最小年齢（一番若い数値）を探してスコアに入れる
scoreboard players set #min_age sheep_calc 2147483647
execute as @e[tag=candidate_red] if score @s sheep_age < #min_age sheep_calc run scoreboard players operation #min_age sheep_calc = @s sheep_age

# 3. 最小年齢と一致する羊全員に、一旦「当選候補(winner)」タグをつける
execute as @e[tag=candidate_red] if score @s sheep_age = #min_age sheep_calc run tag @s add winner

# 4. 当選候補の中から「1匹だけ」選んで safe タグをつける
# (limit=1 はここで使うのが正解！)
tag @e[tag=winner,limit=1,sort=nearest] add safe

# 5. 後片付け
tag @e[tag=winner] remove winner
tag @e[tag=candidate_red] remove candidate_red