tag @a remove PickAllowed
effect clear @a[tag=PickParticipant] minecraft:glowing
scoreboard players set #action PickCtrl 4
scoreboard players set #transitionType PickCtrl 2
scoreboard players set #timer PickCtrl 30
scoreboard players set #uiTick PickCtrl 0
bossbar set main:pick max 30
bossbar set main:pick value 30
function main:job_selection/pick/ui/update
