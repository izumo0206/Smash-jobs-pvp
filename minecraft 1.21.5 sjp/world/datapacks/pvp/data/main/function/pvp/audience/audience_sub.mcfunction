#スニークで解除 ホイール押し込みで人選択

#スペクテイト
execute as @a[tag=Kansatusya] at @s run spectate @a[tag=!Kansatusya,sort=nearest,limit=1] @s

#画面表示
execute as @a[tag=Kansatusya] run title @s actionbar [{"text":"ホイール押し込みで人選択 スニークで終了","color":"green"}]

#スニーク押したときの処理
execute as @a[tag=Kansatusya,scores={sneak=1..}] run gamemode adventure @s
execute as @a[tag=Kansatusya,scores={sneak=1..}] run tp @s 5027 1 5011 90 0
execute as @a[tag=Kansatusya,scores={sneak=1..}] run tag @s remove Kansatusya