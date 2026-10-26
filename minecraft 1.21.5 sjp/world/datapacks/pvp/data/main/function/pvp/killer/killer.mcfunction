#Killer常時実行

execute as @a[tag=Killer] run function main:pvp/killer/item/item_repeat

scoreboard players set @a[tag=Killer,scores={KillerCooldown=1..}] sneak 0
scoreboard players set @a[tag=Killer,scores={walk=1..}] sneak 0
scoreboard players set @a[tag=Killer,scores={dash=1..}] sneak 0
scoreboard players remove @a[tag=Killer,scores={KillerCooldown=1..}] KillerCooldown 1
scoreboard players set @a[tag=Killer,scores={walk=1..}] walk 0
scoreboard players set @a[tag=Killer,scores={dash=1..}] dash 0


#スキル
#雷の魔法
execute as @a[tag=Killer,scores={SelectJum=1}] run function main:pvp/killer/skill/killer_thunder
#ゴースト
execute as @a[tag=Killer,scores={SelectJum=2}] run function main:pvp/killer/skill/killer_ghost
#激動慷慨
execute as @a[tag=Killer,scores={SelectJum=3}] run function main:pvp/killer/skill/killer_indignation


#ステータス
#重
execute as @a[tag=Killer,scores={SelectStatus=1}] run function main:pvp/killer/status/heavy
#中
execute as @a[tag=Killer,scores={SelectStatus=2}] run function main:pvp/killer/status/medium
#軽
execute as @a[tag=Killer,scores={SelectStatus=3}] run function main:pvp/killer/status/light