#アイテム配布
#狂乱
execute as @a[tag=Prototype,scores={prototype_kill=1,prototype_totalkill=1..}] run give @s minecraft:redstone[custom_name="『変異：狂乱』",lore=["血で血を洗う者"]]

#再生
execute as @a[tag=Prototype,scores={prototype_kill=1,prototype_totalkill=3..}] run give @s minecraft:slime_ball[custom_name="『変異：再生』",lore=["この身は不定。故に不滅"]]

#軟化Ⅰ
execute as @a[tag=Prototype,scores={prototype_kill=1,prototype_totalkill=5}] run attribute @s minecraft:max_health base set 50
execute as @a[tag=Prototype,scores={prototype_kill=1,prototype_totalkill=5}] run attribute @p minecraft:scale base set 0.8

#棘飛
execute as @a[tag=Prototype,scores={prototype_kill=1,prototype_totalkill=7..}] run give @s minecraft:tipped_arrow[custom_name="『変異：棘飛』",lore=["痛みは感じない"]] 5

#軟化Ⅱ
execute as @a[tag=Prototype,scores={prototype_kill=1,prototype_totalkill=10}] run attribute @s minecraft:max_health base set 40
execute as @a[tag=Prototype,scores={prototype_kill=1,prototype_totalkill=10}] run attribute @p minecraft:scale base set 1

#粘液
execute as @a[tag=Prototype,scores={prototype_kill=1,prototype_totalkill=12..}] run give @s minecraft:honeycomb[custom_name="『変異：粘液』",lore=["もう逃げられない。"]]

#軟化Ⅲ
execute as @a[tag=Prototype,scores={prototype_kill=1,prototype_totalkill=20}] run attribute @s minecraft:max_health base set 30
execute as @a[tag=Prototype,scores={prototype_kill=1,prototype_totalkill=20}] run attribute @p minecraft:scale base set 1.2

#羽
execute as @a[tag=Prototype,scores={prototype_kill=1,prototype_totalkill=20}] run give @s minecraft:elytra[custom_name="『変異：羽』",lore=["これが完全体"]]

execute as @a[tag=Prototype,scores={prototype_kill=1,prototype_totalkill=20..}] run give @s minecraft:firework_rocket[custom_name="『変異：火薬』",lore=["もう空も彼女の支配下"]] 8

scoreboard players set @p prototype_kill 0