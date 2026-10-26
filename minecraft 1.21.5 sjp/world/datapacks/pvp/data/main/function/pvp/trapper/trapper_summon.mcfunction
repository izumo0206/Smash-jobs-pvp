#罠召喚


#画面表示
execute as @a[tag=Trapper] at @s unless entity @e[distance=..6,tag=trap] run title @s actionbar [{"text":"罠設置 ct:100","color":"dark_gray"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"},{"text":"   可能","color":"green"}]
execute as @a[tag=Trapper] at @s if entity @e[distance=..6,tag=trap] run title @s actionbar [{"text":"罠設置 ct:100","color":"dark_gray"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"},{"text":"   不可能","color":"red"}]

#通常罠実行
execute as @a[tag=Trapper,scores={sneak=100..},nbt={SelectedItem:{id:"minecraft:shears",components:{"minecraft:custom_name":"通常罠"}}}] run function main:pvp/trapper/trapper_summon_explo

#毒の罠実行
execute as @a[tag=Trapper,scores={sneak=100..},nbt={SelectedItem:{id:"minecraft:shears",components:{"minecraft:custom_name":"毒の罠"}}}] run function main:pvp/trapper/trapper_summon_poison

#闇の罠実行
execute as @a[tag=Trapper,scores={sneak=100..},nbt={SelectedItem:{id:"minecraft:shears",components:{"minecraft:custom_name":"闇の罠"}}}] run function main:pvp/trapper/trapper_summon_dark

#鈍足の罠実行
execute as @a[tag=Trapper,scores={sneak=100..},nbt={SelectedItem:{id:"minecraft:shears",components:{"minecraft:custom_name":"鈍足の罠"}}}] run function main:pvp/trapper/trapper_summon_bind

#出口の罠実行
execute as @a[tag=Trapper,scores={sneak=100..},nbt={SelectedItem:{id:"minecraft:shears",components:{"minecraft:custom_name":"出口の罠"}}}] run function main:pvp/trapper/trapper_summon_exit

#入口の罠実行
execute as @a[tag=Trapper,scores={sneak=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_name":"入口の罠"}}}] run function main:pvp/trapper/trapper_summon_enter
