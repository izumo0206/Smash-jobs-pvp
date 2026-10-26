#雷神スキル設定の土台

#スコアボード設定
scoreboard players remove @a[tag=Thor,scores={ThorCooldown=1..}] ThorCooldown 1
scoreboard players set @a[tag=Thor,scores={walk=40..}] Zimen 0
scoreboard players set @a[tag=Thor,scores={dash=40..}] Zimen 0
scoreboard players set @a[tag=Thor,scores={walk=40..}] walk 0
scoreboard players set @a[tag=Thor,scores={dash=40..}] dash 0
scoreboard players remove @a[tag=Thor,scores={ThorFallingAttackCooldown=1..}] ThorFallingAttackCooldown 1
scoreboard players add @a[tag=Thor] Land 1
execute at @a[tag=Thor,team=Blue] run execute if entity @a[team=Red,distance=..10] run function main:pvp/thor/thor_mp
execute at @a[tag=Thor,team=Red] run execute if entity @a[team=Blue,distance=..10] run function main:pvp/thor/thor_mp
scoreboard players set @a[tag=Thor] ThorDamageTaken 0
execute as @a[tag=ThorNeo,scores={ThorCooldown=0}] run tag @a[tag=ThorNeo] remove ThorNeo

#Zimenカウントコマンド
execute at @a[tag=Thor] if block ~ ~-1 ~ minecraft:air run scoreboard players add @a[tag=Thor] Zimen 1

#Landディスカウントコマンド
execute at @a[tag=Thor] if block ~ ~-1 ~ minecraft:air run scoreboard players set @a[tag=Thor] Land 0

#稲妻召喚
execute if entity @a[tag=Thor,tag=!ThorNeo,scores={ThorFallingAttackCooldown=..0,Zimen=13..,Land=1..}] run function main:pvp/thor/thor_skill2

#雷神招来

execute if entity @a[tag=Thor,scores={ThorCooldown=..0,ThorMP=160..}] run function main:pvp/thor/thor_skill1
execute if entity @a[tag=ThorNeo,scores={Zimen=13..,Land=1..}] run function main:pvp/thor/thor_skill3

#画面表示
execute if entity @a[tag=Thor] as @a[tag=Thor] run title @s actionbar [{"text":"稲妻召喚 cd:300","color":"yellow"},{"text":"   CD:  ","coler":"black"},{"score":{"name":"*","objective":"ThorFallingAttackCooldown"},"color":"dark_purple"},{"text":"雷神招来 MP:160 cd:400","color":"gold"},{"text":"   MP:  ","coler":"black"},{"score":{"name":"*","objective":"ThorMP"},"color":"dark_purple"},{"text":"  CD:  ","coler":"black"},{"score":{"name":"*","objective":"ThorCooldown"},"color":"dark_purple"}]