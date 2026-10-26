execute as @a[tag=MagicKing] if score @s MKOwner = #wall_owner MKOwner run scoreboard players set @s MKCount 1
execute as @a[tag=MagicKing,scores={MKCount=1..}] if score @s MKOwner = #wall_owner MKOwner run function main:pvp/magicking/element/add_water
kill @s
