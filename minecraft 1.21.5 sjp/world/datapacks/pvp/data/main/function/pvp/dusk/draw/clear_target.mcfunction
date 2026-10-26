tag @s add DuskCurrent
execute as @e[tag=DuskDrawTarget] if score @s DuskOwner = @a[tag=DuskCurrent,limit=1] DuskOwner run kill @s
tag @s remove DuskCurrent
