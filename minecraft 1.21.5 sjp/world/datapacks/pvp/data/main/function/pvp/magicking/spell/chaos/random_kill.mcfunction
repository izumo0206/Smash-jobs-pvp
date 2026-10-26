tag @a[tag=MKChaosPool,sort=random,limit=1] add MKChaosTarget
tellraw @a[tag=MKChaosCaster] ["",{"text":"[混沌] ","color":"dark_purple"},{"selector":"@a[tag=MKChaosTarget,limit=1]"},{"text":"が選ばれた。"}]
kill @a[tag=MKChaosTarget]
tag @a remove MKChaosTarget
