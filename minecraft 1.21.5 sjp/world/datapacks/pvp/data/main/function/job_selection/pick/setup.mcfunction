# 初回開始時に一度だけ呼ばれる。既存ワールドではscoreboard.datを直接編集しない。
scoreboard objectives add PickCtrl dummy
scoreboard objectives add PickPool dummy
scoreboard objectives add PickJob dummy
scoreboard objectives add PickAction trigger
bossbar add main:pick {"text":"ピックフェーズ"}
bossbar set main:pick visible false
scoreboard players set #10 PickCtrl 10
scoreboard players set #20 PickCtrl 20
scoreboard players set #active PickCtrl 0
data modify storage main:pick configured set value 1b
data remove storage main:pick active
