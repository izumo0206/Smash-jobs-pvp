#ElfEnhancement1


#画面表示
execute if entity @a[tag=Elf,scores={SelectJum=111}] as @a[tag=Elf,scores={SelectJum=111}] run title @s actionbar [{"text":"身体強化(小) mp:100 ct10 cd:50","color":"gold"},{"text":"   MP:  ","color":"black"},{"score":{"name":"*","objective":"ElfMP"},"color":"dark_purple"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"},{"text":"   CD:  ","color":"black"},{"score":{"name":"*","objective":"ElfCooldown"},"color":"dark_purple"}]


#身体強化実行
execute as @a[tag=Elf,scores={ElfCooldown=..0,sneak=10..,ElfMP=100..,SelectJum=111}] run function main:pvp/elf/elf_jum/elf_enhancement1_sub