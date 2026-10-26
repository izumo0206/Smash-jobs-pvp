#ガチエリアを待機所で簡単に設定できちゃうマシーンの実際に押すところ
#モードの変更
scoreboard players add ガチエリア GatiAreaModeJudge 1

#念のためこの後演算する特に使うやつ代入
scoreboard players set ガチエリア6 GatiAreaModeJudge 6

#モードを戻す作業
scoreboard players operation ガチエリア GatiAreaModeJudge %= ガチエリア6 GatiAreaModeJudge

#初期化
function main:mode/gatiarea/default_setting

#ボスバー設定のためのスコア代入
scoreboard players set ガチエリアボスバーセット用 GatiAreaModeJudge 1

#無効化
execute unless score ガチエリア GatiAreaModeJudge matches 0 at @e[tag=GatieriaMaxSetting] run data merge block ~ ~2 ~ {Text1:'{"text":"現在"}',Text2:'{"text":"ガチエリアの勝利条件は"}',Text3:'[{"score":{"name":"ガチエリア時間看板用","objective":"GatiAreaModeJudge"}},{"text":"ポイント"}]',Text4:'{"text":"に設定されています"}'}
execute if score ガチエリア GatiAreaModeJudge matches 0 at @e[tag=GatieriaMaxSetting] run data merge block ~ ~2 ~ {Text1:'{"text":"\\u30ac\\u30c1\\u30a8\\u30ea\\u30a2\\u30e2\\u30fc\\u30c9\\u306f"}',Text2:'{"text":"\\u7121\\u52b9\\u306b\\u306a\\u3063\\u3066\\u308b\\u306e\\u3067"}',Text3:'{"text":"\\u3053\\u306e\\u30ec\\u30d0\\u30fc\\u306f"}',Text4:'{"text":"\\u4f7f\\u3048\\u307e\\u305b\\u3093"}'}