data remove storage main:pick active
scoreboard players set #active PickCtrl 0
scoreboard players set #debug PickCtrl 0
bossbar set main:pick visible false
effect clear @a[tag=PickParticipant] minecraft:glowing
tag @a remove PickParticipant
tag @a remove PickViewer
tag @a remove PickFirst
tag @a remove PickTeamA
tag @a remove PickTeamB
tag @a remove PickAllowed
tag @a remove PickStageAllowed
tag @a remove PickSelected
tag @a remove PickSlot1
tag @a remove PickSlot2
tag @a remove PickBanActor
tag @a remove PickBypass
tag @a remove FirstBAN
tag @a remove Standbypick
scoreboard players reset @a PickAction
