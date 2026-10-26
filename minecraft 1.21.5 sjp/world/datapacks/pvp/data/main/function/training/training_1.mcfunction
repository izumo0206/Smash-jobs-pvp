#1秒前


execute at @e[tag=sikeisyuu0] run fill ~-1 ~2.5 ~ ~1 ~6.5 ~ minecraft:glass
execute at @e[tag=sikeisyuu0] run fill ~-1 ~2.5 ~ ~1 ~6.5 ~ minecraft:iron_block destroy
execute at @e[tag=sikeisyuu0] run fill ~1 ~3.5 ~ ~1 ~4.5 ~ minecraft:air
execute at @e[tag=sikeisyuu0] run fill ~1 ~6.5 ~ ~1 ~6.5 ~ minecraft:air
execute at @e[tag=sikeisyuu0] run fill ~-1 ~3.5 ~ ~-1 ~6.5 ~ minecraft:air

#不正防止
kill @e[tag=AlreadyDead]