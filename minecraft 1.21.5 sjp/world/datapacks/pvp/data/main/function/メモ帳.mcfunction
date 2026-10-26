#遊ぶエリアを決めるところ（後でTPする場所決めるよう）

scoreboard players add ステージ決め StageSetting 1

scoreboard players set ステージ決め2 StageSetting 2

scoreboard players operation ステージ決め StageSetting %= ステージ決め2 StageSetting

#看板
execute if score ステージ決め StageSetting matches 0 at @e[tag=KariokiStageSentaku] run data merge block ~ ~2 ~ {Text1:'{"text":"現在の"}',Text2:'{"text":"ステージ"}',Text3:'[{"text":"☆ステージ1☆"}]',Text4:'[{"text":""}]'}
execute if score ステージ決め StageSetting matches 1 at @e[tag=KariokiStageSentaku] run data merge block ~ ~2 ~ {Text1:'{"text":"現在の"}',Text2:'{"text":"ステージ"}',Text3:'[{"text":"☆ステージ2☆"}]',Text4:'[{"text":""}]'}


#レッドストーン
#ステージ1
execute if score ステージ決め StageSetting matches 0 as @e[tag=CentralControlSystem] at @s run setblock ~2 ~ ~0 minecraft:redstone_block
execute if score ステージ決め StageSetting matches 0 as @e[tag=CentralControlSystem] at @s run setblock ~2 ~ ~-1 air
#ステージ2
execute if score ステージ決め StageSetting matches 1 as @e[tag=CentralControlSystem] at @s run setblock ~2 ~ ~-1 minecraft:redstone_block
execute if score ステージ決め StageSetting matches 1 as @e[tag=CentralControlSystem] at @s run setblock ~2 ~ ~ air

#すでにステージに人がいる場合に強制帰還させるやつ
execute as @a[scores={NumberOfPlayer=1..}] run tellraw @s {"text":"ステージが変えられたので、待機所にTPしました","color":"green"}

execute as @a[scores={NumberOfPlayer=1..}] run tp @s 5027 1 5011 90 0

execute as @a[scores={NumberOfPlayer=1..}] run scoreboard players set @s NumberOfPlayer 0

scoreboard players set プレイヤーの人数 NumberOfPlayer 0

scoreboard players set 青チーム NumberOfPlayer 0

scoreboard players set 赤チーム NumberOfPlayer 0

scoreboard players set 終了合意人数 NumberOfPlayer 0

scoreboard players set 終了合意判定 NumberOfPlayer 0



scoreboard players set ステージ決め StageSetting 1

scoreboard players set ステージ決め2 StageSetting 2

scoreboard players set ステージ決め2 StageSetting 3

scoreboard players set ステージ決め2 StageSetting 4

scoreboard players set ステージ決め2 StageSetting 5

execute if score ステージ決め StageSetting matches 5 run scoreboard players set ステージ決め2 StageSetting 0


summon villager ~ ~ ~ {VillagerData:{profession:"cleric",level:5,type:"plains"},ArmorItems:[{},{},{},{id:"diamond_ore",Count:1}],CustomName:"\"商人\"",CustomNameVisible:1,Invulnerable:1,Silent:1,NoAI:1,PersistenceRequired:1,Attributes:[{Name:generic.max_health,Base:100},{Name:generic.armor,Base:100}],Offers:{Recipes:[{buy:{id:"diamond",Count:1},sell:{id:"splash_potion",Count:1,tag:{CustomPotionColor:0,display:{Name:"\"致死の劇薬\"",Lore:["\"魔法使いが使う致死の魔法の効果を凝縮した劇薬。\""]},HideFlags:34,CustomPotionEffects:[{Id:7,Amplifier:19,Duration:20}]}}}]}}

海賊の天敵とも呼ばれた生物の能力を持った防具。
高い飛び道具耐性を持つ。 

