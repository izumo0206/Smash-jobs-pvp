# 青チームの降参票

tag @s add Surrender
tellraw @a[team=Blue] [{"selector":"@s","color":"blue"},{"text":" が降参に同意しました","color":"yellow"}]

# 現在オンラインの青チーム全員が同意したら、青チームの敗北として通常終了
execute unless entity @a[team=Blue,tag=!Surrender] run function main:stage/surrender/finish_blue
