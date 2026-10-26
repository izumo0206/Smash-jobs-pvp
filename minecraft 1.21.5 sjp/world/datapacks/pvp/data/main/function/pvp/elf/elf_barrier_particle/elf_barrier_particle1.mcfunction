#球状パーティクル(縦の円)
particle wax_off ^ ^ ^10 0 0 0 0 1 force @a
tp @s ~ ~ ~ ~ ~15
execute unless entity @s[x_rotation=90] at @s run function main:pvp/elf/elf_barrier_particle/elf_barrier_particle1
execute if entity @s[x_rotation=90] at @s run tp @s ~ ~ ~ ~ -90