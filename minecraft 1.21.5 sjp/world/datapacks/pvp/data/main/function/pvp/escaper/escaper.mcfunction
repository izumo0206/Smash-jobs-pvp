#パッシブ

execute as @a[tag=Escaper,scores={sneak=1..}] if items entity @s weapon.mainhand minecraft:blaze_rod[custom_name='回復の杖'] run function main:pvp/escaper/skill/escaper_mp

#発明家
effect clear @a[tag=Escaper,scores={sneak=0,SelectStatus=1}] minecraft:invisibility
effect clear @a[tag=Escaper,scores={sneak=0,SelectStatus=1}] minecraft:speed
effect give @a[tag=Escaper,scores={sneak=0,SelectStatus=1}] minecraft:slowness 1 0 true

effect give @a[tag=Escaper,scores={sneak=1..,SelectStatus=1}] minecraft:speed 1 8 true
effect give @a[tag=Escaper,scores={sneak=1..,SelectStatus=1}] minecraft:invisibility 1 1

#スカウター
effect clear @a[tag=Escaper,scores={sneak=0,SelectStatus=2}] minecraft:invisibility
effect clear @a[tag=Escaper,scores={sneak=0,SelectStatus=2}] minecraft:speed
effect give @a[tag=Escaper,scores={sneak=0,SelectStatus=2}] minecraft:speed 1 0 true

effect give @a[tag=Escaper,scores={sneak=1..,SelectStatus=2}] minecraft:speed 1 5 true
effect give @a[tag=Escaper,scores={sneak=1..,SelectStatus=2}] minecraft:invisibility 1 1

#偵察兵
effect clear @a[tag=Escaper,scores={sneak=0,SelectStatus=3}] minecraft:invisibility
effect clear @a[tag=Escaper,scores={sneak=0,SelectStatus=3}] minecraft:speed
effect give @a[tag=Escaper,scores={sneak=0,SelectStatus=3}] minecraft:slowness 1 0 true

effect give @a[tag=Escaper,scores={sneak=1..,SelectStatus=3}] minecraft:speed 1 11 true
effect give @a[tag=Escaper,scores={sneak=1..,SelectStatus=3}] minecraft:invisibility 1 1


#全ステータス共通
scoreboard players set @a[tag=Escaper,scores={sneak=1..}] sneak 0

scoreboard players remove @a[tag=Escaper,scores={EscaperCooldown=1..}] EscaperCooldown 1

 #エスケイパーポイント画面表示

execute as @a[tag=Escaper] if items entity @s weapon.mainhand minecraft:written_book[custom_name={text:'逃亡者　パーク'}] run title @s subtitle [{text:'残りポイント：',color:'black'},{score:{name:'*',objective:'EscaperPoint'},color:'dark_purple'}]

execute as @a[tag=Escaper] if items entity @s weapon.mainhand minecraft:written_book[custom_name={text:'逃亡者　パーク'}] run title @s title {text:'　'}

#スキル
#トラッパー
execute as @a[tag=Escaper,scores={SelectJum=1}] run function main:pvp/escaper/skill/trapper
#光の杖
execute as @a[tag=Escaper,scores={SelectJum=2}] run function main:pvp/escaper/skill/light
