#PVPスコアボード宣言

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

#モード宣言
scoreboard objectives add Mode dummy "モード"
scoreboard players set -モード選択- Mode 0

#デス数
scoreboard objectives add death deathCount
#チケット計算用
scoreboard objectives add DeathMP_sub dummy
scoreboard players set 2 DeathMP_sub 2
#青チームチケット
scoreboard players set 青チーム ticket 0
#赤チームチケット
scoreboard players set 赤チーム ticket 0
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
scoreboard players set 盾耐久値 shield_sub 3000


#スカウター
scoreboard objectives add ScouterSickle minecraft.used:minecraft.netherite_hoe "偵察者の鎌を使った"
scoreboard objectives add dameged minecraft.custom:minecraft.damage_taken


#アシスト　MP
scoreboard objectives add AssistMP dummy
#アシスト　切り替え
scoreboard objectives add Kirikae dummy
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

#ビーストテイマー MP
scoreboard objectives add BeasttamerMP dummy
#クールダウン
scoreboard objectives add BeasttamerCooldown dummy

#バードマン クールダウン
scoreboard objectives add BirdmanCooldown dummy

#ザック
scoreboard objectives add Ray dummy

#呪術師
scoreboard objectives add ShamanMP dummy

#待機所
scoreboard objectives add StageSetting dummy
#チケット
scoreboard objectives add TicketValueSet dummy
scoreboard players set チケットの数判定用計算用 TicketValueSet 11
scoreboard players set チケットの数判定用計算用20 TicketValueSet 20
#時間
scoreboard objectives add TimeValueSet dummy
scoreboard players set 時間設定判定用MAX TimeValueSet 13
scoreboard players set 時間設定判定用計算用倍率 TimeValueSet 12000
scoreboard players set 時間設定判定用計算用1 TimeValueSet 1