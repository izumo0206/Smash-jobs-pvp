#タイトル表示
title @a[scores={FirstTime=70}] title {"text":"この配布ワールドを","color":"white"}
title @a[scores={FirstTime=70}] subtitle {"text":"選んだそこのあなた!","color":"white"}
title @a[scores={FirstTime=140}] title {"text":"ありがとうございます!","color":"white"}
title @a[scores={FirstTime=140}] subtitle {"text":""}
title @a[scores={FirstTime=210}] title {"text":"存分にお楽しみください!","color":"white"}
title @a[scores={FirstTime=210}] subtitle {"text":"from製作者一同","color":"green"}
title @a[scores={FirstTime=280}] title {"text":"隠し要素もあるので","color":"white"}
title @a[scores={FirstTime=280}] subtitle {"text":"よかったら見つけてみてね!","color":"white"}

#時間経過
scoreboard players add @s FirstTime 1

#初期設定
execute unless score 進捗 progress matches 1.. run execute as @a[scores={FirstTime=350}] run function main:first/first_set
execute unless score 進捗 progress matches 1.. run execute as @a[scores={FirstTime=350}] run function main:first/first_set_value
execute as @a[scores={FirstTime=350}] run function main:first/first_set_value2


scoreboard players set 進捗 progress 1

#tp
execute as @a[scores={FirstTime=350}] run tp @s 5027 1 5011 90 0
execute as @a[scores={FirstTime=350}] run spawnpoint @s 5027 1 5011 90 0
#タグ・スコア剥奪
execute as @a[scores={FirstTime=360..}] run tag @s remove First
execute as @a[scores={FirstTime=360..}] run scoreboard players reset @s FirstTime