execute at @e[tag=KousanoShop] run summon villager ~ ~ ~ {VillagerData:{profession:"cleric",level:5,type:"plains"},ArmorItems:[{},{},{},{id:"diamond_ore",Count:1}],CustomName:"\"商人\"",CustomNameVisible:1,Invulnerable:1,Silent:1,NoAI:1,PersistenceRequired:1,Attributes:[{Name:generic.max_health,Base:100},{Name:generic.armor,Base:100}],Offers:{Recipes:[{buy:{id:"diamond",Count:5},sell:{id:"splash_potion",Count:1,tag:{CustomPotionColor:0,display:{Name:"\"致死の劇薬\"",Lore:["\"魔法使いが使う致死の魔法の効果を凝縮した劇薬。\""]},HideFlags:34,CustomPotionEffects:[{Id:7,Amplifier:19,Duration:20}]}},maxUses:3},{buy:{id:"diamond",Count:3},sell:{id:"turtle_helmet",Count:1,tag:{display:{Name:"\"アダマンタスの甲羅\"",Lore:['[{"text":"海賊の天敵とも呼ばれた生物の能力を持った防具。"}]','[{"text":"高い飛び道具耐性を持つ。"}]']},Damage:150,Enchantments:[{id:projectile_protection,lvl:4}]}}},{buy:{id:"diamond",Count:2},sell:{id:"experience_bottle",Count:2,tag:{display:{Name:"\"魔力瓶\"",Lore:['[{"text":"使うとMPが300回復する"}]','[{"text":"※アシスター系統と魔法使い系統のみ"}]']}}}},{buy:{id:"diamond",Count:2},sell:{id:"enchanted_golden_apple",Count:1,tag:{display:{Name:"\"魔女の果実\"",Lore:['[{"text":"魔法使いの家系に代々伝わる特別な果実"}]']}}}},{buy:{id:"diamond",Count:1},sell:{id:"iron_chestplate",Count:1,tag:{display:{Name:"\"騎士団の鎧\"",Lore:['[{"text":"央都直属の騎士団が身につけている鎧"}]']}}}}]}}

summon villager ~ ~0.5 ~ {VillagerData:{profession:"cleric",level:5,type:"plains"},CustomName:"\"お医者さん\"",CustomNameVisible:1,Invulnerable:1,Silent:1,NoAI:1,PersistenceRequired:1,Rotation:[90.0f,0.0f],Attributes:[{Name:generic.max_health,Base:100},{Name:generic.armor,Base:100}],Offers:{Recipes:[{buy:{id:"emerald",Count:5},sell:{id:"cobblemon:max_potion",Count:1},maxUses:3},{buy:{id:"emerald",Count:8},sell:{id:"cobblemon:full_restore",Count:1}},{buy:{id:"emerald",Count:10},sell:{id:"cobblemon:max_revive",Count:1}},{buy:{id:"emerald",Count:2},sell:{id:"cobblemon:poke_ball",Count:1}},{buy:{id:"emerald",Count:2},sell:{id:"cobblemon:max_elixir",Count:1}}]}}

summon villager ~ ~0.5 ~ {VillagerData:{profession:"cleric",level:5,type:"plains"},CustomName:"\"種 力\"",CustomNameVisible:1,Invulnerable:1,Silent:1,NoAI:1,PersistenceRequired:1,Rotation:[90.0f,0.0f],Attributes:[{Name:generic.max_health,Base:100},{Name:generic.armor,Base:100}],Offers:{Recipes:[{buy:{id:"cobblemon:white_mint_seeds",Count:20},sell:{id:"cobblemon:hp_up",Count:1},maxUses:3},{buy:{id:"cobblemon:red_mint_seeds",Count:20},sell:{id:"cobblemon:protein",Count:1},maxUses:3},{buy:{id:"cobblemon:blue_mint_seeds",Count:20},sell:{id:"cobblemon:iron",Count:1}},{buy:{id:"cobblemon:cyan_mint_seeds",Count:20},sell:{id:"cobblemon:calcium",Count:1}},{buy:{id:"cobblemon:pink_mint_seeds",Count:20},sell:{id:"cobblemon:zinc",Count:1}},{buy:{id:"cobblemon:green_mint_seeds",Count:20},sell:{id:"cobblemon:carbos",Count:1}}]}}

summon villager ~ ~0.5 ~ {VillagerData:{profession:"cleric",level:5,type:"plains"},CustomName:"\"実 力\"",CustomNameVisible:1,Invulnerable:1,Silent:1,NoAI:1,PersistenceRequired:1,Rotation:[90.0f,0.0f],Attributes:[{Name:generic.max_health,Base:100},{Name:generic.armor,Base:100}],Offers:{Recipes:[{buy:{id:"cobblemon:white_mint_leaf",Count:4},buyB:{id:"cobblemon:pomeg_berry",Count:4},sell:{id:"cobblemon:hp_up",Count:1},maxUses:3},{buy:{id:"cobblemon:red_mint_leaf",Count:4},buyB:{id:"cobblemon:kelpsy_berry",Count:4},sell:{id:"cobblemon:protein",Count:1},maxUses:3},{buy:{id:"cobblemon:blue_mint_leaf",Count:4},buyB:{id:"cobblemon:qualot_berry",Count:4},sell:{id:"cobblemon:iron",Count:1}},{buy:{id:"cobblemon:cyan_mint_leaf",Count:4},buyB:{id:"cobblemon:hondew_berry",Count:4},sell:{id:"cobblemon:calcium",Count:1}},{buy:{id:"cobblemon:pink_mint_leaf",Count:4},buyB:{id:"cobblemon:grepa_berry",Count:4},sell:{id:"cobblemon:zinc",Count:1}},{buy:{id:"cobblemon:green_mint_leaf",Count:4},buyB:{id:"cobblemon:tamato_berry",Count:4},sell:{id:"cobblemon:carbos",Count:1}}]}}

