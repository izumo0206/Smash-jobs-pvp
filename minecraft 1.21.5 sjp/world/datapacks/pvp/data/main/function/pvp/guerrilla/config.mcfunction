#上級ゲリラ兵の調整用パラメーター（ここの数値だけ書き換えればよい）
#反映：/reload の後、職業を選び直す（または /function main:pvp/guerrilla/config）
#単位：tick = 1/20秒、距離 = ブロック

#銃（sg ショットガン / ak AK47 / gl Garill / p90 SMG / tec Tec9 / rv リボルバー）
#  dmg     1発（1粒）のダメージ        hs      ヘッドショット時のダメージ
#  pellets 1回に出る粒数               range   射程（ブロック）
#  rpm     毎分の発射数（単発銃は連射間隔に換算）
#  spread_c しゃがみ時の拡散角（片側・度×100）  spread_s 立ち時の拡散角（片側・度×100）
#  move    移動中の拡散倍率（×10。10 = 変化なし、20 = 2倍）
#  mag     装弾数                      reload  リロード時間（tick）
#  weight  持っている間の移動速度の増減（-0.15 = 15%遅い、0.1 = 10%速い）
#  far / far_dmg  距離減衰：far ブロックを超えると、ダメージ（ヘッドショット含む）が far_dmg になる（1 = 0.5ハート。far:0 で減衰なし）
#  crouch_move  しゃがみ歩き中の拡散倍率（×10。しゃがみ止まりの拡散 spread_c に掛ける。9 = しゃがみ止まりより少し良い、12 = 少し悪い）
#  max_dmg  1回の射撃で同じ相手に与えるダメージの上限（10 = 5ハート。0 で上限なし）
#  knockback  1 = 当たった相手をノックバックさせる、0 = ノックバックなし（今は全銃 0）
#  blood  命中時の血の量（粒の数。0 で出さない）
data modify storage main:guerrilla param.sg set value {dmg:0.7,hs:0.7,pellets:10,range:20,rpm:34,spread_c:644,spread_s:1357,move:20,mag:5,reload:30,weight:-0.1,far:10,far_dmg:0.35,crouch_move:9,max_dmg:7,knockback:0,blood:12}
data modify storage main:guerrilla param.ak set value {dmg:0.5,hs:0.5,pellets:1,range:40,rpm:600,spread_c:571,spread_s:853,move:40,mag:30,reload:40,weight:-0.15,far:10,far_dmg:0.25,crouch_move:9,max_dmg:0,knockback:0,blood:12}
data modify storage main:guerrilla param.gl set value {dmg:0.53,hs:0.53,pellets:1,range:40,rpm:500,spread_c:571,spread_s:853,move:40,mag:35,reload:40,weight:-0.15,far:10,far_dmg:0.27,crouch_move:9,max_dmg:0,knockback:0,blood:12}
data modify storage main:guerrilla param.p90 set value {dmg:0.29,hs:0.29,pellets:1,range:40,rpm:960,spread_c:548,spread_s:1086,move:15,mag:50,reload:50,weight:0.1,far:10,far_dmg:0.15,crouch_move:9,max_dmg:0,knockback:0,blood:24}
data modify storage main:guerrilla param.tec set value {dmg:0.54,hs:0.54,pellets:1,range:40,rpm:400,spread_c:571,spread_s:571,move:10,mag:20,reload:30,weight:0.15,far:10,far_dmg:0.27,crouch_move:9,max_dmg:0,knockback:0,blood:12}
data modify storage main:guerrilla param.rv set value {dmg:3.4,hs:3.4,pellets:1,range:40,rpm:77,spread_c:286,spread_s:286,move:40,mag:6,reload:50,weight:0.15,far:10,far_dmg:1.7,crouch_move:9,max_dmg:0,knockback:0,blood:24}

#銃共通
#  hs_radius ヘッドショット判定の半径（目の位置から）   assist アシストとみなす時間（tick）
#  alt_model / alt_color  リロード中・コッキング中の見た目（革の馬鎧の染色色。10進のRGB値）
#  trail_from / trail_size  弾の表示：表示を始める距離（ブロック。手前はクロスヘアにかからないよう出さない）と粒の大きさ
#  whiz_radius  弾がこの距離（ブロック）以内をかすめた敵に風切り音を鳴らす
#  muzzle_fx / shell  発射エフェクト（1 = 閃光と薬莢を出す、0 = 控えめ）と薬莢の見た目のアイテム
#  recoil_smoke  撃ったときに足元から舞う煙の量（0 で出さない）
#  hit_pitch  命中音の高さ（1.0 = 標準。小さいほど低い）  blood  爆発で当たったときの血の量（銃は各銃の blood）
data modify storage main:guerrilla param.common set value {hs_radius:0.45,assist:140,alt_model:"minecraft:leather_horse_armor",alt_color:4867385,trail_from:3,trail_size:0.6,whiz_radius:2,hit_pitch:0.9,blood:12,muzzle_fx:1,shell:"minecraft:gold_nugget",recoil_smoke:3}


#グレネード：radius 半径 / damage ダメージ
data modify storage main:guerrilla param.grenade set value {radius:4,damage:12}

#頭蓋骨の必要数
data modify storage main:guerrilla param.reward set value {uav:1,bombbow:3,carpet:5,nuke:10}

#UAV：seconds 発光させる秒数
data modify storage main:guerrilla param.uav set value {seconds:10}

#爆撃要請（望遠鏡）：望遠鏡をのぞいて離した瞬間に、見ていた地点を爆撃する
#  uses 使える回数 / aim 狙える距離（ブロック） / count 1地点あたりの爆撃回数 / warn 決定から1回目までの警告時間（tick） / interval 爆撃の間隔（tick） / radius / damage
data modify storage main:guerrilla param.bombbow set value {uses:3,aim:100,count:3,warn:20,interval:10,radius:4,damage:10}

#絨毯爆撃：height 高さ / speed 1tickに進む距離 / duration 飛行時間（tick） / bombs 投下するクリーパーの総数 / radius / damage
#  fire_sec 爆発の後に残る炎の秒数 / fire_radius 炎の半径 / fire_damage 炎の中の敵へのダメージ / fire_interval ダメージの間隔（tick）
data modify storage main:guerrilla param.carpet set value {height:15,speed:0.8,duration:75,bombs:14,radius:4,damage:12,fire_sec:10,fire_radius:2.5,fire_damage:1,fire_interval:10}

#内部で使う定数（変更不要）
function main:pvp/silent_damage/setup
scoreboard objectives add GuShotDmg dummy
scoreboard objectives add GuScope dummy
scoreboard objectives add GuBombUse dummy
scoreboard players set #10 GuCalc 10
scoreboard players set #2 GuCalc 2
scoreboard players set #4 GuCalc 4
