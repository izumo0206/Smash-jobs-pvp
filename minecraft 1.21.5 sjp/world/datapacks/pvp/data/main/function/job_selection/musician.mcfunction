#ハンター

execute if data storage main:pick {active:1b} as @p run tellraw @s {"text":"音楽家は未実装のため選択できません。","color":"red"}
execute if data storage main:pick {active:1b} run return 0

execute at @e[tag=jobsentakuKun] run data merge block ~-2 ~3 ~ {front_text:{has_glowing_text:1b,messages:['{"text":""}','{"text":"BAN"}','{"text":""}','{"text":""}']},is_waxed:1b}

execute if entity @a[tag=FirstBAN] run return run function main:job_selection/tag_reset2

#タグ消し
function main:job_selection/tag_reset2

#暴発防止
scoreboard players set @p sneak 0

#タグ付け
tag @p add Musician

#持ち物
clear @p
give @p minecraft:carrot_on_a_stick{display:{Name:'{"text":"フェローチェ"}',Lore:['{"text":"周囲の敵に影響を与える"}']},Enchantments:[{id:knockback,lvl:1}]} 1
give @p minecraft:carrot_on_a_stick{display:{Name:'{"text":"クレッシェンド"}',Lore:['{"text":"オーラの効果を増大させる"}']},Enchantments:[{id:knockback,lvl:1}]} 1
give @p minecraft:leather_chestplate{display:{Name:"\"音楽家のジャケット\"",Lore:["\"お気に入りのジャケット\""],color:85922},Trim:{material:"lapis",pattern:"tide"},Unbreakable:1,HideFlags:196}
give @p minecraft:leather_leggings{display:{Name:"\"音楽家のズボン\"",Lore:["\"お気に入りのズボン\""],color:85922},Trim:{material:"lapis",pattern:"tide"},Unbreakable:1,HideFlags:196}
give @p minecraft:leather_boots{display:{Name:"\"音楽家のズボン\"",Lore:["\"お気に入りのズボン\""],color:85922},Trim:{material:"lapis",pattern:"tide"},Unbreakable:1,HideFlags:196}
item replace entity @p armor.chest from entity @p container.2
item replace entity @p armor.legs from entity @p container.3
item replace entity @p armor.feet from entity @p container.4
clear @p minecraft:leather_chestplate 1
clear @p minecraft:leather_leggings 1
clear @p minecraft:leather_boots 1
give @p minecraft:music_disc_chirp{display:{Name:'{"text":"ヴィヴァーチェ"}',Lore:['{"text":"いきいきと、活気に満ちた"}']}} 1
give @p minecraft:music_disc_far{display:{Name:'{"text":"ドルチェ"}',Lore:['{"text":"優しく、柔らかく"}']}} 1
give @p minecraft:music_disc_relic{display:{Name:'{"text":"グランディオーソ"}',Lore:['{"text":"壮大に、堂々と"}']}} 1



#ピック宣言
title @a[tag=Standbypick] title ["",{"selector":"@p"},{"text":"：音楽家"}]

#jumpリセット
scoreboard players set @p Jump 0
scoreboard players set @p MusicianCD 0

#選択制限
execute at @e[tag=jobsentakuKun] run data merge block ~-2 ~3 ~ {front_text:{has_glowing_text:1b,messages:['{"text":""}','{"selector":"@p"}','{"text":""}','{"text":""}']},is_waxed:1b}
