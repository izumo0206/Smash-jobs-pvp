#エンドロール


#時間経過
execute if entity @a[tag=endroll] run execute as @a[tag=endroll] run scoreboard players add @s endroll 1


#tp
tp @a[scores={endroll=1..99}] 9995 16 9987 -25 20
tp @a[scores={endroll=100..199}] 5036 10 5020 125 30
tp @a[scores={endroll=200..299}] -5007.2 4 -5014.6 90 -32
tp @a[scores={endroll=300..399}] -4991.7 7.2 -4995.2 -23.6 12.4
tp @a[scores={endroll=400..499}] -4960.8 30 -4989.985 133.1 28.8
tp @a[scores={endroll=500..599}] 10014.2 316 10021 -167 21.2
tp @a[scores={endroll=600..699}] 10010.3 321.1 10027.5 -127.7 26
tp @a[scores={endroll=700..799}] 5025 1 5011 -89.4 -11.6
tp @a[scores={endroll=800..899}] 10006.7 -58.8 10001.3 44.3 4.4
tp @a[scores={endroll=900..999}] 10002.5 -59 10027.5 180 -7
tp @a[scores={endroll=1000..1099}] 38.5 21.5 -32.3 42 16
tp @a[scores={endroll=1100..1239}] -246.3 14 -19.8 45 21.5



#tp
#tp @a[scores={endroll=1}] @e[tag=endroll1,limit=1]
#tp @a[scores={endroll=100}] @e[tag=endroll2,limit=1]
#tp @a[scores={endroll=200}] @e[tag=endroll3,limit=1]
#tp @a[scores={endroll=300}] @e[tag=endroll4,limit=1]
#tp @a[scores={endroll=400}] @e[tag=endroll5,limit=1]
#tp @a[scores={endroll=500}] @e[tag=endroll6,limit=1]
#tp @a[scores={endroll=600}] @e[tag=endroll7,limit=1]
#tp @a[scores={endroll=700}] @e[tag=endroll8,limit=1]
#tp @a[scores={endroll=800}] @e[tag=endroll9,limit=1]
#tp @a[scores={endroll=900}] @e[tag=endroll10,limit=1]
#tp @a[scores={endroll=1000}] @e[tag=endroll11,limit=1]
#tp @a[scores={endroll=1100}] @e[tag=endroll12,limit=1]



#タイトル表示
title @a[scores={endroll=1}] title {"text":"職業PVPワールド"}
title @a[scores={endroll=1}] subtitle {"text":"エンドロール(隠し要素)"}
title @a[scores={endroll=100}] title {"text":"製作者一覧"}
title @a[scores={endroll=100}] subtitle {"text":"～頑張った人たちの紹介～"}
title @a[scores={endroll=200}] title {"text":"企画・設計"}
title @a[scores={endroll=200}] subtitle {"text":"へっへっへ"}
title @a[scores={endroll=300}] title {"text":"運営、コマンド製作"}
title @a[scores={endroll=300}] subtitle {"text":"へっへっへ、や～こ!"}
title @a[scores={endroll=400}] title {"text":"ステージ製作、装飾"}
title @a[scores={endroll=400}] subtitle {"text":"や～こ!"}
title @a[scores={endroll=500}] title {"text":"PVPコマンド製作"}
title @a[scores={endroll=500}] subtitle {"text":"へっへっへ"}
title @a[scores={endroll=600}] title {"text":"頑張った人"}
title @a[scores={endroll=600}] subtitle {"text":"へっへっへ,や～こ!"}
title @a[scores={endroll=700}] title {"text":"すごく頑張った人"}
title @a[scores={endroll=700}] subtitle {"text":"へっへっへ,や～こ!"}
title @a[scores={endroll=800}] title {"text":"効果音"}
title @a[scores={endroll=800}] subtitle {"text":"otoboke"}
title @a[scores={endroll=900}] title {"text":"協力"}
title @a[scores={endroll=900}] subtitle {"text":"otoboke,Nagi"}
title @a[scores={endroll=1000}] title {"text":"すご～～く頑張った人"}
title @a[scores={endroll=1000}] subtitle {"text":"へっへっへ,や～こ!"}
title @a[scores={endroll=1100}] title {"text":"遊んでくれてありがとう!"}
title @a[scores={endroll=1100}] subtitle {"text":"thank you for playing!"}





#終了
execute as @a[scores={endroll=1240}] run stopsound @s master
execute as @a[scores={endroll=1240}] run tag @s remove endroll
execute as @a[scores={endroll=1240}] run tp @s 5027 1 5011 90 0
execute as @a[scores={endroll=1240}] run gamemode adventure @s
execute as @a[scores={endroll=1240}] run give @s minecraft:experience_bottle{display:{Name:'{"text":"隠し要素の証"}',Lore:['{"text":"エンドロールを見てくれてありがとう!"}','{"text":"これは隠し要素の一つだよ"}']}}
execute as @a[scores={endroll=1240}] run scoreboard players set @s endroll 0


#スペクテイト
#execute as @a[tag=endroll] if entity @s[scores={endroll=0..98}] run spectate @e[tag=endroll1,limit=1] @s
#execute as @a[tag=endroll] if entity @s[scores={endroll=111..198}] run spectate @e[tag=endroll2,limit=1] @s
#execute as @a[tag=endroll] if entity @s[scores={endroll=211..298}] run spectate @e[tag=endroll3,limit=1] @s
#execute as @a[tag=endroll] if entity @s[scores={endroll=311..398}] run spectate @e[tag=endroll4,limit=1] @s
#execute as @a[tag=endroll] if entity @s[scores={endroll=411..498}] run spectate @e[tag=endroll5,limit=1] @s
#execute as @a[tag=endroll] if entity @s[scores={endroll=511..598}] run spectate @e[tag=endroll6,limit=1] @s
#execute as @a[tag=endroll] if entity @s[scores={endroll=611..698}] run spectate @e[tag=endroll7,limit=1] @s
#execute as @a[tag=endroll] if entity @s[scores={endroll=711..798}] run spectate @e[tag=endroll8,limit=1] @s
#execute as @a[tag=endroll] if entity @s[scores={endroll=811..898}] run spectate @e[tag=endroll9,limit=1] @s
#execute as @a[tag=endroll] if entity @s[scores={endroll=911..998}] run spectate @e[tag=endroll10,limit=1] @s
#execute as @a[tag=endroll] if entity @s[scores={endroll=1011..1098}] run spectate @e[tag=endroll11,limit=1] @s
#execute as @a[tag=endroll] if entity @s[scores={endroll=1111..1198}] run spectate @e[tag=endroll12,limit=1] @s



#強制読み込み
#forceload add 5020 5010
#forceload add -4961 -4985
#forceload add -4988 -4994
#forceload add -5005 -5014
#forceload add -244 -18
#forceload add 39 -34

#スポーンチャンク内
#forceload add 10001 10000




#レッドストーンブロック消す
execute unless entity @a[tag=endroll] run execute as @e[tag=CentralControlSystem] at @s run setblock ~-1 ~ ~8 air