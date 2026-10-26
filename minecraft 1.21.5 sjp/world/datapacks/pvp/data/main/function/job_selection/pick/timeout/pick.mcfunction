# 人数不足デバッグ中だけ、不足分を完了扱いにしてフェーズを進める。
execute if score #debug PickCtrl matches 1 if score #done PickCtrl < #need PickCtrl unless entity @a[tag=PickAllowed] run scoreboard players operation #done PickCtrl = #need PickCtrl
execute if score #debug PickCtrl matches 1 if score #done PickCtrl >= #need PickCtrl unless entity @a[tag=PickAllowed] run return run function main:job_selection/pick/complete/pick
execute if score #done PickCtrl < #need PickCtrl as @r[tag=PickAllowed] at @s run function main:job_selection/pick/timeout/random_one
execute if score #done PickCtrl < #need PickCtrl as @r[tag=PickAllowed] at @s run function main:job_selection/pick/timeout/random_one
