#ElfRevert


#画面表示
execute if entity @a[tag=Elf,scores={SelectJum=131}] as @a[tag=Elf,scores={SelectJum=131}] run title @s actionbar [{"text":"状態回復 mp:200 ct10 cd:200","color":"green"},{"text":"   MP:  ","color":"black"},{"score":{"name":"*","objective":"ElfMP"},"color":"dark_purple"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"},{"text":"   CD:  ","color":"black"},{"score":{"name":"*","objective":"ElfCooldown"},"color":"dark_purple"}]


#状態回復実行
execute as @a[tag=Elf,scores={ElfCooldown=..0,sneak=10..,ElfMP=200..,SelectJum=131}] run function main:pvp/elf/elf_jum/elf_revert_sub