#スキル回収実行

#タグ付け
execute as @a[tag=Ashe,scores={sneak=200..}] run tag @s add AsheSkill



execute at @a[tag=AsheSkill] run playsound minecraft:entity.arrow.shoot master @s ~ ~ ~ 0.5 2 1



#矢回収実行

execute as @e[tag=AsheSkill] at @s run give @p written_book[minecraft:written_book_content={title:"スキルの書",author:"クリックでスキルを選択",pages:[["",{"text":"レンジャーフォーカス","color":"aqua","click_event":{"action":"run_command","command":"/function main:pvp/ashe/ashe_q"},"hover_event":{"action":"show_text","value":[{"text":"速射"}]}},{"text":"\nボレー","color":"aqua","click_event":{"action":"run_command","command":"/function main:pvp/ashe/ashe_w"},"hover_event":{"action":"show_text","value":[{"text":"拡散"}]}},{"text":"\nスカウトホーク","color":"aqua","click_event":{"action":"run_command","command":"/function main:pvp/ashe/ashe_e"},"hover_event":{"action":"show_text","value":[{"text":"発見"}]}},{"text":"\nクリスタルアロー","color":"aqua","click_event":{"action":"run_command","command":"/function main:pvp/ashe/ashe_r"},"hover_event":{"action":"show_text","value":[{"text":"拘束"}]}}]]}]

#仕上げ
scoreboard players set @a[tag=AsheSkill] sneak 0
tag @a[tag=AsheSkill] remove AsheSkill