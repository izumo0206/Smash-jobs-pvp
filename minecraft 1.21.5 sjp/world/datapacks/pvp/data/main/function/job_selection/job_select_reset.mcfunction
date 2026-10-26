playsound minecraft:block.anvil.destroy master @s ~ ~ ~ 1 1 1

#タグリセット
function main:job_selection/tag_reset

#ステータスリセット
execute as @a at @s run function main:job_selection/set/state_reset

clear @a

#前衛
#へロブライン
execute at @e[tag=jobsentakuKun] run data merge block ~ ~1 ~ {front_text:{messages:["",{"text":"【覚醒者】を選ぶ！","color":"white","click_event":{"action":"run_command","command":"/function main:job_selection/herobrine"}},"",""]}}

#暗黒騎士
execute at @e[tag=jobsentakuKun] run data merge block ~-1 ~1 ~ {front_text:{messages:["",{"text":"【暗黒騎士】を選ぶ！","color":"white","click_event":{"action":"run_command","command":"/function main:job_selection/wizardsword"}},"",""]}}

#白魔法剣士
execute at @e[tag=jobsentakuKun] run data merge block ~-2 ~1 ~ {front_text:{messages:["",{"text":"【白魔法剣士】を","color":"white","click_event":{"action":"run_command","command":"/function main:job_selection/assistwarrior"}},{"text":"選ぶ！","color":"white"},""]}}

#黒の剣士
execute at @e[tag=jobsentakuKun] run data merge block ~-3 ~1 ~ {front_text:{messages:["",{"text":"【黒の剣士】を選ぶ！","color":"white","click_event":{"action":"run_command","command":"/function main:job_selection/kirito"}},"",""]}}

#雷神
execute at @e[tag=jobsentakuKun] run data merge block ~-4 ~1 ~ {front_text:{messages:["",{"text":"【雷神】を選ぶ！","color":"white","click_event":{"action":"run_command","command":"/function main:job_selection/thor"}},"",""]}}

#ゾンビ狼
execute at @e[tag=jobsentakuKun] run data merge block ~-5 ~1 ~ {front_text:{messages:["",{"text":"【ゾンビ狼】を選ぶ！","color":"white","click_event":{"action":"run_command","command":"/function main:job_selection/zwolf"}},"",""]}}

#武闘家
execute at @e[tag=jobsentakuKun] run data merge block ~-6 ~1 ~ {front_text:{messages:["",{"text":"【武闘家】を選ぶ！","color":"white","click_event":{"action":"run_command","command":"/function main:job_selection/fighter"}},"",""]}}



#重装
#騎士 
execute at @e[tag=jobsentakuKun] run data merge block ~-7 ~1 ~ {front_text:{messages:["",{"text":"【騎士】を選ぶ！","color":"white","click_event":{"action":"run_command","command":"/function main:job_selection/sword"}},"",""]}}

#殺人鬼
execute at @e[tag=jobsentakuKun] run data merge block ~-8 ~1 ~ {front_text:{messages:["",{"text":"【殺人鬼】を選ぶ！","color":"white","click_event":{"action":"run_command","command":"/function main:job_selection/isaac"}},"",""]}}

#マッドケミスト
execute at @e[tag=jobsentakuKun] run data merge block ~-9 ~1 ~ {front_text:{messages:["",{"text":"【マッドケミスト】を選ぶ！","color":"white","click_event":{"action":"run_command","command":"/function main:job_selection/singed"}},{"text":"選ぶ！","color":"white"},""]}}

#ピースキーパー
execute at @e[tag=jobsentakuKun] run data merge block ~-10 ~1 ~ {front_text:{messages:["",{"text":"【ピースキーパー】を","color":"white","click_event":{"action":"run_command","command":"/function main:job_selection/peacekeeper"}},{"text":"選ぶ！","color":"white"},""]}}



#遊撃
#海賊
execute at @e[tag=jobsentakuKun] run data merge block ~-12 ~1 ~ {front_text:{messages:["",{"text":"【海賊】を選ぶ！","color":"white","click_event":{"action":"run_command","command":"/function main:job_selection/pirate"}},"",""]}}

#異端者
execute at @e[tag=jobsentakuKun] run data merge block ~-13 ~1 ~ {front_text:{messages:["",{"text":"【異端者】を選ぶ！","color":"white","click_event":{"action":"run_command","command":"/function main:job_selection/assistpirate"}},"",""]}}

#ポセイドン
execute at @e[tag=jobsentakuKun] run data merge block ~-14 ~1 ~ {front_text:{messages:["",{"text":"【ポセイドン】を","color":"white","click_event":{"action":"run_command","command":"/function main:job_selection/wizardpirate"}},{"text":"選ぶ！","color":"white"},""]}}

#ガーディアン
execute at @e[tag=jobsentakuKun] run data merge block ~-15 ~1 ~ {front_text:{messages:["",{"text":"【ガーディアン】を","color":"white","click_event":{"action":"run_command","command":"/function main:job_selection/guardian"}},{"text":"選ぶ！","color":"white"},""]}}

#万能手
execute at @e[tag=jobsentakuKun] run data merge block ~-16 ~1 ~ {front_text:{messages:["",{"text":"【万能手】を選ぶ！","color":"white","click_event":{"action":"run_command","command":"/function main:job_selection/allrounder"}},"",""]}}



#狙撃
#弓兵
execute at @e[tag=jobsentakuKun] run data merge block ~-18 ~1 ~ {front_text:{messages:["",{"text":"【弓兵】を選ぶ！","color":"white","click_event":{"action":"run_command","command":"/function main:job_selection/bow"}},"",""]}}

