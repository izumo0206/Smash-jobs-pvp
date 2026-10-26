bossbar set main:pick color white
execute if entity @a[tag=PickStageAllowed,team=Red] run bossbar set main:pick color red
execute if entity @a[tag=PickStageAllowed,team=Blue] run bossbar set main:pick color blue
execute if entity @a[tag=PickAllowed,team=Red] run bossbar set main:pick color red
execute if entity @a[tag=PickAllowed,team=Blue] run bossbar set main:pick color blue
