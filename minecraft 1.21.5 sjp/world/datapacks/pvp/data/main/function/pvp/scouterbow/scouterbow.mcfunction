#隠密弓兵 リピート

#効果消す
effect clear @a[tag=ScouterBow,scores={sneak=0}] minecraft:invisibility
effect clear @a[tag=ScouterBow,scores={sneak=0}] minecraft:speed

#隠密弓兵パッシブ 呼び出し
execute if entity @a[tag=ScouterBow,scores={sneak=1..}] run function main:pvp/scouterbow/scouterbow_passive

#矢
item replace entity @a[tag=ScouterBow] container.1 with minecraft:tipped_arrow[custom_name="毒の矢",potion_contents={"custom_color":369424,"custom_effects":[{"id":"poison","amplifier":0,"duration":1280}]}]