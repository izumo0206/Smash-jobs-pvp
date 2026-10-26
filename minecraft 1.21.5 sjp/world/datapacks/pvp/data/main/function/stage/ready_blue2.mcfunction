#青チーム準備OK

#スコアボード
scoreboard players set メインスタート判断(青) MainStartJuDge2 1

#ガラスで埋めてダイヤ　ボタン消す
execute at @e[tag=AoNoSuta-toTitenn2] run fill ~ ~ ~6 ~ ~4 ~-6 minecraft:blue_stained_glass_pane keep
execute at @e[tag=AoNoSuta-toTitenn2] run setblock ~ ~2 ~ minecraft:blue_stained_glass_pane destroy

#アーマースタンド 消す
kill @e[tag=AoNoSuta-toTitenNoAmasuta02]
kill @e[tag=AkaNoSuta-toTitenNoAmasutaAoReady02]
kill @e[tag=AoNoSuta-toTitenNoAmasutaAoReady02]

#アーマースタンド
execute at @e[tag=AoNoSuta-toTitenn2] run summon minecraft:armor_stand ~0.3 ~-0.85 ~ {Marker:false,Invisible:true,Tags:["AoNoSuta-toTitenNoAmasuta12"],CustomName:{text:'両チームとも準備OKに',color:'yellow'},CustomNameVisible:true,NoGravity:true,Glowing:false}
execute at @e[tag=AoNoSuta-toTitenn2] run summon minecraft:armor_stand ~0.3 ~-1.15 ~ {Marker:false,Invisible:true,Tags:["AoNoSuta-toTitenNoAmasuta12"],CustomName:{text:'なったらスタート！',color:'yellow'},CustomNameVisible:true,NoGravity:true,Glowing:false}
execute at @e[tag=AoNoSuta-toTitenn2] run summon minecraft:armor_stand ~0.3 ~-1 ~-1.85 {Marker:false,Invisible:true,Tags:["AoNoSuta-toTitenNoAmasutaAoReady12"],CustomName:{text:'準備OK！',color:'blue'},CustomNameVisible:true,NoGravity:true,Glowing:false}
execute at @e[tag=AkaNoSuta-toTitenn2] run summon minecraft:armor_stand ~-0.3 ~-1 ~1.85 {Marker:false,Invisible:true,Tags:["AkaNoSuta-toTitenNoAmasutaAoReady12"],CustomName:{text:'準備OK！',color:'blue'},CustomNameVisible:true,NoGravity:true,Glowing:false}
