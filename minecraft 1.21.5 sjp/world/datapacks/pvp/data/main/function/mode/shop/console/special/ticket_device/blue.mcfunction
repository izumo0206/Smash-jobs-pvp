execute unless score 赤チーム ticket matches 1.. run tellraw @s {text:'赤チームのチケットは既に0です',color:'red'}
execute unless score 赤チーム ticket matches 1.. run return 0
clear @s minecraft:carrot_on_a_stick[minecraft:custom_data~{shop_ticket_device:1b}] 1
scoreboard players remove 赤チーム ticket 1
tellraw @a [{text:'青チームがチケット破壊装置を使用！ ',color:'blue',bold:1b},{text:'赤チームのチケット -1（残り ',color:'red'},{score:{name:'赤チーム',objective:'ticket'},color:'white',bold:1b},{text:'）',color:'red'}]
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 0.6 1.5 1
