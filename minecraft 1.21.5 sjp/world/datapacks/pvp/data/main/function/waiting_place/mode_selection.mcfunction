#モード選択 ModeSelection

#ロール
scoreboard players add -モード選択- Mode 1
#ロール最終
execute if score -モード選択- Mode matches 5.. run scoreboard players set -モード選択- Mode 0


#看板表示
#マシンガンモード
execute if score -モード選択- Mode matches 0 if score マシンガンモード Mode matches 0 as @e[tag=ModeSelection] at @s run data merge block ~ ~2 ~ {Text1:'[{"text":"マシンガンモード"}]',Text2:'',Text3:'[{"text":"OFF","color":"black"}]',Text4:''}
execute if score -モード選択- Mode matches 0 if score マシンガンモード Mode matches 1 as @e[tag=ModeSelection] at @s run data merge block ~ ~2 ~ {Text1:'[{"text":"マシンガンモード"}]',Text2:'',Text3:'[{"text":"ON","color":"yellow"}]',Text4:''}

#花火モード
execute if score -モード選択- Mode matches 1 if score 花火モード Mode matches 0 as @e[tag=ModeSelection] at @s run data merge block ~ ~2 ~ {Text1:'[{"text":"花火モード"}]',Text2:'',Text3:'[{"text":"OFF","color":"black"}]',Text4:''}
execute if score -モード選択- Mode matches 1 if score 花火モード Mode matches 1 as @e[tag=ModeSelection] at @s run data merge block ~ ~2 ~ {Text1:'[{"text":"花火モード"}]',Text2:'',Text3:'[{"text":"ON","color":"yellow"}]',Text4:''}

#複種モード
execute if score -モード選択- Mode matches 2 if score 複種モード Mode matches 0 as @e[tag=ModeSelection] at @s run data merge block ~ ~2 ~ {Text1:'[{"text":"複種モード"}]',Text2:'',Text3:'[{"text":"OFF","color":"black"}]',Text4:''}
execute if score -モード選択- Mode matches 2 if score 複種モード Mode matches 1 as @e[tag=ModeSelection] at @s run data merge block ~ ~2 ~ {Text1:'[{"text":"複種モード"}]',Text2:'',Text3:'[{"text":"ON","color":"yellow"}]',Text4:''}

#小マップモード
execute if score -モード選択- Mode matches 3 if score 小マップモード Mode matches 0 as @e[tag=ModeSelection] at @s run data merge block ~ ~2 ~ {Text1:'[{"text":"小マップモード"}]',Text2:'',Text3:'[{"text":"OFF","color":"black"}]',Text4:''}
execute if score -モード選択- Mode matches 3 if score 小マップモード Mode matches 1 as @e[tag=ModeSelection] at @s run data merge block ~ ~2 ~ {Text1:'[{"text":"小マップモード"}]',Text2:'',Text3:'[{"text":"小マップモードA","color":"red"}]',Text4:''}
execute if score -モード選択- Mode matches 3 if score 小マップモード Mode matches 2 as @e[tag=ModeSelection] at @s run data merge block ~ ~2 ~ {Text1:'[{"text":"小マップモード"}]',Text2:'',Text3:'[{"text":"小マップモードB","color":"blue"}]',Text4:''}

#勝利判断モード
execute if score -モード選択- Mode matches 4 if score 勝利判断モード Mode matches 0 as @e[tag=ModeSelection] at @s run data merge block ~ ~2 ~ {Text1:'',Text2:'',Text3:'[{"text":"チケット優先モード","color":"red"}]',Text4:''}
execute if score -モード選択- Mode matches 4 if score 勝利判断モード Mode matches 1 as @e[tag=ModeSelection] at @s run data merge block ~ ~2 ~ {Text1:'',Text2:'',Text3:'[{"text":"ガチエリア優先モード","color":"blue"}]',Text4:''}


#実装の壁
##################################################

#ゾンビモード 未実装
execute if score -モード選択- Mode matches 100 if score ゾンビモード Mode matches 0 as @e[tag=ModeSelection] at @s run data merge block ~ ~2 ~ {Text1:'[{"text":"ゾンビモード"}]',Text2:'',Text3:'[{"text":"OFF","color":"black"}]',Text4:''}
execute if score -モード選択- Mode matches 100 if score ゾンビモード Mode matches 1 as @e[tag=ModeSelection] at @s run data merge block ~ ~2 ~ {Text1:'[{"text":"ゾンビモード"}]',Text2:'',Text3:'[{"text":"ON","color":"yellow"}]',Text4:''}