#青チーム準備OK

#スコアボード
scoreboard players set メインスタート判断(青) MainStartJuDge 0

execute at @e[tag=AoNoStart] run fill ~ ~1 ~ ~ ~1 ~ minecraft:stone_button[facing=east]

#アーマースタンド 消す
kill @e[tag=AkaNoStartAmasutaAoReady0]
kill @e[tag=AoNoStartAmasutaAoReady0]
kill @e[tag=AkaNoStartAmasutaAoReady1]
kill @e[tag=AoNoStartAmasutaAoReady1]


#アーマースタンド
execute at @e[tag=AoNoStart] run summon minecraft:armor_stand ^-1.85 ^-1 ^-0.3 {Marker:false,Invisible:true,Tags:["AoNoStartAmasutaAoReady0"],CustomName:'{"text":"準備中...","color":"blue"}',CustomNameVisible:true,NoGravity:true,Glowing:false}
execute at @e[tag=AkaNoStart] run summon minecraft:armor_stand ^1.85 ^-1 ^0.3 {Marker:false,Invisible:true,Tags:["AkaNoStartAmasutaAoReady0"],CustomName:'{"text":"準備中...","color":"blue"}',CustomNameVisible:true,NoGravity:true,Glowing:false}


