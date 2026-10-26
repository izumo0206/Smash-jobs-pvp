#初期設定 値代入初期化 初回時のみ

#初回時のみ
scoreboard players set 進捗 progress 1


#時間
scoreboard players set 時間 time 0
#どのみち入力されるけど怖いから仮入力
scoreboard players set 時間(秒) time 0
scoreboard players set 時間(分) time 0
scoreboard players set 時間(花火) time 0
scoreboard players set 時間(ステージ) time 0
#計算用の値
scoreboard players set 時間(分)計算用 time 1200
scoreboard players set 時間(秒)計算用 time 20
scoreboard players set 時間(花火)計算用 time 100
scoreboard players set 時間(ステージ)計算用 time 6000


#PVPスコアボード　初期化
#青チームチケット
scoreboard players set 青チーム ticket 100
#赤チームチケット
scoreboard players set 赤チーム ticket 100

#青チームゲームプレイヤー
scoreboard players set 青チーム NumberOfPlayer 0
#赤チームゲームプレイヤー
scoreboard players set 赤チーム NumberOfPlayer 0
#プレイヤーの人数
scoreboard players set プレイヤーの人数 NumberOfPlayer 0
#終了合意人数
scoreboard players set 終了合意人数 NumberOfPlayer 0

#ここの間はプレイヤー初期化
##########################################################
#ゲームプレイ中判断
scoreboard players set @s NumberOfPlayer 0
#デス数
scoreboard players set @s death 0
#キル数
scoreboard players set @s killCount 0
#スニーク
scoreboard players set @s sneak 0
#歩き
scoreboard players set @s walk 0
#ダッシュ
scoreboard players set @s dash 0
#ジャンプ
scoreboard players set @s Jump 0

#剣士
scoreboard players set @s shield 0
scoreboard players set @s shield_sub 0
scoreboard players set @s shieldCooldown 0
#スカウター
scoreboard players set @s ScouterSickle 0
scoreboard players set @s dameged 0
#アシスト　MP
scoreboard players set @s AssistMP 0
#クールダウン
scoreboard players set @s AssistCooldown 0
#魔法使い　MP
scoreboard players set @s WizardMP 0
#クールダウン
scoreboard players set @s WizardCooldown 0
#選択呪文
scoreboard players set @s SelectJum 1

########################################################

#待機所
#モード
scoreboard players set -モード選択- Mode 0
scoreboard players set マシンガンモード Mode 0
scoreboard players set 小マップモード Mode 0
scoreboard players set 複種モード Mode 0
scoreboard players set 花火モード Mode 0
scoreboard players set ゾンビモード Mode 0
scoreboard players set 勝利判断モード Mode 0
#時間
scoreboard players set 時間設定判定用MAX TimeValueSet 13
scoreboard players set 時間設定判定用計算用倍率 TimeValueSet 12000
scoreboard players set 時間設定判定用計算用1200 TimeValueSet 1200
#ガチエリア
scoreboard players set ガチエリア時間変更判定 GatiAreaModeJudge 0
scoreboard players set ガチエリア時間変更 GatiAreaModeJudge 0
scoreboard players set ガチエリア時間変更判定6 GatiAreaModeJudge 6
scoreboard players set ガチエリア時間変更判定倍率 GatiAreaModeJudge 1000
scoreboard players set ガチエリア時間変更判定2 GatiAreaModeJudge 2
scoreboard players set ガチエリア時間変更判定20 GatiAreaModeJudge 20


#トレーニング
scoreboard players set 時間 MinigameTime 600
scoreboard players set @a MinigameScore 0
scoreboard players set 開始判断 MinigameTime 0