summon villager ~ ~0.5 ~ {VillagerData:{profession:"cleric",level:5,type:"plains"},CustomName:"\"雲　メイ\"",CustomNameVisible:1,Invulnerable:1,Silent:1,NoAI:1,PersistenceRequired:1,Rotation:[90.0f,0.0f],Attributes:[{Name:generic.max_health,Base:100},{Name:generic.armor,Base:100}],Offers:{Recipes:[{buy:{id:"cobblemon:quick_powder",Count:1},sell:{id:"minecraft:endermite_spawn_egg",Count:1,tag:{display:{Name:"\"王冠ガチャ\"",Lore:['[{"text":"各ステータス専用王冠のピックアップ中！"}]','[{"text":"捨てて使用。召喚しないように注意！"}]']}}}},{buy:{id:"cobblemon:quick_powder",Count:1},sell:{id:"minecraft:blaze_spawn_egg",Count:1,tag:{display:{Name:"\"経験ガチャ\"",Lore:['[{"text":"各経験アメの排出量増加中！"}]','[{"text":"捨てて使用。召喚しないように注意！"}]']}}}},{buy:{id:"cobblemon:metal_powder",Count:1},sell:{id:"minecraft:endermite_spawn_egg",Count:5,tag:{display:{Name:"\"王冠ガチャ\"",Lore:['[{"text":"各ステータス専用王冠のピックアップ中！"}]','[{"text":"捨てて使用。召喚しないように注意！"}]']}}}}]}}





give @p minecraft:oak_sign{BlockEntityTag:{front_text:{has_glowing_text:0b,messages:['{"text":""}','{"selector":"@p"}']},is_waxed:1b}}

give @a oak_sign{BlockEntityTag:{front_text:{messages:['[""]','["",{"text":"1","color":"blue"},"vs",{"text":"4","color":"red"},"clickEvent":{"action":"run_command","value":"function main:mode/team_set3"}]','[""]','[""]']}}}



summon villager ~ ~ ~ {VillagerData:{profession:"cleric",level:5,type:"plains"},ArmorItems:[{},{},{},{id:"diamond_ore",Count:1}],CustomName:"\"商人\"",CustomNameVisible:1,Invulnerable:1,Silent:1,NoAI:1,PersistenceRequired:1,Attributes:[{Name:generic.max_health,Base:100},{Name:generic.armor,Base:1000}],Offers:{Recipes:[{buy:{id:"diamond",Count:2},sell:{id:"potion",Count:1,tag:{CustomPotionColor:16513201,display:{Name:"\"アイアンエリクサー\"",Lore:["\"身体が強くなる魔法の飲み物。\""]},HideFlags:34,CustomPotionEffects:[{Id:10,Amplifier:1,Duration:600},{Id:11,Amplifier:1,Duration:600},{Id:22,Amplifier:2,Duration:600}]}}},{buy:{id:"diamond",Count:3},sell:{id:"turtle_helmet",Count:1,tag:{display:{Name:"\"アダマンタスの甲羅\"",Lore:['[{"text":"海賊の天敵とも呼ばれた生物の能力を持った防具。"}]','[{"text":"高い飛び道具耐性を持つ。"}]']},Damage:200,Enchantments:[{id:projectile_protection,lvl:4}]}}},{buy:{id:"diamond",Count:1},sell:{id:"experience_bottle",Count:1,tag:{display:{Name:"\"魔力瓶\"",Lore:['[{"text":"使うとMPが300回復する"}]','[{"text":"※アシスター系統と魔法使い系統のみ"}]']}}}},{buy:{id:"diamond",Count:2},sell:{id:"tipped_arrow",Count:32,tag:{CustomPotionColor:9079434,display:{Name:"\"鈍化の矢\"",Lore:['[{"text":"ハンターが獲物を仕留めるために使う矢。"}]']},HideFlags:34,CustomPotionEffects:[{Id:2,Amplifier:1,Duration:200}]}}},{buy:{id:"diamond",Count:2},sell:{id:"leather_boots",Count:1,tag:{display:{Name:"\"部族の貫\"",Lore:['[{"text":"特別なまじないが込められた靴"}]']},Enchantments:[{id:feather_falling,lvl:3}]}}}]}}

