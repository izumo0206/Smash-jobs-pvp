#時間経過
execute as @a[scores={FinishTime=1..}] run scoreboard players remove @s FinishTime 1

#画面表示
execute as @a[scores={FinishTime=1..}] run title @s actionbar [{"text":"観察時間 : あと "},{"score":{"name":"*","objective":"FinishTime"}},{"text":"  スニークで終了","color":"green"}]

#スニーク押したときの処理
execute as @a[scores={FinishTime=1..,sneak=1..}] run gamemode adventure @s
execute as @a[scores={FinishTime=1..,sneak=1..}] run tp @s 24 1 5013 90 0
execute as @a[scores={FinishTime=1..,sneak=1..}] run spawnpoint @s 24 1 5013 90
execute as @a[scores={FinishTime=1..,sneak=1..}] run scoreboard players reset @s FinishTime


#制限時間の時の処理
execute as @a[scores={FinishTime=0}] run gamemode adventure @s
execute as @a[scores={FinishTime=0}] run tp @s 24 1 5013 90 0
execute as @a[scores={FinishTime=0}] run spawnpoint @s 24 1 5013 90
execute as @a[scores={FinishTime=0}] run scoreboard players reset @s FinishTime

#皆観察終わった時の処理
#チーム剥奪
execute unless entity @a[scores={FinishTime=1..}] run team leave @a
#時間代入
execute unless entity @a[scores={FinishTime=1..}] run scoreboard players operation 時間 time = 時間設定 TimeValueSet
execute unless entity @a[scores={FinishTime=1..}] run function main:time/time
#チケット代入
execute unless entity @a[scores={FinishTime=1..}] run scoreboard players operation 青チーム ticket = チケット数 TicketValueSet
execute unless entity @a[scores={FinishTime=1..}] run scoreboard players operation 赤チーム ticket = チケット数 TicketValueSet

#レッドストーンブロック消す
execute unless entity @a[scores={FinishTime=1..}] run execute as @e[tag=CentralControlSystem] at @s run setblock ~2 ~ ~1 air