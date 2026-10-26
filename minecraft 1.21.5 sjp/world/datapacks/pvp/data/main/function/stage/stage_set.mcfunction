#ステージ セット

#スコアボード宣言
scoreboard objectives add MainStartJuDge dummy
#スコアボード初期化
scoreboard players set メインスタート判断(赤) MainStartJuDge 0
scoreboard players set メインスタート判断(青) MainStartJuDge 0





#青
#ガラスの壁　ダイヤ　ボタン
execute at @e[tag=AoNoSuta-toTitenn] run fill ~5 ~ ~ ~-5 ~6 ~ minecraft:blue_stained_glass_pane keep
execute at @e[tag=AoNoSuta-toTitenn] run setblock ~ ~2 ~ minecraft:diamond_block destroy
execute at @e[tag=AoNoSuta-toTitenn] run setblock ~ ~2 ~-1 minecraft:stone_button[facing=north]

#アーマースタンド
execute at @e[tag=AoNoSuta-toTitenn] run summon minecraft:armor_stand ~ ~-0.7 ~-0.3 {Marker:false,Invisible:true,Tags:["AoNoSuta-toTitenNoAmasuta0"],CustomName:{text:'ボタンを押してReady',color:'yellow'},CustomNameVisible:true,NoGravity:true,Glowing:false}
execute at @e[tag=AoNoSuta-toTitenn] run summon minecraft:armor_stand ~ ~-1 ~-0.3 {Marker:false,Invisible:true,Tags:["AoNoSuta-toTitenNoAmasuta0"],CustomName:{text:'両チームとも準備OKに',color:'yellow'},CustomNameVisible:true,NoGravity:true,Glowing:false}
execute at @e[tag=AoNoSuta-toTitenn] run summon minecraft:armor_stand ~ ~-1.3 ~-0.3 {Marker:false,Invisible:true,Tags:["AoNoSuta-toTitenNoAmasuta0"],CustomName:{text:'なったらスタート！',color:'yellow'},CustomNameVisible:true,NoGravity:true,Glowing:false}
execute at @e[tag=AoNoSuta-toTitenn] run summon minecraft:armor_stand ~1.85 ~-1 ~-0.3 {Marker:false,Invisible:true,Tags:["AoNoSuta-toTitenNoAmasutaAkaReady0"],CustomName:{text:'準備中...',color:'red'},CustomNameVisible:true,NoGravity:true,Glowing:false}
execute at @e[tag=AoNoSuta-toTitenn] run summon minecraft:armor_stand ~-1.85 ~-1 ~-0.3 {Marker:false,Invisible:true,Tags:["AoNoSuta-toTitenNoAmasutaAoReady0"],CustomName:{text:'準備中...',color:'blue'},CustomNameVisible:true,NoGravity:true,Glowing:false}



#赤
#ガラスの壁 ダイヤ　ボタン
execute at @e[tag=AkaNoSuta-toTitenn] run fill ~-7 ~ ~ ~6 ~6 ~ minecraft:red_stained_glass_pane
execute at @e[tag=AkaNoSuta-toTitenn] run setblock ~ ~2 ~ minecraft:diamond_block destroy
execute at @e[tag=AkaNoSuta-toTitenn] run setblock ~ ~2 ~1 minecraft:stone_button[facing=south]

#アーマースタンド
execute at @e[tag=AkaNoSuta-toTitenn] run summon minecraft:armor_stand ~ ~-0.7 ~0.3 {Marker:false,Invisible:true,Tags:["AkaNoSuta-toTitenNoAmasuta0"],CustomName:{text:'ボタンを押してReady',color:'yellow'},CustomNameVisible:true,NoGravity:true,Glowing:false}
execute at @e[tag=AkaNoSuta-toTitenn] run summon minecraft:armor_stand ~ ~-1 ~0.3 {Marker:false,Invisible:true,Tags:["AkaNoSuta-toTitenNoAmasuta0"],CustomName:{text:'両チームとも準備OKに',color:'yellow'},CustomNameVisible:true,NoGravity:true,Glowing:false}
execute at @e[tag=AkaNoSuta-toTitenn] run summon minecraft:armor_stand ~ ~-1.3 ~0.3 {Marker:false,Invisible:true,Tags:["AkaNoSuta-toTitenNoAmasuta0"],CustomName:{text:'なったらスタート！',color:'yellow'},CustomNameVisible:true,NoGravity:true,Glowing:false}
execute at @e[tag=AkaNoSuta-toTitenn] run summon minecraft:armor_stand ~-1.85 ~-1 ~0.3 {Marker:false,Invisible:true,Tags:["AkaNoSuta-toTitenNoAmasutaAkaReady0"],CustomName:{text:'準備中...',color:'red'},CustomNameVisible:true,NoGravity:true,Glowing:false}
execute at @e[tag=AkaNoSuta-toTitenn] run summon minecraft:armor_stand ~1.85 ~-1 ~0.3 {Marker:false,Invisible:true,Tags:["AkaNoSuta-toTitenNoAmasutaAoReady0"],CustomName:{text:'準備中...',color:'blue'},CustomNameVisible:true,NoGravity:true,Glowing:false}