#死神
execute at @e[tag=jobsentakuKun] run data merge block ~-19 ~1 ~ {front_text:{messages:["",{"text":"【死神】を選ぶ！","color":"white","click_event":{"action":"run_command","command":"/function main:job_selection/ruciano"}},"",""]}}

#ハンター
execute at @e[tag=jobsentakuKun] run data merge block ~-20 ~1 ~ {front_text:{messages:["",{"text":"【ハンター】を選ぶ！","color":"white","click_event":{"action":"run_command","command":"/function main:job_selection/hunter"}},"",""]}}

#隠密弓兵
execute at @e[tag=jobsentakuKun] run data merge block ~-21 ~1 ~ {front_text:{messages:["",{"text":"【隠密弓兵】を選ぶ！","color":"white","click_event":{"action":"run_command","command":"/function main:job_selection/bowscouter"}},"",""]}}



#砲手
#爆弾魔
execute at @e[tag=jobsentakuKun] run data merge block ~ ~3 ~ {front_text:{messages:["",{"text":"【爆弾魔】を選ぶ！","color":"white","click_event":{"action":"run_command","command":"/function main:job_selection/bomber"}},"",""]}}
#魔女
execute at @e[tag=jobsentakuKun] run data merge block ~-1 ~3 ~ {front_text:{messages:["",{"text":"【魔女】を選ぶ！","color":"white","click_event":{"action":"run_command","command":"/function main:job_selection/wich"}},"",""]}}
#ゲリラ兵
execute at @e[tag=jobsentakuKun] run data merge block ~-2 ~3 ~ {front_text:{messages:["",{"text":"【ゲリラ兵】を選ぶ！","color":"white","click_event":{"action":"run_command","command":"/function main:job_selection/guerrilla"}},"",""]}}


#医療
#アシスター
execute at @e[tag=jobsentakuKun] run data merge block ~-3 ~3 ~ {front_text:{messages:["",{"text":"【アシスター】を","color":"white","click_event":{"action":"run_command","command":"/function main:job_selection/assist"}},{"text":"選ぶ！","color":"white"},""]}}

#エルフ
execute at @e[tag=jobsentakuKun] run data merge block ~-4 ~3 ~ {front_text:{messages:["",{"text":"【エルフ】を選ぶ！","color":"white","click_event":{"action":"run_command","command":"/function main:job_selection/elf"}},"",""]}}

#羊飼い
execute at @e[tag=jobsentakuKun] run data merge block ~-5 ~3 ~ {front_text:{messages:["",{"text":"【羊飼い】を選ぶ！","color":"white","click_event":{"action":"run_command","command":"/function main:job_selection/shepherd"}},"",""]}}

#衛生兵
execute at @e[tag=jobsentakuKun] run data merge block ~-6 ~3 ~ {front_text:{messages:["",{"text":"【衛生兵】を選ぶ！","color":"white","click_event":{"action":"run_command","command":"/function main:job_selection/healsniper"}},"",""]}}



#補助
#偵察兵
execute at @e[tag=jobsentakuKun] run data merge block ~-7 ~3 ~ {front_text:{messages:["",{"text":"【偵察兵】を選ぶ！","color":"white","click_event":{"action":"run_command","command":"/function main:job_selection/scouter"}},"",""]}}

#氷の射手
execute at @e[tag=jobsentakuKun] run data merge block ~-8 ~3 ~ {front_text:{messages:["",{"text":"【氷の射手】を選ぶ！","color":"white","click_event":{"action":"run_command","command":"/function main:job_selection/ashe"}},"",""]}}

#トラッパー
execute at @e[tag=jobsentakuKun] run data merge block ~-9 ~3 ~ {front_text:{messages:["",{"text":"【トラッパー】を","color":"white","click_event":{"action":"run_command","command":"/function main:job_selection/trapper"}},{"text":"選ぶ！","color":"white"},""]}}

#祭司
execute at @e[tag=jobsentakuKun] run data merge block ~-10 ~3 ~ {front_text:{messages:["",{"text":"【祭司】を選ぶ！","color":"white","click_event":{"action":"run_command","command":"/function main:job_selection/wraith"}},"",""]}}



#特殊
#ビーストテイマー
execute at @e[tag=jobsentakuKun] run data merge block ~-12 ~3 ~ {front_text:{messages:["",{"text":"【ビーストテイマー】を","color":"white","click_event":{"action":"run_command","command":"/function main:job_selection/beasttamer"}},{"text":"選ぶ！","color":"white"},""]}}

#プロトタイプ
execute at @e[tag=jobsentakuKun] run data merge block ~-13 ~3 ~ {front_text:{messages:["",{"text":"【プロトタイプ】を","color":"white","click_event":{"action":"run_command","command":"/function main:job_selection/prototype"}},{"text":"選ぶ！","color":"white"},""]}}

#バードマン
execute at @e[tag=jobsentakuKun] run data merge block ~-14 ~3 ~ {front_text:{messages:["",{"text":"【バードマン】を","color":"white","click_event":{"action":"run_command","command":"/function main:job_selection/birdman"}},{"text":"選ぶ！","color":"white"},""]}}

#画家
execute at @e[tag=jobsentakuKun] run data merge block ~-15 ~3 ~ {front_text:{messages:["",{"text":"【画家】を選ぶ！","color":"white","click_event":{"action":"run_command","command":"/function main:job_selection/dusk"}},"",""]}}

#魔王
execute at @e[tag=jobsentakuKun] run data merge block ~-16 ~3 ~ {front_text:{messages:["",{"text":"【魔王】を選ぶ！","color":"white","click_event":{"action":"run_command","command":"/function main:job_selection/magicking"}},"",""]}}