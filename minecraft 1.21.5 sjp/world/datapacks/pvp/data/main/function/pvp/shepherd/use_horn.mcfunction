# 角笛を使った人(@s)と同じチームの羊を、自分の近くに集める

# 赤チーム：自分のチームの羊を自分(@s)の場所にTPさせる
execute if entity @s[team=Red] run tp @e[type=sheep,tag=shepherd_sheep,team=Red] @s

# 青チーム：自分のチームの羊を自分(@s)の場所にTPさせる
execute if entity @s[team=Blue] run tp @e[type=sheep,tag=shepherd_sheep,team=Blue] @s
# 落下距離データを0にリセット（
execute if entity @s[team=Red] as @e[type=sheep,tag=shepherd_sheep,team=Red] run data merge entity @s {FallDistance:0f}

# 羊に反応速度アップ（一時的な加速）
execute if entity @s[team=Red] run effect give @e[type=sheep,tag=shepherd_sheep,team=Red] speed 5 2 true
execute if entity @s[team=Blue] run effect give @e[type=sheep,tag=shepherd_sheep,team=Blue] speed 5 2 true

# スコアリセットと通知
scoreboard players set @s use_horn 0
