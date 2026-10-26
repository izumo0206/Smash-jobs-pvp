#実行者：回復スナイパー

#入力：ニンジン付きの棒の使用1回ごとに要求（HsReq）を立てる
execute if score @s HsUse matches 1.. run tag @s add HsReq
scoreboard players set @s HsUse 0
scoreboard players remove @s[scores={HsCool=1..}] HsCool 1
scoreboard players remove @s[scores={HsDartCD=1..}] HsDartCD 1
#キルするとナノブーストが手に入る（持てるのは1個まで）
execute if score @s HsKill >= #nanokills HsCalc run function main:pvp/healsniper/nano/kill_reward

#ズーム：スナイパーを持ってスニークしている間
execute if predicate main:is_sneaking if items entity @s weapon.mainhand *[minecraft:custom_data~{hs:"rifle"}] unless entity @s[tag=HsZoom] run function main:pvp/healsniper/rifle/zoom_on with storage main:healsniper param.rifle
execute if entity @s[tag=HsZoom] unless predicate main:is_sneaking run function main:pvp/healsniper/rifle/zoom_off
execute if entity @s[tag=HsZoom] unless items entity @s weapon.mainhand *[minecraft:custom_data~{hs:"rifle"}] run function main:pvp/healsniper/rifle/zoom_off

#リロード（スナイパーを持っている間は耐久値バーで進み具合を表示）
execute if score @s HsReload matches 1.. run function main:pvp/healsniper/rifle/reload_tick
execute if score @s HsReload matches 1.. if items entity @s weapon.mainhand *[minecraft:custom_data~{hs:"rifle"}] run function main:pvp/healsniper/rifle/reload_bar
execute unless score @s HsReload matches 1.. if items entity @s weapon.mainhand *[minecraft:custom_data~{hs:"rifle",hs_bar:1b}] run item modify entity @s weapon.mainhand [{function:"minecraft:set_components",components:{"!minecraft:damage":{},"!minecraft:max_damage":{}}},{function:"minecraft:set_custom_data",tag:{hs_bar:0b}}]

#使用
execute if entity @s[tag=HsReq] run function main:pvp/healsniper/use

#表示
function main:pvp/healsniper/hud
