effect clear @a[tag=PickParticipant] minecraft:glowing
tag @a remove PickAllowed
tag @a remove PickStageAllowed
tag @a remove PickSlot1
tag @a remove PickSlot2
tag @a remove PickBanActor
scoreboard players set #done PickCtrl 0
scoreboard players set #need PickCtrl 0
scoreboard players set #uiTick PickCtrl 0
data modify storage main:pick ui.slot1_job set value "未選択"
data modify storage main:pick ui.slot2_job set value "未選択"
