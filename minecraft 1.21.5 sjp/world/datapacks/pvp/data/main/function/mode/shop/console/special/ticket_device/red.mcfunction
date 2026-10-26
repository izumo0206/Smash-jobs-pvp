execute unless score 青チーム ticket matches 1.. run tellraw @s {text:'青チームのチケットは既に0です',color:'red'}
execute unless score 青チーム ticket matches 1.. run return 0
clear @s minecraft:carrot_on_a_stick[minecraft:custom_data~{shop_ticket_device:1b}] 1
scoreboard players remove 青チーム ticket 1
tellraw @a [{text:'赤チームがチケット破壊装置を使用！ ',color:'red',bold:1b},{text:'青チームのチケット -1（残り ',color:'blue'},{score:{name:'青チーム',objective:'ticket'},color:'white',bold:1b},{text:'）',color:'blue'}]
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 0.6 1.5 1
