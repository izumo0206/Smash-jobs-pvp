# 赤チームの降参票

tag @s add Surrender
tellraw @a[team=Red] [{"selector":"@s","color":"red"},{"text":" が降参に同意しました","color":"yellow"}]

# 現在オンラインの赤チーム全員が同意したら、赤チームの敗北として通常終了
execute unless entity @a[team=Red,tag=!Surrender] run function main:stage/surrender/finish_red
