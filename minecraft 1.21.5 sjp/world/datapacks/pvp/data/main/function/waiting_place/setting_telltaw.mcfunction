#すべての設定を知らせてくれるテルローコマンド



tellraw @a  [{"text":"現在の設定は","color":"gold"}]

execute if score ステージ決め StageSetting matches 0 run tellraw @a  [{"text":"ステージ          : ","color":"green"},{"text":"ステージ1","color":"green"}]

execute if score ステージ決め StageSetting matches 1 run tellraw @a  [{"text":"ステージ          : ","color":"green"},{"text":"ステージ2","color":"green"}]

execute if score チケット数 TicketValueSet matches 1.. run tellraw @a  [{"text":"チケット数        : ","color":"green"},{"score":{"name":"チケット数","objective":"TicketValueSet"}},{"text":"枚","color":"green"}]

execute if score チケット数 TicketValueSet matches 0 run tellraw @a  [{"text":"チケット数        : ","color":"green"},{"text":"チケット無効モード","color":"green"}]

execute unless score 時間設定判定用 TimeValueSet matches 0 run tellraw @a  [{"text":"制限時間          : ","color":"green"},{"score":{"name":"時間(分)","objective":"time"}},{"text":"分"}]

execute if score 時間設定判定用 TimeValueSet matches 0 run tellraw @a  [{"text":"制限時間          : ","color":"green"},{"text":"なし"}]

execute if score ガチエリア GatiAreaModeJudge matches 0 run tellraw @a  [{"text":"ガチエリアモード : ","color":"green"},{"text":"なし"}]

execute if score ガチエリア GatiAreaModeJudge matches 1 run tellraw @a  [{"text":"ガチエリアモード : ","color":"green"},{"text":"エリアA(ステージ1)"}]

execute if score ガチエリア GatiAreaModeJudge matches 2 run tellraw @a  [{"text":"ガチエリアモード : ","color":"green"},{"text":"エリアB(ステージ1)"}]

execute if score ガチエリア GatiAreaModeJudge matches 3 run tellraw @a  [{"text":"ガチエリアモード : ","color":"green"},{"text":"エリアC(ステージ2)"}]

execute if score 勝利判断モード Mode matches 0 run tellraw @a  [{"text":"勝利判断          : チケット優先モード","color":"green"}]

execute if score 勝利判断モード Mode matches 1 run tellraw @a  [{"text":"勝利判断          : ガチエリア優先モード","color":"green"}]

tellraw @a  [{"text":"↓特殊モードの設定↓","color":"white"}]

execute if score マシンガンモード Mode matches 1 run tellraw @a  [{"text":"マシンガンモード : ON","color":"green"}]

execute if score 花火モード Mode matches 1 run tellraw @a  [{"text":"花火モード        : ON","color":"green"}]

execute if score 複種モード Mode matches 1 run tellraw @a  [{"text":"復種モード        : ON","color":"green"}]

execute if score 小マップモード Mode matches 1 run tellraw @a  [{"text":"小マップモード    : エリアA","color":"green"}]

execute if score 小マップモード Mode matches 2 run tellraw @a  [{"text":"小マップモード    : エリアB","color":"green"}]

execute if score ゾンビモード Mode matches 1 run tellraw @a  [{"text":"ゾンビモード      : ON","color":"green"}]

execute if score マシンガンモード Mode matches 0 if score 花火モード Mode matches 0 if score 複種モード Mode matches 0 if score 小マップモード Mode matches 0 if score ゾンビモード Mode matches 0 run tellraw @a  [{"text":"なし","color":"green"}]

tellraw @a  [{"text":"になっています","color":"green"}]