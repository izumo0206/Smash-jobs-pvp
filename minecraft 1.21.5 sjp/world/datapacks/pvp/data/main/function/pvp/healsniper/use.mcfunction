#実行者：右クリックした回復スナイパー。手に持っている物で振り分ける
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{hs:"rifle"}] run return run function main:pvp/healsniper/rifle/try
tag @s remove HsReq
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{hs:"dart"}] run return run function main:pvp/healsniper/dart/use
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{hs:"nano"}] run return run function main:pvp/healsniper/nano/use
