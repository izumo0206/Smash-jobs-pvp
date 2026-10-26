#初期設定




#ゲームルール
gamerule doDaylightCycle false
time set noon
#キープインベントリ
gamerule keepInventory true
#時間・天気
gamerule doWeatherCycle false
gamerule doDaylightCycle false
#モブ
gamerule mobGriefing false
gamerule doEntityDrops false
#コマブロ
gamerule commandBlockOutput false
gamerule sendCommandFeedback false



#ボスバー宣言
bossbar add time "時間"
bossbar add minecraft:gatiarea "ガチエリア"

#進捗
scoreboard objectives add progress dummy

#PVP宣言
#ゲームプレイ判断
scoreboard objectives add NumberOfPlayer dummy
#時間宣言
scoreboard objectives add time dummy "時間"
#終了時の制限時間
scoreboard objectives add FinishTime dummy
#チーム宣言
team add Blue
team add Red
team modify Blue color blue
team modify Red color red
team join Blue 青チーム
team join Red 赤チーム

#フレンドリーファイアナシ
team modify Blue friendlyFire false
team modify Red friendlyFire false
#タグ見せない
team modify Blue nametagVisibility hideForOtherTeams
team modify Red nametagVisibility hideForOtherTeams


#デス数
scoreboard objectives add death deathCount
#チケット計算用
scoreboard objectives add DeathMP_sub dummy
scoreboard players set 2 DeathMP_sub 2
#残りチケット表示
scoreboard objectives add ticket dummy "残りチケット数"
scoreboard objectives setdisplay sidebar ticket

#キル数
scoreboard objectives add killCount playerKillCount "キル数"
#スニーク
scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time
#歩き
scoreboard objectives add walk minecraft.custom:minecraft.walk_one_cm
#ダッシュ
scoreboard objectives add dash minecraft.custom:minecraft.sprint_one_cm
#ジャンプ
scoreboard objectives add Jump minecraft.custom:minecraft.jump


#剣士　スモーク　シールド
scoreboard objectives add smoke dummy
scoreboard objectives add shield minecraft.custom:minecraft.damage_blocked_by_shield "盾で防いだダメージ量"
scoreboard objectives add shield_sub dummy
scoreboard objectives add shieldCooldown dummy
scoreboard players set 盾耐久値 shield_sub 10000

#スカウター
scoreboard objectives add ScouterSickle minecraft.used:minecraft.netherite_hoe "偵察者の鎌を使った"
scoreboard objectives add dameged minecraft.custom:minecraft.damage_taken

#アシスト　MP
scoreboard objectives add AssistMP dummy
#クールダウン
scoreboard objectives add AssistCooldown dummy
#パーティクル
scoreboard objectives add AssistRadius dummy

#魔法使い　MP
scoreboard objectives add WizardMP dummy
#クールダウン
scoreboard objectives add WizardCooldown dummy
#選択呪文
scoreboard objectives add SelectJum dummy
#氷呪文
scoreboard objectives add WizardIce dummy

#ガチエリア
scoreboard objectives add GatiAreaMain dummy
scoreboard objectives add GatiAreaMainBossber dummy
scoreboard objectives add GatiAreaBlueMaxPlus dummy
scoreboard objectives add GatiAreaRedMaxPlus dummy
scoreboard objectives add GatiAreaWhichPlusNow dummy
scoreboard objectives add GatiAreaWhichOccupying dummy


#待機所
#モード宣言
scoreboard objectives add Mode dummy "モード"
#ステージ
scoreboard objectives add StageSetting dummy
#チケット
scoreboard objectives add TicketValueSet dummy
scoreboard players set チケットの数判定用計算用 TicketValueSet 11
scoreboard players set チケットの数判定用計算用20 TicketValueSet 20
#ガチエリア
scoreboard objectives add GatiAreaModeJudge dummy
#時間
scoreboard objectives add TimeValueSet dummy
scoreboard players set 時間設定判定用計算用1 TimeValueSet 1
#ステージ観察
scoreboard objectives add observation dummy


#訓練場
#スコアボード宣言
scoreboard objectives add MinigameTime dummy
scoreboard objectives add MinigameScore dummy
#ランダム
scoreboard objectives add random dummy
scoreboard objectives add random0 dummy
#ランダム計算用
scoreboard players set 200 random 200
scoreboard players set 100 random 100
scoreboard players set 50 random 50

#エンドロール
scoreboard objectives add endroll dummy

#祭司（リワーク）
scoreboard objectives add wraith_cd dummy
scoreboard objectives add wraith_ent dummy
scoreboard objectives add wraith_rc minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add wraith_dmg minecraft.custom:minecraft.damage_dealt
scoreboard objectives add wraith_void dummy
scoreboard objectives add wraith_drop_s minecraft.dropped:minecraft.golden_sword
scoreboard objectives add wraith_drop_f minecraft.dropped:minecraft.warped_fungus_on_a_stick
scoreboard objectives add wraith_type_1 dummy
scoreboard objectives add wraith_type_2 dummy
scoreboard objectives add wraith_type_3 dummy
scoreboard objectives add wraith_type_4 dummy
scoreboard objectives add wraith_mark_1 dummy
scoreboard objectives add wraith_mark_2 dummy
scoreboard objectives add wraith_mark_3 dummy
scoreboard objectives add wraith_mark_4 dummy
scoreboard objectives add wraith_sneak_cd dummy