#ゲーム終了 リピート

#時間経過
execute as @a[scores={FinishTime=1..}] run scoreboard players remove @s FinishTime 1

#画面表示
execute as @a[scores={FinishTime=1..}] run title @s actionbar [{"text":"観察時間 : あと "},{"score":{"name":"*","objective":"FinishTime"}},{"text":"  スニークで終了","color":"green"}]

#スニーク押したときの処理
execute as @a[scores={FinishTime=1..,sneak=1..}] run gamemode adventure @s
execute as @a[scores={FinishTime=1..,sneak=1..}] run tp @s 24 1 5013 90 0
execute as @a[scores={FinishTime=1..,sneak=1..}] run spawnpoint @s 24 1 5013 90
execute as @a[scores={FinishTime=1..,sneak=1..}] run scoreboard players reset @s FinishTime


#制限時間の時の処理
execute as @a[scores={FinishTime=0}] run gamemode adventure @s
execute as @a[scores={FinishTime=0}] run tp @s 24 1 5013 90 0
execute as @a[scores={FinishTime=0}] run spawnpoint @s 24 1 5013 90
execute as @a[scores={FinishTime=0}] run scoreboard players reset @s FinishTime

#皆観察終わった時の処理
#チーム剥奪
execute unless entity @a[scores={FinishTime=1..}] run team leave @a
#時間代入
execute unless entity @a[scores={FinishTime=1..}] run scoreboard players operation 時間 time = 時間設定 TimeValueSet
execute unless entity @a[scores={FinishTime=1..}] run function main:time/time
#チケット代入
execute unless entity @a[scores={FinishTime=1..}] run scoreboard players operation 青チーム ticket = チケット数 TicketValueSet
execute unless entity @a[scores={FinishTime=1..}] run scoreboard players operation 赤チーム ticket = チケット数 TicketValueSet

#レッドストーンブロック消す
execute unless entity @a[scores={FinishTime=1..}] run execute as @e[tag=CentralControlSystem] at @s run setblock ~2 ~ ~1 air









give @p written_book{display:{Name:'{"text":"逃亡者　パーク"}'},title:"",author:"",pages:[                                                                                                                                    '[{"text":"クリックでパークを選択"},                                                {"text":"\\n\\nアイテム","hoverEvent":{"action":"show_text","value":[{"text":"手に入れるアイテムを選ぶ"}]},"clickEvent":{"action":"change_page","value":"2"}},                                                                 {"text":"\\n\\n\\nステータス","hoverEvent":{"action":"show_text","value":[{"text":"能力値を選択する"}]},"clickEvent":{"action":"change_page","value":"3"}},                                                                   {"text":"\\n\\n\\nスキル","hoverEvent":{"action":"show_text","value":[{"text":"発動スキルを選択する"}]},"clickEvent":{"action":"change_page","value":"4"}}]',                                                                                                                         '[{"text":"アイテム"},{"text":"\\n弓兵","color":"aqua","underlined":true,"hoverEvent":{"action":"show_text","value":[{"text":"クリックで弓兵を選択"}]},"clickEvent":{"action":"run_command","value":"/function main:pvp/escaper/item/bow"}},{"text":"\\n遠近高火力","color":"aqua"},{"text":"\\n\\nベイカー","color":"dark_aqua","underlined":true,"hoverEvent":{"action":"show_text","value":[{"text":"クリックでベイカーを選ぶ"}]},"clickEvent":{"action":"run_command","value":"/function main:pvp/escaper/item/baker"}},{"text":"\\n中火力中耐久","color":"dark_aqua"},{"text":"\\n\\n殺人鬼","color":"black","underlined":true,"hoverEvent":{"action":"show_text","value":[{"text":"クリックで殺人鬼を選ぶ"}]},"clickEvent":{"action":"run_command","value":"/function main:pvp/killer/item/isaac"}},{"text":"\\n低火力高耐久"}]',                                                                                                                                                                                 '[{"text":"ステータス"},{"text":"\\n重","color":"black","underlined":true,"hoverEvent":{"action":"show_text","value":[{"text":"クリックで重を選択"}]},"clickEvent":{"action":"run_command","value":"/scoreboard players set @s SelectStatus 1"}},{"text":"\\n低機動、スキルの強化","color":"black"},{"text":"\\n\\n中","color":"dark_blue","underlined":true,"hoverEvent":{"action":"show_text","value":[{"text":"クリックで中を選択"}]},"clickEvent":{"action":"run_command","value":"/scoreboard players set @s SelectStatus 2"}},{"text":"\\n補正無し","color":"dark_blue"},{"text":"\\n\\n軽","color":"blue","underlined":true,"hoverEvent":{"action":"show_text","value":[{"text":"クリックで軽を選択"}]},"clickEvent":{"action":"run_command","value":"/scoreboard players set @s SelectStatus 3"}},{"text":"\\n高機動、低耐久","color":"blue"}]',                                                                                                                                  '[{"text":"スキル"},{"text":"\\n雷の魔法","color":"yellow","underlined":true,"hoverEvent":{"action":"show_text","value":[{"text":"クリックで雷の魔法を選択"}]},"clickEvent":{"action":"run_command","value":"/scoreboard players set @s SelectJum 1"}},{"text":"\\n周囲の敵を発光させ、その中の一体に雷を落とす。","color":"yellow"},{"text":"\\n\\nゴースト","color":"gray","underlined":true,"hoverEvent":{"action":"show_text","value":[{"text":"クリックでゴーストを選択"}]},"clickEvent":{"action":"run_command","value":"/scoreboard players set @s SelectJum 2"}},{"text":"\\n一定時間透明になる。","color":"gray"},{"text":"\\n\\n激動慷慨","color":"red","underlined":true,"hoverEvent":{"action":"show_text","value":[{"text":"クリックでゴーストを選択"}]},"clickEvent":{"action":"run_command","value":"/scoreboard players set @s SelectJum 3"}},{"text":"\\n自身にダメージを与える代わりに一定時間移動速度と攻撃力を上昇させる。その後移動速度が低下する。","color":"red"}]'                                                                  ]} 1


