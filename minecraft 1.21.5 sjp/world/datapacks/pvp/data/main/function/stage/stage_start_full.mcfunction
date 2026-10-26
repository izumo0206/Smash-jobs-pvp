#両チーム準備OK

#スコアボード
scoreboard players set メインスタート判断(赤) MainStartJuDge 0
scoreboard players set メインスタート判断(青) MainStartJuDge 0

#アマスタ消す
kill @e[tag=AkaNoStartAmasutaAoReady1]
kill @e[tag=AoNoStartAmasutaAoReady1]
kill @e[tag=AoNoStartAmasutaAkaReady1]
kill @e[tag=AkaNoStartAmasutaAkaReady1]
kill @e[tag=AkaNoStartAmasutaAoReady0]
kill @e[tag=AoNoStartAmasutaAoReady0]
kill @e[tag=AoNoStartAmasutaAkaReady0]
kill @e[tag=AkaNoStartAmasutaAkaReady0]



#スケジュール予約
schedule function main:stage/schedule/5_seconds_full 20t
schedule function main:stage/schedule/4_seconds_full 40t
schedule function main:stage/schedule/3_seconds_full 60t
schedule function main:stage/schedule/2_seconds_full 80t
schedule function main:stage/schedule/1_seconds_full 100t
schedule function main:stage/schedule/0_seconds_full 120t
