execute as @p[tag=Dusk,distance=..3,sort=nearest,limit=1] run scoreboard players set @s Duskkirikae 2
execute as @p[tag=Dusk,distance=..3,sort=nearest,limit=1] run title @s actionbar {text:'絵画：子兎',color:'white'}
execute if entity @p[tag=Dusk,distance=..3,sort=nearest,limit=1] run kill @s
