#赤チーム準備OK

#スコアボード
scoreboard players set メインスタート判断(赤) MainStartJuDge2 1

#ガラスで埋めてダイヤ　ボタン消す
execute at @e[tag=AkaNoSuta-toTitenn2] run fill ~ ~ ~6 ~ ~4 ~-6 minecraft:red_stained_glass_pane
execute at @e[tag=AkaNoSuta-toTitenn2] run setblock ~ ~2 ~ minecraft:red_stained_glass_pane destroy

#アーマースタンド 消す
kill @e[tag=AkaNoSuta-toTitenNoAmasuta02]
kill @e[tag=AkaNoSuta-toTitenNoAmasutaAkaReady02]
kill @e[tag=AoNoSuta-toTitenNoAmasutaAkaReady02]

#アーマースタンド
execute at @e[tag=AkaNoSuta-toTitenn2] run summon minecraft:armor_stand ~-0.3 ~-0.85 ~ {Marker:false,Invisible:true,Tags:["AkaNoSuta-toTitenNoAmasuta12"],CustomName:{text:'両チームとも準備OKに',color:'yellow'},CustomNameVisible:true,NoGravity:true,Glowing:false}
execute at @e[tag=AkaNoSuta-toTitenn2] run summon minecraft:armor_stand ~-0.3 ~-1.15 ~ {Marker:false,Invisible:true,Tags:["AkaNoSuta-toTitenNoAmasuta12"],CustomName:{text:'なったらスタート！',color:'yellow'},CustomNameVisible:true,NoGravity:true,Glowing:false}
execute at @e[tag=AkaNoSuta-toTitenn2] run summon minecraft:armor_stand ~-0.3 ~-1 ~-1.85 {Marker:false,Invisible:true,Tags:["AkaNoSuta-toTitenNoAmasutaAkaReady12"],CustomName:{text:'準備OK！',color:'red'},CustomNameVisible:true,NoGravity:true,Glowing:false}
execute at @e[tag=AoNoSuta-toTitenn2] run summon minecraft:armor_stand ~0.3 ~-1 ~1.85 {Marker:false,Invisible:true,Tags:["AoNoSuta-toTitenNoAmasutaAkaReady12"],CustomName:{text:'準備OK！',color:'red'},CustomNameVisible:true,NoGravity:true,Glowing:false}
