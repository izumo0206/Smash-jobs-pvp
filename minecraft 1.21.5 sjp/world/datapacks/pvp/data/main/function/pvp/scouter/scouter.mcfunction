#スカウター リピート

#効果消す
effect clear @a[tag=Scouter,scores={sneak=0}] minecraft:invisibility
effect clear @a[tag=Scouter,scores={sneak=0}] minecraft:speed
scoreboard players remove @a[tag=Scouter,scores={ScouterCooldown=1..}] ScouterCooldown 1

#スカウターパッシブ2 呼び出し
execute if entity @a[tag=Scouter,scores={sneak=0,ScouterCooldown=..1}] run function main:pvp/scouter/scouter_passive_2

#スカウターライト2呼び出し
execute if entity @a[tag=Scouter,scores={Jump=1..,sneak=1..}] run function main:pvp/scouter/scouter_light2

#スカウターパッシブ 呼び出し
#execute if predicate main:daytime run execute if entity @a[tag=Scouter,scores={sneak=1..}] run function main:pvp/scouter/scouter_passive_day
#execute if predicate main:nighttime run execute if entity @a[tag=Scouter,scores={sneak=1..}] run function main:pvp/scouter/scouter_passive_night

execute if entity @a[tag=Scouter,scores={sneak=1..}] run function main:pvp/scouter/scouter_passive_day

execute if entity @a[tag=Scouter] as @a[tag=Scouter] run title @s actionbar [{"text":"暗殺","color":"black"},{"text":"   クールタイム:  ","color":"black"},{"score":{"name":"*","objective":"ScouterCooldown"},"color":"dark_purple"}]


#スカウターライト呼び出し
execute if entity @a[tag=Scouter,scores={ScouterSickle=1..}] run function main:pvp/scouter/scouter_light


#ダメージリセット
scoreboard players set @a dameged 0