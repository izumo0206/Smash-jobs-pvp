#ElfRecovery1


#画面表示
execute if entity @a[tag=Elf,scores={SelectJum=101}] as @a[tag=Elf,scores={SelectJum=101}] run title @s actionbar [{"text":"回復魔法(小) mp:100 ct10 cd:100","color":"light_purple"},{"text":"   MP:  ","color":"black"},{"score":{"name":"*","objective":"ElfMP"},"color":"dark_purple"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"},{"text":"   CD:  ","color":"black"},{"score":{"name":"*","objective":"ElfCooldown"},"color":"dark_purple"}]


#回復魔法実行
execute as @a[tag=Elf,scores={ElfCooldown=..0,sneak=10..,ElfMP=100..,SelectJum=101}] run function main:pvp/elf/elf_jum/elf_recovery1_sub