#画面表示

execute if entity @a[tag=Shaman] as @a[tag=Shaman] run title @s actionbar [{"text":"呪力 ","color":"dark_gray"},{"score":{"name":"*","objective":"ShamanMP"},"color":"dark_purple"}]

#MP
scoreboard players remove @a[tag=Shaman,scores={ShamanMP=1..}] ShamanMP 1