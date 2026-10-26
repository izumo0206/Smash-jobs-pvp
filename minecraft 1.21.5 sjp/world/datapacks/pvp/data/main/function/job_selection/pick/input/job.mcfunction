# 1.21.5 function macro。各既存ジョブfunctionの先頭からプレイヤーとして呼ばれる。
scoreboard players set #inputResult PickCtrl 0
execute unless entity @s[tag=PickAllowed] run tellraw @s {"text":"現在はあなたの選択順ではありません。","color":"red"}
execute unless entity @s[tag=PickAllowed] run return 0
execute unless score #action PickCtrl matches 2..3 run return 0
$scoreboard players operation #inputPool PickCtrl = $(pool) PickPool
execute unless score #inputPool PickCtrl matches 0 run tellraw @s {"text":"そのジョブは既に選択またはBANされています。","color":"red"}
execute unless score #inputPool PickCtrl matches 0 run return 0

# BAN。プレイヤーの既存ジョブや装備は変更せず、対象看板と利用状態だけを更新する。
$execute if score #action PickCtrl matches 2 run scoreboard players set $(pool) PickPool 2
$execute if score #action PickCtrl matches 2 at @e[tag=jobsentakuKun] run data merge block ~$(sign_x) ~$(sign_y) ~ {front_text:{messages:["",{"text":"BAN","color":"red"},"",""]},is_waxed:1b}
$execute if score #action PickCtrl matches 2 run data modify storage main:pick ui.ban_job set value "$(job_name)"
execute if score #action PickCtrl matches 2 run tag @a remove PickBanActor
execute if score #action PickCtrl matches 2 run tag @s add PickBanActor
$execute if score #action PickCtrl matches 2 run tellraw @a[tag=PickViewer] [{"selector":"@s"},{"text":"が「$(job_name)」をBANしました。","color":"red"}]
execute if score #action PickCtrl matches 2 run scoreboard players set #inputResult PickCtrl 1
execute if score #action PickCtrl matches 2 run function main:job_selection/pick/complete/ban
execute if score #inputResult PickCtrl matches 1 run return 1

# 通常ピック。PickBypass中だけ既存function本体をそのまま実行する。
$scoreboard players set $(pool) PickPool 1
$scoreboard players set @s PickJob $(job_id)
execute if score #done PickCtrl matches 0 run tag @s add PickSlot1
execute if score #done PickCtrl matches 1 run tag @s add PickSlot2
$execute if score #done PickCtrl matches 0 run data modify storage main:pick ui.slot1_job set value "$(job_name)"
$execute if score #done PickCtrl matches 1 run data modify storage main:pick ui.slot2_job set value "$(job_name)"
tag @s add PickBypass
$function main:job_selection/$(job_function)
tag @s remove PickBypass
tag @s add PickSelected
tag @s remove PickAllowed
scoreboard players add #done PickCtrl 1
$tellraw @a[tag=PickViewer] [{"selector":"@s"},{"text":"が「$(job_name)」をピックしました。","color":"green"}]
function main:job_selection/pick/complete/pick
