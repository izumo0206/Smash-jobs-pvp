#エルフMP


#タグ付け
execute as @a[tag=Elf] run tag @s add ElfMP

scoreboard players add @a[tag=ElfMP] ElfMP 1


#タグ剥奪
tag @a[tag=ElfMP] remove ElfMP