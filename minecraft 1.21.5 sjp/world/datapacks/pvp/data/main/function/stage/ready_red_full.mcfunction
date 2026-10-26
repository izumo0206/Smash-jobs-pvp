#青チーム準備OK

#スコアボード
scoreboard players set メインスタート判断(赤) MainStartJuDge 1

execute at @e[tag=AkaNoStart] run fill ~ ~1 ~ ~ ~1 ~ minecraft:oak_button[facing=west]

#アーマースタンド 消す
kill @e[tag=AkaNoStartAmasutaAkaReady0]
kill @e[tag=AoNoStartAmasutaAkaReady0]
kill @e[tag=AkaNoStartAmasutaAkaReady1]
kill @e[tag=AoNoStartAmasutaAkaReady1]

#アーマースタンド
execute at @e[tag=AkaNoStart] run summon minecraft:armor_stand ^-1.85 ^-1 ^0.3 {Marker:false,Invisible:true,Tags:["AkaNoStartAmasutaAkaReady1"],CustomName:'{"text":"準備OK！","color":"red"}',CustomNameVisible:true,NoGravity:true,Glowing:false}
execute at @e[tag=AoNoStart] run summon minecraft:armor_stand ^1.85 ^-1 ^-0.3 {Marker:false,Invisible:true,Tags:["AoNoStartAmasutaAkaReady1"],CustomName:'{"text":"準備OK！","color":"red"}',CustomNameVisible:true,NoGravity:true,Glowing:false}

