#全員チーム離脱
team leave @a
tag @a remove TeamSetSpectator

playsound minecraft:entity.arrow.hit_player master @a

#抽選用タグ
tag @a add Chusen

#青チーム選択
team join Blue @r[tag=Chusen,limit=3]

tag @a[team=Blue] remove Chusen

#赤チーム選択

team join Red @a[tag=Chusen]

tag @a remove Chusen
