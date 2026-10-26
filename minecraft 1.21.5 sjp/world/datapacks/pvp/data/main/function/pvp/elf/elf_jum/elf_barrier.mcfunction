#ElfBarrier


#画面表示
execute if entity @a[tag=Elf,scores={SelectJum=121}] as @a[tag=Elf,scores={SelectJum=121}] run title @s actionbar [{"text":"結界魔法 mp:500 ct10 cd:500","color":"aqua"},{"text":"   MP:  ","color":"black"},{"score":{"name":"*","objective":"ElfMP"},"color":"dark_purple"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"},{"text":"   CD:  ","color":"black"},{"score":{"name":"*","objective":"ElfCooldown"},"color":"dark_purple"}]


#結界実行
execute as @a[tag=Elf,scores={ElfCooldown=..0,sneak=10..,ElfMP=500..,SelectJum=121}] run function main:pvp/elf/elf_jum/elf_barrier_sub