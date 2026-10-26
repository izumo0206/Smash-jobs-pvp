#1vs4
#タイトルチカチカ防止
title @a times 0 10 0

#全員チーム離脱
team leave @a
tag @a remove TeamSetSpectator

playsound minecraft:entity.arrow.hit_player master @a

#抽選用タグ
tag @a add Chusen

#赤チーム選択
team join Red @r[tag=Chusen,limit=1]

tag @a[team=Red] remove Chusen

#青チーム選択

team join Blue @a[tag=Chusen]

tag @a remove Chusen

#ジョブの自動選択

execute at @a[team=Red] run function main:job_selection/killer

execute at @a[team=Blue] run function main:job_selection/escaper
