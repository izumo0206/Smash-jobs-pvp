#煉獄さん　リピート

#処理
scoreboard players set @a[tag=Rengoku,scores={walk=1..}] sneak 0
scoreboard players set @a[tag=Rengoku,scores={dash=1..}] sneak 0
scoreboard players set @a[tag=Rengoku,scores={walk=1..}] walk 0
scoreboard players set @a[tag=Rengoku,scores={dash=1..}] dash 0

scoreboard players remove @a[tag=Rengoku] Kunokata 1

#呼吸
scoreboard players add @a[tag=Rengoku,nbt={SelectedItem:{id:"minecraft:netherite_sword",tag:{display:{Name:'{"text":"炎の呼吸　玖の型　煉獄","color":"dark_red","bold":true}'}}}},scores={sneak=1..}] Kokyu 1



#画面表示
execute if entity @a[tag=Rengoku] as @a[tag=Rengoku] run title @s actionbar [{"text":"  呼吸 :  ","color":"black"},{"score":{"name":"*","objective":"Kokyu"},"color":"dark_purple"}]

execute if entity @a[tag=Rengoku,nbt={SelectedItem:{id:"minecraft:netherite_sword",tag:{display:{Name:'{"text":"炎の呼吸　玖の型　煉獄","color":"dark_red","bold":true}'}}}}] as @a[tag=Rengoku,nbt={SelectedItem:{id:"minecraft:netherite_sword",tag:{display:{Name:'{"text":"炎の呼吸　玖の型　煉獄","color":"dark_red","bold":true}'}}}}] run title @s actionbar [{"text":"炎の呼吸　玖の型　煉獄 ct:100 ","color":"dark_red"},{"text":"  呼吸 :  ","color":"black"},{"score":{"name":"*","objective":"Kokyu"},"color":"dark_purple"}                                                                                                             ,{"text":"  玖 :  ","color":"black"},{"score":{"name":"*","objective":"Kunokata"},"color":"dark_purple"}]

#くのかた常時実行
 #炎エフェクト
execute as @a[tag=Rengoku,scores={Kunokata=1..}] at @a[tag=Rengoku,scores={Kunokata=1..}] run particle minecraft:flame ~ ~1 ~ 0 0 0 1 3 force
 #視覚化用
execute as @a[tag=Rengoku,scores={Kunokata=1..}] at @a[tag=Rengoku,scores={Kunokata=1..}] run execute if entity @a[tag=!Rengoku] run particle minecraft:bubble ~ ~ ~ 1 1 1 10 10
 #
execute as @a[tag=Rengoku,scores={Kunokata=1..}] at @a[tag=Rengoku,scores={Kunokata=1..}] run execute if entity @a[tag=!Rengoku] run function main:pvp/rengoku/hono_no_kokyu/kunokata_repeat


#くのかた一瞬発動させるやつ
execute as @a[tag=Rengoku,scores={Kokyu=100..},nbt={SelectedItem:{id:"minecraft:netherite_sword",tag:{display:{Name:'{"text":"炎の呼吸　玖の型　煉獄","color":"dark_red","bold":true}'}}}}] run function main:pvp/rengoku/hono_no_kokyu/kunokata