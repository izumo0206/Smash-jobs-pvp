#終了

scoreboard players set 開始判断 MinigameTime 0

execute as @e[type=minecraft:zombie,tag=AlreadyDead,x=-4998,y=3,z=-4995,dx=20,dy=2,dz=14] at @s run kill @s

#スコア提示
execute as @a[tag=MiniGamePlayer] run tellraw @s [{"selector":"@s]"},{"text":"さんのスコアは","color":"green"},{"score":{"name":"*","objective":"MinigameScore"}},{"text":"です","color":"green"}]



#タグ消し
tag @a[tag=MiniGamePlayer] remove MiniGamePlayer


#レッドストーンブロック消す
execute as @e[tag=CentralControlSystem] at @s run setblock ~ ~ ~6 air