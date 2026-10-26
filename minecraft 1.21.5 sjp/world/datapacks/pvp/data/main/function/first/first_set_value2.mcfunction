#初期設定 値代入初期化 


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

scoreboard players set @s MinigameScore 0
########################################################