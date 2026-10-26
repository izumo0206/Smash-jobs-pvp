#砦の向きを維持したまま専用ブロックだけを撤去
fill ^-3 ^ ^-3 ^3 ^5 ^3 minecraft:air replace minecraft:cyan_glazed_terracotta
fill ^-3 ^ ^-3 ^3 ^5 ^3 minecraft:air replace minecraft:warped_fence
fill ^-3 ^ ^-3 ^3 ^5 ^3 minecraft:air replace minecraft:warped_fence_gate
fill ^ ^ ^ ^ ^5 ^ minecraft:air replace minecraft:ladder

#この砦が召喚した画中人だけを削除
tag @s add DuskCleanupCurrent
execute as @e[tag=gatyuzin] if score @s DuskOwner = @e[tag=DuskCleanupCurrent,limit=1] DuskOwner run kill @s
kill @s
