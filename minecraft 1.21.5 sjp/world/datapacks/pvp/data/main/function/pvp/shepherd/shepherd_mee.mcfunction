#めー
tellraw @a ["ﾒｪｪｪｪｪｪｴｴｴ！！！"]
# ==========================================
# [ めー / Team Reset ]
# 効果: 自分のチームの羊を全て爆破処理する
# ==========================================


# 演出（赤チームの羊の場所で爆発）
execute if entity @s[team=Red] at @e[type=sheep,tag=shepherd_sheep,team=Red] run particle explosion ~ ~1 ~ 0.5 0.5 0.5 0.1 20
execute if entity @s[team=Red] at @e[type=sheep,tag=shepherd_sheep,team=Red] run playsound minecraft:entity.sheep.death master @a ~ ~ ~ 1 0.5
# 削除（赤チームの羊だけキル）
execute if entity @s[team=Red] run kill @e[type=sheep,tag=shepherd_sheep,team=Red]



# 演出
execute if entity @s[team=Blue] at @e[type=sheep,tag=shepherd_sheep,team=Blue] run particle explosion ~ ~1 ~ 0.5 0.5 0.5 0.1 20
execute if entity @s[team=Blue] at @e[type=sheep,tag=shepherd_sheep,team=Blue] run playsound minecraft:entity.sheep.death master @a ~ ~ ~ 1 0.5
# 削除
execute if entity @s[team=Blue] run kill @e[type=sheep,tag=shepherd_sheep,team=Blue]


# ■ チームに入っていない人（運営など）が押した場合 -> 全消し
execute unless entity @s[team=Red] unless entity @s[team=Blue] at @e[type=sheep,tag=shepherd_sheep] run particle explosion ~ ~1 ~ 0.5 0.5 0.5 0.1 20
execute unless entity @s[team=Red] unless entity @s[team=Blue] run kill @e[type=sheep,tag=shepherd_sheep]