#wizard hino mahou nokori


execute at @a[tag=WizardFire1] run summon fireball ^1 ^1 ^2.5 {ExplosionPower:1b}
execute at @a[tag=WizardFire1] run summon fireball ^-1 ^1 ^2.5 {ExplosionPower:1b}


execute at @a[tag=WizardFire1] run summon fireball ^3 ^1 ^2.5 {ExplosionPower:1b}
execute at @a[tag=WizardFire1] run summon armor_stand ^3 ^1 ^2.5 {Tags:["homing"],Marker:true,NoGravity:true}

execute at @a[tag=WizardFire1] run summon fireball ^-3 ^1 ^2.5 {ExplosionPower:1b}
execute at @a[tag=WizardFire1] run summon armor_stand ^-3 ^1 ^2.5 {Tags:["homing"],Marker:true,NoGravity:true}




title @a title ["",{"selector":"@p"},{"text":"がヘロブラインを選択した"}]

旧魔法使い
#魔法使い

execute at @e[tag=jobsentakuKun] run data merge block ~-2 ~1 ~ {front_text:{has_glowing_text:1b,messages:['{"text":""}','{"text":"BAN"}','{"text":""}','{"text":""}']},is_waxed:1b}

execute if entity @a[tag=FirstBAN] run return run function main:job_selection/tag_reset2

#タグ消し
function main:job_selection/tag_reset2

#暴発防止
scoreboard players set @p sneak 0

#タグ付け
tag @p add Wizard
tag @p add Wich

#持ち物
clear @p
give @p minecraft:nether_star{display:{Name:'{"text":"魔法の素"}',Lore:['{"text":"MPを回復させる"}']}}

