#回復スナイパーの調整用パラメーター（ここの数値だけ書き換えればよい）
#反映：/reload の後、職業を選び直す（または /function main:pvp/healsniper/config）
#単位：tick = 1/20秒、距離 = ブロック、sec = 秒、lv = 効果レベル（0 = Ⅰ、1 = Ⅱ…）

#スナイパー（右クリックで射撃。スニーク中はズーム）
#  dmg 敵へのダメージ（4 = 2ハート）  hs_dmg ヘッドショット時のダメージ
#  hs_slow_sec / hs_slow_lv  ヘッドショット時の鈍足
#  heal 味方の回復量（6 = 3ハート）  regen_sec / regen_lv  回復後に味方へ与える再生
#  rpm 毎分の発射数（60 = 1秒に1発）  mag 装弾数  reload リロード時間（tick）  range 射程
#  zoom スニーク中の移動速度の倍率の増減（-0.95 で約1.9倍ズーム。Minecraftの仕様上 -1 の約2倍が上限で、-1 だと動けない）
data modify storage main:healsniper param.rifle set value {dmg:4,hs_dmg:4,hs_slow_sec:2,hs_slow_lv:0,heal:6,regen_sec:5,regen_lv:1,rpm:60,mag:10,reload:40,range:64,zoom:-0.95}

#麻酔弾（右クリックで発射。頭蓋骨のような弾がゆっくり飛ぶ）
#  range 射程  speed 1tickに進む距離（2.5 = 0.2秒で10m）  cd クールダウン（tick）
#  sleep 眠らせる時間（tick）  wake_dark_sec / wake_slow_sec  ダメージで起きたときの暗闇・動けない時間
data modify storage main:healsniper param.dart set value {range:10,speed:2.5,cd:300,sleep:200,wake_dark_sec:1,wake_slow_sec:1}

#ナノブースト（右クリックで、狙っている方向の味方に必ず当たる）
#  kills この数だけキルすると手に入る（持てるのは1個まで。使うと消える）  range 届く距離  aim 狙いからこの距離（ブロック）以内の味方を対象にする
#  sec 効果時間  scale / reach 体格・リーチの増加（1 = 2倍）  speed_lv / strength_lv / regen_lv  効果レベル
data modify storage main:healsniper param.nano set value {kills:1,range:40,aim:2.5,sec:10,scale:1.0,reach:1.0,speed_lv:1,strength_lv:1,regen_lv:2}

#共通：hs_radius ヘッドショット判定の半径  trail_from / trail_size 弾の表示（開始距離・大きさ）  blood 血の量
data modify storage main:healsniper param.common set value {hs_radius:0.45,trail_from:3,trail_size:0.5,blood:12}

#内部で使う定数（変更不要）
function main:pvp/silent_damage/setup
scoreboard players set #2 HsCalc 2
scoreboard players set #4 HsCalc 4
scoreboard players set #20 HsCalc 20
scoreboard players set #9 HsCalc 9
scoreboard objectives add HsKill playerKillCount
scoreboard objectives add HsNanoHave dummy
execute store result score #nanokills HsCalc run data get storage main:healsniper param.nano.kills
