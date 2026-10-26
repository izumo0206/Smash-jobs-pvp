#ElfRecovery2


#画面表示
execute if entity @a[tag=Elf,scores={SelectJum=102}] as @a[tag=Elf,scores={SelectJum=102}] run title @s actionbar [{"text":"回復魔法(大) mp:500 ct10 cd:200","color":"light_purple"},{"text":"   MP:  ","color":"black"},{"score":{"name":"*","objective":"ElfMP"},"color":"dark_purple"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"},{"text":"   CD:  ","color":"black"},{"score":{"name":"*","objective":"ElfCooldown"},"color":"dark_purple"}]


#回復魔法実行
execute as @a[tag=Elf,scores={ElfCooldown=..0,sneak=10..,ElfMP=500..,SelectJum=102}] run function main:pvp/elf/elf_jum/elf_recovery2_sub