give @p written_book{pages:  [   '["", {"text":"クリックで呪文を選択\\n"},        {"text":"スニークで詠唱開始\\n\\n"},        {"text":"MP:マジックポイント\\nCT:詠唱時間\\nCD:クールダウン\\n\\n\\n"},        {"text":"火の魔法\\n","color":"red",          "clickEvent":{"action":"change_page","value":"2"},          "hoverEvent":{"action":"show_text","contents":"火球を敵に飛ばす"}        },        {"text":"炎の魔法\\n","color":"dark_red",          "clickEvent":{"action":"change_page","value":"3"},          "hoverEvent":{"action":"show_text","contents":"敵の周囲を燃やす"}        },        {"text":"氷の魔法\\n","color":"aqua",          "clickEvent":{"action":"change_page","value":"4"},          "hoverEvent":{"action":"show_text","contents":"敵を凍らせる"}       },        {"text":"爆発の魔法\\n","color":"gold",          "clickEvent":{"action":"change_page","value":"5"},          "hoverEvent":{"action":"show_text","contents":"爆発"}        },        {"text":"雷の魔法\\n","color":"yellow",          "clickEvent":{"action":"change_page","value":"6"},          "hoverEvent":{"action":"show_text","contents":"敵に雷を降らす"}        },        {"text":"パルプンテ\\n","color":"black",          "clickEvent":{"action":"change_page","value":"7"},          "hoverEvent":{"action":"show_text","contents":"何がおこるかはお楽しみ"}         }]',    '["",        {"text":"aaaaaaaaaaaaaaaaaaa\\n\\n","obfuscated":true,"color":"red"},        {"text":"火の魔法Ⅰ mp:10 ct:30 cd:30","underlined":true,"color":"red",          "clickEvent":{"action":"run_command","value":"/scoreboard players set @s SelectJum 1"},          "hoverEvent":{"action":"show_text","contents":"クリックで火の魔法Ⅰを選択"}        },        {"text":"\\n小火球を召喚する","color":"red"},        {"text":"\\n\\n"},        {"text":"火の魔法Ⅱ mp:100 ct:50 cd:100","underlined":true,"color":"red",          "clickEvent":{"action":"run_command","value":"/scoreboard players set @s SelectJum 11"},          "hoverEvent":{"action":"show_text","contents":"クリックで火の魔法Ⅱを選択"}        },        {"text":"\\n中火球を召喚する","color":"red"},        {"text":"\\n\\n"},        {"text":"火の魔法Ⅲ mp:300 ct:200 cd:300","underlined":true,"color":"red",          "clickEvent":{"action":"run_command","value":"/scoreboard players set @s SelectJum 21"},          "hoverEvent":{"action":"show_text","contents":"クリックで火の魔法Ⅲを選択"}        },        {"text":"\\n大火球を召喚する","color":"red"}    ]',    '["",        {"text":"aaaaaaaaaaaaaaaaaaa\\n\\n","obfuscated":true,"color":"dark_red"},        {"text":"炎の魔法Ⅰ mp:30 ct:20 cd:30","underlined":true,"color":"dark_red",          "clickEvent":{"action":"run_command","value":"/scoreboard players set @s SelectJum 2"},          "hoverEvent":{"action":"show_text","contents":"クリックで炎の魔法Ⅰを選択"}        },        {"text":"\\n敵一人の周囲を燃やす","color":"dark_red"},        {"text":"\\n\\n"},        {"text":"炎の魔法Ⅱ mp:100 ct:200 cd:300","underlined":true,"color":"dark_red",          "clickEvent":{"action":"run_command","value":"/scoreboard players set @s SelectJum 12"},          "hoverEvent":{"action":"show_text","contents":"クリックで炎の魔法Ⅱを選択"}        },        {"text":"\\n敵複数人の周囲を燃やす","color":"dark_red"},        {"text":"\\n\\n"},        {"text":"炎の魔法Ⅲ mp:300 ct:300 cd:500","underlined":true,"color":"dark_red",          "clickEvent":{"action":"run_command","value":"/scoreboard players set @s SelectJum 22"},          "hoverEvent":{"action":"show_text","contents":"クリックで炎の魔法Ⅲを選択"}        },        {"text":"\\n敵全員の周囲を燃やす","color":"dark_red"}    ]',    '["",        {"text":"aaaaaaaaaaaaaaaaaaa\\n\\n","obfuscated":true,"color":"aqua"},        {"text":"氷の魔法Ⅰ mp:30 ct:20 cd:30","underlined":true,"color":"aqua",          "clickEvent":{"action":"run_command","value":"/scoreboard players set @s SelectJum 3"},          "hoverEvent":{"action":"show_text","contents":"クリックで氷の魔法Ⅰを選択"}        },        {"text":"\\n敵一人を凍らせる","color":"aqua"},        {"text":"\\n\\n"},        {"text":"氷の魔法Ⅱ mp:100 ct:50 cd:100","underlined":true,"color":"aqua",          "clickEvent":{"action":"run_command","value":"/scoreboard players set @s SelectJum 13"},          "hoverEvent":{"action":"show_text","contents":"クリックで氷の魔法Ⅱを選択"}        },        {"text":"\\n敵一人の周囲を凍らせる","color":"aqua"},        {"text":"\\n\\n"},        {"text":"氷の魔法Ⅲ mp:300 ct:100 cd:300","underlined":true,"color":"aqua",          "clickEvent":{"action":"run_command","value":"/scoreboard players set @s SelectJum 23"},          "hoverEvent":{"action":"show_text","contents":"クリックで氷の魔法Ⅲを選択"}        },        {"text":"\\n敵全員を凍らせる","color":"aqua"}    ]',    '["",        {"text":"aaaaaaaaaaaaaaaaaaa\\n\\n","obfuscated":true,"color":"gold"},        {"text":"爆発の魔法Ⅰ mp:30 ct:10 cd:200","underlined":true,"color":"gold",          "clickEvent":{"action":"run_command","value":"/scoreboard players set @s SelectJum 4"},          "hoverEvent":{"action":"show_text","contents":"クリックで爆発の魔法Ⅰを選択"}        },        {"text":"\\n小規模な爆発","color":"gold"},        {"text":"\\n\\n"},        {"text":"爆発の魔法Ⅱ mp:100 ct:100 cd:100","underlined":true,"color":"gold",          "clickEvent":{"action":"run_command","value":"/scoreboard players set @s SelectJum 14"},          "hoverEvent":{"action":"show_text","contents":"クリックで爆発の魔法Ⅱを選択"}        },        {"text":"\\n中規模な爆発","color":"gold"},        {"text":"\\n\\n"},        {"text":"爆発の魔法Ⅲ mp:300 ct:200 cd:500","underlined":true,"color":"gold",          "clickEvent":{"action":"run_command","value":"/scoreboard players set @s SelectJum 24"},          "hoverEvent":{"action":"show_text","contents":"クリックで爆発の魔法Ⅲを選択"}        },        {"text":"\\n大規模な爆発","color":"gold"}    ]',    '["",        {"text":"aaaaaaaaaaaaaaaaaaa\\n\\n","obfuscated":true,"color":"yellow"},        {"text":"雷の魔法Ⅰ mp:30 ct:80 cd:30","underlined":true,"color":"yellow",          "clickEvent":{"action":"run_command","value":"/scoreboard players set @s SelectJum 5"},          "hoverEvent":{"action":"show_text","contents":"クリックで雷の魔法Ⅰを選択"}        },        {"text":"\\nランダムな敵一人に雷","color":"yellow"},        {"text":"\\n\\n"},        {"text":"雷の魔法Ⅱ mp:100 ct:150 cd:100","underlined":true,"color":"yellow",          "clickEvent":{"action":"run_command","value":"/scoreboard players set @s SelectJum 15"},          "hoverEvent":{"action":"show_text","contents":"クリックで雷の魔法Ⅱを選択"}        },        {"text":"\\nランダムな敵、複数人に雷","color":"yellow"},        {"text":"\\n\\n"},        {"text":"雷の魔法Ⅲ mp:300 ct:400 cd:300","underlined":true,"color":"yellow",          "clickEvent":{"action":"run_command","value":"/scoreboard players set @s SelectJum 25"},          "hoverEvent":{"action":"show_text","contents":"クリックで雷の魔法Ⅲを選択"}        },        {"text":"\\n敵全員に雷","color":"yellow"}    ]',    '["",        {"text":"aaaaaaaaaaaaaaaaaaa\\naaaaaaaaaaaaaaaaaaa\\naaaaaaaaaaaaaaaaaaa\\naaaaaaaaaaaaaaaaaaa\\n\\n","obfuscated":true,"color":"black"},        {"text":"パルプンテ mp:100 ct:100 cd:300","underlined":true,"color":"black",          "clickEvent":{"action":"run_command","value":"/scoreboard players set @s SelectJum 6"},          "hoverEvent":{"action":"show_text","contents":"クリックでパルプンテを選択"}        },        {"text":"\\n何がおこるかはお楽しみ","color":"black"},        {"text":"\\n"},        {"text":"\\naaaaaaaaaaaaaaaaaaa\\naaaaaaaaaaaaaaaaaaa\\naaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\\naaaaaaaaaaaaaaaaaaa\\n","obfuscated":true,"color":"black"},	{"text":"致死の魔法 mp:400 ct:800 cd:200","underlined":true,"color":"black",          "clickEvent":{"action":"run_command","value":"/scoreboard players set @s SelectJum 26"},          "hoverEvent":{"action":"show_text","contents":"クリックで致死の魔法を選択"}        }    ]'  ],  title:"魔法使いの書",  author:"クリックで呪文を選択"}


