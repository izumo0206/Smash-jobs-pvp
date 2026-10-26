
#  チームごとの整理整頓（VIP選抜）を実行
execute if entity @s[team=Red] run function main:pvp/shepherd/solve_red
execute if entity @s[team=Blue] run function main:pvp/shepherd/solve_blue

#  新入りタグを消す（普通の羊になる）
tag @e[tag=new_sheep] remove new_sheep