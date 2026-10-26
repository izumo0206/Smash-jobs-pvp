#光の杖


#画面表示
execute if entity @a[tag=Escaper,scores={SelectJum=2}] as @a[tag=Escaper,scores={SelectJum=2}] run title @s actionbar [{"text":"光の杖 MP:300","color":"gold"},{"text":"   MP:  ","color":"black"},{"score":{"name":"*","objective":"EscaperMP"},"color":"dark_purple"}]

#罠実行
execute as @a[tag=Escaper,scores={EscaperMP=300..}] run function main:pvp/escaper/skill/light_sub