#青チーム準備OK

#スコアボード
scoreboard players set メインスタート判断(青) MainStartJuDge 1

#ガラスで埋めてダイヤ　ボタン消す
execute at @e[tag=AoNoSuta-toTitenn] run fill ~5 ~ ~ ~-5 ~6 ~ minecraft:blue_stained_glass_pane keep
execute at @e[tag=AoNoSuta-toTitenn] run setblock ~ ~2 ~ minecraft:blue_stained_glass_pane destroy

#アーマースタンド 消す
kill @e[tag=AoNoSuta-toTitenNoAmasuta0]
kill @e[tag=AkaNoSuta-toTitenNoAmasutaAoReady0]
kill @e[tag=AoNoSuta-toTitenNoAmasutaAoReady0]

#アーマースタンド
execute at @e[tag=AoNoSuta-toTitenn] run summon minecraft:armor_stand ~ ~-0.85 ~-0.3 {Marker:false,Invisible:true,Tags:["AoNoSuta-toTitenNoAmasuta1"],CustomName:{text:'両チームとも準備OKに',color:'yellow'},CustomNameVisible:true,NoGravity:true,Glowing:false}
execute at @e[tag=AoNoSuta-toTitenn] run summon minecraft:armor_stand ~ ~-1.15 ~-0.3 {Marker:false,Invisible:true,Tags:["AoNoSuta-toTitenNoAmasuta1"],CustomName:{text:'なったらスタート！',color:'yellow'},CustomNameVisible:true,NoGravity:true,Glowing:false}
execute at @e[tag=AoNoSuta-toTitenn] run summon minecraft:armor_stand ~-1.85 ~-1 ~-0.3 {Marker:false,Invisible:true,Tags:["AoNoSuta-toTitenNoAmasutaAoReady1"],CustomName:{text:'準備OK！',color:'blue'},CustomNameVisible:true,NoGravity:true,Glowing:false}
execute at @e[tag=AkaNoSuta-toTitenn] run summon minecraft:armor_stand ~1.85 ~-1 ~0.3 {Marker:false,Invisible:true,Tags:["AkaNoSuta-toTitenNoAmasutaAoReady1"],CustomName:{text:'準備OK！',color:'blue'},CustomNameVisible:true,NoGravity:true,Glowing:false}