give @p minecraft:golden_apple{display:{Name:"\"魔女の帽子\"",Lore:["\"つけると力が湧いてくる魔力を帯びている\""]},CustomModelData:2,Unbreakable:1,HideFlags:6,AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:4,Operation:0,UUID:[I;1528857136,676744056,-1387108332,1603167960],Slot:"head"}]}
item replace entity @p armor.head from entity @p container.2
clear @p minecraft:golden_apple 1

give @p written_book{pages:  [    '["",                         {"text":"火の魔法Ⅰ\\n","color":"red",          "clickEvent":{"action":"run_command","value":"/scoreboard players set @s SelectJum 1"},          "hoverEvent":{"action":"show_text","contents":"小火球を召喚する"}        },      {"text":"火の魔法Ⅱ\\n","color":"red",          "clickEvent":{"action":"run_command","value":"/scoreboard players set @s SelectJum 11"},          "hoverEvent":{"action":"show_text","contents":"中火球を召喚する"}        },         {"text":"火の魔法Ⅲ\\n","color":"red",          "clickEvent":{"action":"run_command","value":"/scoreboard players set @s SelectJum 21"},          "hoverEvent":{"action":"show_text","contents":"大火球を召喚する"}        },        {"text":"炎の魔法Ⅰ\\n","color":"dark_red",          "clickEvent":{"action":"run_command","value":"/scoreboard players set @s SelectJum 2"},          "hoverEvent":{"action":"show_text","contents":"敵一人の周囲を燃やす"}        },     {"text":"炎の魔法Ⅱ\\n","color":"dark_red",          "clickEvent":{"action":"run_command","value":"/scoreboard players set @s SelectJum 12"},          "hoverEvent":{"action":"show_text","contents":"敵全員の周囲を燃やす"}        },     {"text":"炎の魔法Ⅲ\\n","color":"dark_red",          "clickEvent":{"action":"run_command","value":"/scoreboard players set @s SelectJum 22"},          "hoverEvent":{"action":"show_text","contents":"敵全員の周囲を燃やす(効果付き)"}        },        {"text":"氷の魔法Ⅰ\\n","color":"aqua",          "clickEvent":{"action":"run_command","value":"/scoreboard players set @s SelectJum 3"},          "hoverEvent":{"action":"show_text","contents":"敵一人を凍らせる"}        },          {"text":"氷の魔法Ⅱ\\n","color":"aqua",          "clickEvent":{"action":"run_command","value":"/scoreboard players set @s SelectJum 13"},          "hoverEvent":{"action":"show_text","contents":"敵全員を凍らせる"}        },     {"text":"氷の魔法Ⅲ\\n","color":"aqua",          "clickEvent":{"action":"run_command","value":"/scoreboard players set @s SelectJum 23"},          "hoverEvent":{"action":"show_text","contents":"敵全員を固める"}        },        {"text":"爆発の魔法Ⅰ\\n","color":"gold",          "clickEvent":{"action":"run_command","value":"/scoreboard players set @s SelectJum 4"},          "hoverEvent":{"action":"show_text","contents":"小規模な爆発"}        },  {"text":"爆発の魔法Ⅱ\\n","color":"gold",          "clickEvent":{"action":"run_command","value":"/scoreboard players set @s SelectJum 14"},          "hoverEvent":{"action":"show_text","contents":"中規模な爆発"}        },  {"text":"爆発の魔法Ⅲ\\n","color":"gold",          "clickEvent":{"action":"run_command","value":"/scoreboard players set @s SelectJum 24"},          "hoverEvent":{"action":"show_text","contents":"大規模な爆発"}        },  {"text":"雷の魔法Ⅰ\\n","color":"yellow",          "clickEvent":{"action":"run_command","value":"/scoreboard players set @s SelectJum 5"},          "hoverEvent":{"action":"show_text","contents":"敵に雷を降らす"}        },    {"text":"雷の魔法Ⅱ\\n","color":"yellow",          "clickEvent":{"action":"run_command","value":"/scoreboard players set @s SelectJum 15"},          "hoverEvent":{"action":"show_text","contents":"敵に全体を降らす"}        },     {"text":"雷の魔法Ⅲ\\n","color":"yellow",          "clickEvent":{"action":"run_command","value":"/scoreboard players set @s SelectJum 25"},          "hoverEvent":{"action":"show_text","contents":"敵に全体を降らす(効果付き)"}        }  ]' ],  title:"スキルの書",  author:"クリックでスキルを選択"}

give @p minecraft:enchanted_golden_apple{display:{Name:'{"text":"魔女の果実"}',}} 100
scoreboard players set @p WizardMP 100
scoreboard players set @p WizardCooldown 0

#ピック宣言
title @a[tag=Standbypick] title ["",{"selector":"@p"},{"text":"：魔法使い"}]

#選択制限
execute at @e[tag=jobsentakuKun] run data merge block ~-2 ~1 ~ {front_text:{has_glowing_text:1b,messages:['{"text":""}','{"selector":"@p"}','{"text":""}','{"text":""}']},is_waxed:1b}