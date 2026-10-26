#ステージ セット

#スコアボード宣言
scoreboard objectives add MainStartJuDge dummy
#スコアボード初期化
scoreboard players set メインスタート判断(赤) MainStartJuDge 0
scoreboard players set メインスタート判断(青) MainStartJuDge 0

kill @e[tag=AkaNoStartAmasutaAoReady1]
kill @e[tag=AoNoStartAmasutaAoReady1]
kill @e[tag=AoNoStartAmasutaAkaReady1]
kill @e[tag=AkaNoStartAmasutaAkaReady1]
kill @e[tag=AkaNoStartAmasutaAoReady0]
kill @e[tag=AoNoStartAmasutaAoReady0]
kill @e[tag=AoNoStartAmasutaAkaReady0]
kill @e[tag=AkaNoStartAmasutaAkaReady0]

#アーマースタンド
execute at @e[tag=AoNoStart] run summon minecraft:armor_stand ^1.85 ^-1 ^-0.3 {Marker:false,Invisible:true,Tags:["AoNoStartAmasutaAkaReady0"],CustomName:'{"text":"準備中...","color":"red"}',CustomNameVisible:true,NoGravity:true,Glowing:false}
execute at @e[tag=AoNoStart] run summon minecraft:armor_stand ^-1.85 ^-1 ^-0.3 {Marker:false,Invisible:true,Tags:["AoNoStartAmasutaAoReady0"],CustomName:'{"text":"準備中...","color":"blue"}',CustomNameVisible:true,NoGravity:true,Glowing:false}



#アーマースタンド
execute at @e[tag=AkaNoStart] run summon minecraft:armor_stand ^-1.85 ^-1 ^0.3 {Marker:false,Invisible:true,Tags:["AkaNoStartAmasutaAkaReady0"],CustomName:'{"text":"準備中...","color":"red"}',CustomNameVisible:true,NoGravity:true,Glowing:false}
execute at @e[tag=AkaNoStart] run summon minecraft:armor_stand ^1.85 ^-1 ^0.3 {Marker:false,Invisible:true,Tags:["AkaNoStartAmasutaAoReady0"],CustomName:'{"text":"準備中...","color":"blue"}',CustomNameVisible:true,NoGravity:true,Glowing:false}

execute at @e[tag=AoNoStart] run fill ~ ~1 ~ ~ ~1 ~ minecraft:stone_button[facing=east]
execute at @e[tag=AkaNoStart] run fill ~ ~1 ~ ~ ~1 ~ minecraft:stone_button[facing=west]