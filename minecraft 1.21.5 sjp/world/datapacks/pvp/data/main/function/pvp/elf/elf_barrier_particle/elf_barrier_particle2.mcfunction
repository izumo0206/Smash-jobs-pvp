#球状パーティクル(縦の円回転)
#elf.mcfuntionにてリピートされている
function main:pvp/elf/elf_barrier_particle/elf_barrier_particle1
tp @s ~ ~ ~ ~15 ~
execute unless entity @s[y_rotation=0..9] at @s run function main:pvp/elf/elf_barrier_particle/elf_barrier_particle2