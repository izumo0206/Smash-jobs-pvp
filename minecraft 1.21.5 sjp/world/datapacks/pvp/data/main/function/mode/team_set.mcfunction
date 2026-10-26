#全員チーム離脱
team leave @a
tag @a remove TeamSetSpectator

playsound minecraft:entity.arrow.hit_player master @a

#抽選用タグ
tag @a add Chusen

#青チーム選択
team join Blue @r[tag=Chusen,limit=2]

tag @a[team=Blue] remove Chusen

#赤チーム選択
team join Red @r[tag=Chusen,limit=2]

tag @a[team=Red] remove Chusen

#選ばれた4人は参加者、残りは観戦者
gamemode adventure @a[team=Blue]
gamemode adventure @a[team=Red]
tag @a[tag=Chusen] add TeamSetSpectator
gamemode spectator @a[tag=Chusen]

tag @a remove Chusen
