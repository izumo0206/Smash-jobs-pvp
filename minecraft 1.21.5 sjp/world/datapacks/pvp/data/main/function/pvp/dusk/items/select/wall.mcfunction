execute as @p[tag=Dusk,distance=..3,sort=nearest,limit=1] run scoreboard players set @s Duskkirikae 5
execute as @p[tag=Dusk,distance=..3,sort=nearest,limit=1] run title @s actionbar {text:'絵画：長城壁',color:'green'}
execute if entity @p[tag=Dusk,distance=..3,sort=nearest,limit=1] run kill @s
