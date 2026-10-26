#弓兵


#タグ消し
execute as @e[tag=YumiheiNoMa] at @s run tag @p remove Assist
execute as @e[tag=YumiheiNoMa] at @s run tag @p remove Wizard
execute as @e[tag=YumiheiNoMa] at @s run tag @p remove Scouter
execute as @e[tag=YumiheiNoMa] at @s run tag @p remove Sword
execute as @e[tag=YumiheiNoMa] at @s run tag @p remove Pirate



#タグ付け
execute as @e[tag=YumiheiNoMa] at @s run tag @p add Bow

#持ち物
execute as @e[tag=YumiheiNoMa] at @s run clear @p
execute as @e[tag=YumiheiNoMa] at @s run give @p minecraft:stone_axe{display:{Name:'{"text":"バードマンアックス"}',Lore:['{"text":"飛びながら殴れ！"}','{"text":"飛べないクラフターはただのスティーブだ"}']},Unbreakable:1,HideFlags:7,Enchantments:[{id:sharpness,lvl:1}]}
execute as @e[tag=YumiheiNoMa] at @s run give @p minecraft:elytra 1
execute as @e[tag=YumiheiNoMa] at @s run give @p minecraft:firework_rocket 64
execute as @e[tag=YumiheiNoMa] at @s run give @p minecraft:bread 64

/summon villager ~ ~ ~ {VillagerData:{profession:"weaponsmith",level:5,type:"plains"},ArmorItems:[{},{},{},{id:"redstone_ore",Count:1}],Invulnerable:1,Offers:{Recipes:[{buy:{id:"redstone",Count:40},sell:{id:"leather_chestplate",Count:1,tag:{display:{Name:"\"怒りの証\"",color:16711680},Unbreakable:1,Enchantments:[{id:protection,lvl:2},{id:projectile_protection,lvl:1}]}},rewardExp:0,maxUses:1},{buy:{id:"redstone",Count:30},sell:{id:"leather_leggings",Count:1,tag:{display:{Name:"\"怒りの証\"",color:16711680},Unbreakable:1,Enchantments:[{id:protection,lvl:2}]}}},{buy:{id:"redstone",Count:20},sell:{id:"leather_boots",Count:1,tag:{display:{Name:"\"怒りの証\"",color:16711680},Unbreakable:1,Enchantments:[{id:protection,lvl:1},{id:feather_falling,lvl:1}]}}}]}}

execute if score ステージ決め StageSetting matches 0 at @e[tag=KariokiStageSentaku] run data merge block ~ ~2 ~ {Text1:'{"text":"現在の"}',Text2:'{"text":"ステージ"}',Text3:'[{"text":"☆VALOLANT☆"}]',Text4:'[{"text":""}]'}

execute unless score #2team_random_toggle value matches 10.. run team join random @a[team=!]
execute unless score #2team_random_toggle value matches 10.. run scoreboard players add #2team_random_toggle value 10



execute if score #2team_random_toggle value matches 11 run team join emerald @r[team=random]

team join purpur @r[team=random]

execute if score #2team_random_toggle value matches 12 run team join emerald @r[team=random]

execute if entity @a[team=random,limit=1] run function ex3:game/team_random/2team



execute if score #2team_random_toggle value matches 11 run scoreboard players set #2team_random_toggle value 2
execute if score #2team_random_toggle value matches 12.. run scoreboard players set #2team_random_toggle value 1

データパックを用いたPVPマップを遊ぶサーバーです。

多数あるジョブの中から一つを選択し二チームに別れて戦うPVP！

こういう人におすすめ
・マイクラPVPが好きな人
・マイクラで色んなギミックを楽しみたい人
・ジョブのバランス調整や、新ジョブの追加などマップ制作に意見を出すのが好きな人
・コマンドの知識は一切ないけど自分の考えたコマンドを使ったギミックを使ってみたい人
・マイクラコマンドを勉強したい人
・コマンドが得意な人