# 現在の職業一覧に表示されている未実装職だけ、クリックできない表示へ戻す。
execute at @e[tag=jobsentakuKun] run data merge block ~-6 ~1 ~ {front_text:{messages:["",{"text":"武闘家：未実装","color":"dark_gray"},"",""]},is_waxed:1b}
