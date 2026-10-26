tag @e[tag=DuskCastTarget] remove DuskCastTarget
tag @s add DuskCurrent
execute as @e[tag=DuskDrawTarget] if score @s DuskOwner = @a[tag=DuskCurrent,limit=1] DuskOwner run tag @s add DuskCastTarget
tag @s remove DuskCurrent
