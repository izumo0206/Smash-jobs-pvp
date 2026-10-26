#爆撃表示
execute if entity @a[tag=Bomber] as @a[tag=Bomber] run title @s actionbar [{"text":"爆裂ビーム mp:800 ","color":"dark_gray"},{"text":"   MP:  ","color":"black"},{"score":{"name":"*","objective":"BomberMP"},"color":"dark_purple"}]

#爆撃実行
execute as @a[tag=Bomber,scores={BomberMP=800..}] run function main:pvp/bomber/ultimate_sub