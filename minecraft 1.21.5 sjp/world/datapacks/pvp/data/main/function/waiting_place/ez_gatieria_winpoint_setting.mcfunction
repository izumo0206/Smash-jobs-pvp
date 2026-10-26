#ガチエリアの勝利条件をボタン一つで設定できるようにするやつ

scoreboard players add ガチエリア時間変更判定 GatiAreaModeJudge 1

#50~300までの６種なので6
scoreboard players set ガチエリア時間変更判定6 GatiAreaModeJudge 6

#1増やすごとに50増やすので1000
scoreboard players set ガチエリア時間変更判定倍率 GatiAreaModeJudge 1000

#ロール式にするためのやつ
scoreboard players operation ガチエリア時間変更判定 GatiAreaModeJudge %= ガチエリア時間変更判定6 GatiAreaModeJudge

#選択用と実際に演算する用に分ける
scoreboard players operation ガチエリア時間変更 GatiAreaModeJudge = ガチエリア時間変更判定 GatiAreaModeJudge

#0からでなく50からなので1プラス
scoreboard players add ガチエリア時間変更 GatiAreaModeJudge 1

#この後演算で使うやつ代入
scoreboard players set ガチエリア時間変更判定2 GatiAreaModeJudge 2

#演算
scoreboard players operation ガチエリア時間変更 GatiAreaModeJudge *= ガチエリア時間変更判定倍率 GatiAreaModeJudge

#実際に代入
scoreboard players operation ガチエリア GatiAreaMainBossber = ガチエリア時間変更 GatiAreaModeJudge

#マックスを決める演算
scoreboard players operation ガチエリア時間変更 GatiAreaModeJudge *= ガチエリア時間変更判定2 GatiAreaModeJudge

#実際に代入
scoreboard players operation ガチエリアボスバーMAX GatiAreaMainBossber = ガチエリア時間変更 GatiAreaModeJudge

#ボスバーに埋め込む
execute store result bossbar minecraft:gatiarea max run scoreboard players get ガチエリアボスバーMAX GatiAreaMainBossber

#ボスバーの値を真ん中にするためにファンクション呼び出した
function main:mode/gatiarea/gatiarea_calculation

#看板用の代入＆演算
scoreboard players set ガチエリア時間変更判定20 GatiAreaModeJudge 20
scoreboard players operation ガチエリア時間看板用 GatiAreaModeJudge = ガチエリア GatiAreaMainBossber
scoreboard players operation ガチエリア時間看板用 GatiAreaModeJudge /= ガチエリア時間変更判定20 GatiAreaModeJudge

#看板
execute at @e[tag=GatieriaMaxSetting] run data merge block ~ ~2 ~ {Text1:'{"text":"現在"}',Text2:'{"text":"ガチエリアの勝利条件は"}',Text3:'[{"score":{"name":"ガチエリア時間看板用","objective":"GatiAreaModeJudge"}},{"text":"ポイント"}]',Text4:'{"text":"に設定されています"}'}

#無効化
execute if score ガチエリア GatiAreaModeJudge matches 0 at @e[tag=GatieriaMaxSetting] run data merge block ~ ~2 ~ {Text1:'{"text":"\\u30ac\\u30c1\\u30a8\\u30ea\\u30a2\\u30e2\\u30fc\\u30c9\\u306f"}',Text2:'{"text":"\\u7121\\u52b9\\u306b\\u306a\\u3063\\u3066\\u308b\\u306e\\u3067"}',Text3:'{"text":"\\u3053\\u306e\\u30ec\\u30d0\\u30fc\\u306f"}',Text4:'{"text":"\\u4f7f\\u3048\\u307e\\u305b\\u3093"}'}