#ステージ セット2

#スコアボード宣言
scoreboard objectives add MainStartJuDge2 dummy
#スコアボード初期化
scoreboard players set メインスタート判断(赤) MainStartJuDge2 0
scoreboard players set メインスタート判断(青) MainStartJuDge2 0





#青
#ガラスの壁　ダイヤ　ボタン
execute at @e[tag=AoNoSuta-toTitenn2] run fill ~ ~ ~6 ~ ~4 ~-6 minecraft:blue_stained_glass_pane
execute at @e[tag=AoNoSuta-toTitenn2] run setblock ~ ~2 ~ minecraft:diamond_block destroy
execute at @e[tag=AoNoSuta-toTitenn2] run setblock ~1 ~2 ~ minecraft:stone_button[facing=east]

#アーマースタンド
execute at @e[tag=AoNoSuta-toTitenn2] run summon minecraft:armor_stand ~0.3 ~-0.7 ~ {Marker:false,Invisible:true,Tags:["AoNoSuta-toTitenNoAmasuta02"],CustomName:{text:'ボタンを押してReady',color:'yellow'},CustomNameVisible:true,NoGravity:true,Glowing:false}
execute at @e[tag=AoNoSuta-toTitenn2] run summon minecraft:armor_stand ~0.3 ~-1 ~ {Marker:false,Invisible:true,Tags:["AoNoSuta-toTitenNoAmasuta02"],CustomName:{text:'両チームとも準備OKに',color:'yellow'},CustomNameVisible:true,NoGravity:true,Glowing:false}
execute at @e[tag=AoNoSuta-toTitenn2] run summon minecraft:armor_stand ~0.3 ~-1.3 ~ {Marker:false,Invisible:true,Tags:["AoNoSuta-toTitenNoAmasuta02"],CustomName:{text:'なったらスタート！',color:'yellow'},CustomNameVisible:true,NoGravity:true,Glowing:false}
execute at @e[tag=AoNoSuta-toTitenn2] run summon minecraft:armor_stand ~0.3 ~-1 ~1.85 {Marker:false,Invisible:true,Tags:["AoNoSuta-toTitenNoAmasutaAkaReady02"],CustomName:{text:'準備中...',color:'red'},CustomNameVisible:true,NoGravity:true,Glowing:false}
execute at @e[tag=AoNoSuta-toTitenn2] run summon minecraft:armor_stand ~0.3 ~-1 ~-1.85 {Marker:false,Invisible:true,Tags:["AoNoSuta-toTitenNoAmasutaAoReady02"],CustomName:{text:'準備中...',color:'blue'},CustomNameVisible:true,NoGravity:true,Glowing:false}



#赤
#ガラスの壁 ダイヤ　ボタン
execute at @e[tag=AkaNoSuta-toTitenn2] run fill ~ ~ ~6 ~ ~4 ~-6 minecraft:red_stained_glass_pane
execute at @e[tag=AkaNoSuta-toTitenn2] run setblock ~ ~2 ~ minecraft:diamond_block destroy
execute at @e[tag=AkaNoSuta-toTitenn2] run setblock ~-1 ~2 ~ minecraft:stone_button[facing=west]

#アーマースタンド
execute at @e[tag=AkaNoSuta-toTitenn2] run summon minecraft:armor_stand ~-0.3 ~-0.7 ~ {Marker:false,Invisible:true,Tags:["AkaNoSuta-toTitenNoAmasuta02"],CustomName:{text:'ボタンを押してReady',color:'yellow'},CustomNameVisible:true,NoGravity:true,Glowing:false}
execute at @e[tag=AkaNoSuta-toTitenn2] run summon minecraft:armor_stand ~-0.3 ~-1 ~ {Marker:false,Invisible:true,Tags:["AkaNoSuta-toTitenNoAmasuta02"],CustomName:{text:'両チームとも準備OKに',color:'yellow'},CustomNameVisible:true,NoGravity:true,Glowing:false}
execute at @e[tag=AkaNoSuta-toTitenn2] run summon minecraft:armor_stand ~-0.3 ~-1.3 ~ {Marker:false,Invisible:true,Tags:["AkaNoSuta-toTitenNoAmasuta02"],CustomName:{text:'なったらスタート！',color:'yellow'},CustomNameVisible:true,NoGravity:true,Glowing:false}
execute at @e[tag=AkaNoSuta-toTitenn2] run summon minecraft:armor_stand ~-0.3 ~-1 ~-1.85 {Marker:false,Invisible:true,Tags:["AkaNoSuta-toTitenNoAmasutaAkaReady02"],CustomName:{text:'準備中...',color:'red'},CustomNameVisible:true,NoGravity:true,Glowing:false}
execute at @e[tag=AkaNoSuta-toTitenn2] run summon minecraft:armor_stand ~-0.3 ~-1 ~1.85 {Marker:false,Invisible:true,Tags:["AkaNoSuta-toTitenNoAmasutaAoReady02"],CustomName:{text:'準備中...',color:'blue'},CustomNameVisible:true,NoGravity:true,Glowing:false}
