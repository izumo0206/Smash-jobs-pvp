#エルフMPチャージ


#タグ付け
execute as @a[tag=Elf,scores={MPcharge=1..}] run tag @s add ElfMPcharge

execute at @a[tag=ElfMPcharge] run particle minecraft:witch ~ ~ ~ 0.5 0.6 0.5 1 1 normal

scoreboard players add @a[tag=ElfMPcharge] ElfMP 300

scoreboard players set @a[tag=ElfMPcharge] MPcharge 0


#タグ剥奪
tag @a[tag=ElfMPcharge] remove ElfMPcharge


#エルフは共通魔力瓶処理から除外し、このfunctionだけで合計300回復する
