#赤チーム準備OK

#スコアボード
scoreboard players set メインスタート判断(赤) MainStartJuDge 1

#ガラスで埋めてダイヤ　ボタン消す
execute at @e[tag=AkaNoSuta-toTitenn] run fill ~-7 ~ ~ ~6 ~6 ~ minecraft:red_stained_glass_pane
execute at @e[tag=AkaNoSuta-toTitenn] run setblock ~ ~2 ~ minecraft:red_stained_glass_pane destroy

#アーマースタンド 消す
kill @e[tag=AkaNoSuta-toTitenNoAmasuta0]
kill @e[tag=AkaNoSuta-toTitenNoAmasutaAkaReady0]
kill @e[tag=AoNoSuta-toTitenNoAmasutaAkaReady0]

#アーマースタンド
execute at @e[tag=AkaNoSuta-toTitenn] run summon minecraft:armor_stand ~ ~-0.85 ~0.3 {Marker:false,Invisible:true,Tags:["AkaNoSuta-toTitenNoAmasuta1"],CustomName:{text:'両チームとも準備OKに',color:'yellow'},CustomNameVisible:true,NoGravity:true,Glowing:false}
execute at @e[tag=AkaNoSuta-toTitenn] run summon minecraft:armor_stand ~ ~-1.15 ~0.3 {Marker:false,Invisible:true,Tags:["AkaNoSuta-toTitenNoAmasuta1"],CustomName:{text:'なったらスタート！',color:'yellow'},CustomNameVisible:true,NoGravity:true,Glowing:false}
execute at @e[tag=AkaNoSuta-toTitenn] run summon minecraft:armor_stand ~-1.85 ~-1 ~0.3 {Marker:false,Invisible:true,Tags:["AkaNoSuta-toTitenNoAmasutaAkaReady1"],CustomName:{text:'準備OK！',color:'red'},CustomNameVisible:true,NoGravity:true,Glowing:false}
execute at @e[tag=AoNoSuta-toTitenn] run summon minecraft:armor_stand ~1.85 ~-1 ~-0.3 {Marker:false,Invisible:true,Tags:["AoNoSuta-toTitenNoAmasutaAkaReady1"],CustomName:{text:'準備OK！',color:'red'},CustomNameVisible:true,NoGravity:true,Glowing:false}
