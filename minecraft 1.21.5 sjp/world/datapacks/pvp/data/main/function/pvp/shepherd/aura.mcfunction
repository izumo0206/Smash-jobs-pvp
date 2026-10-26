# ==========================================
#  常時更新グループ (速度、耐性、ジャンプなど即時反映したいもの)
#  Duration: 2秒 (20tickごとの更新でも切れない長さ)
# ==========================================

# 赤 (攻撃力)
execute if entity @s[tag=shep_red,team=Red] run effect give @e[team=Red,distance=..5] strength 2 1 true
execute if entity @s[tag=shep_red,team=Blue] run effect give @e[team=Blue,distance=..5] strength 2 1 true

# 橙 (火炎耐性・耐性) ※再生は下へ移動
execute if entity @s[tag=shep_gold,team=Red] run effect give @e[team=Red,distance=..5] fire_resistance 2 0 true
execute if entity @s[tag=shep_gold,team=Red] run effect give @e[team=Red,distance=..5] resistance 2 0 true
execute if entity @s[tag=shep_gold,team=Blue] run effect give @e[team=Blue,distance=..5] fire_resistance 2 0 true
execute if entity @s[tag=shep_gold,team=Blue] run effect give @e[team=Blue,distance=..5] resistance 2 0 true

# 黄緑 (跳躍・速度)
execute if entity @s[tag=shep_lime,team=Red] run effect give @e[team=Red,distance=..5] jump_boost 2 1 true
execute if entity @s[tag=shep_lime,team=Red] run effect give @e[team=Red,distance=..5] speed 2 0 true
execute if entity @s[tag=shep_lime,team=Blue] run effect give @e[team=Blue,distance=..5] jump_boost 2 1 true
execute if entity @s[tag=shep_lime,team=Blue] run effect give @e[team=Blue,distance=..5] speed 2 0 true

# 青緑 (速度・耐性・攻撃)
execute if entity @s[tag=shep_cyan,team=Red] run effect give @e[team=Red,distance=..5] speed 2 0 true
execute if entity @s[tag=shep_cyan,team=Red] run effect give @e[team=Red,distance=..5] resistance 2 0 true
execute if entity @s[tag=shep_cyan,team=Red] run effect give @e[team=Red,distance=..5] strength 2 0 true
execute if entity @s[tag=shep_cyan,team=Blue] run effect give @e[team=Blue,distance=..5] speed 2 0 true
execute if entity @s[tag=shep_cyan,team=Blue] run effect give @e[team=Blue,distance=..5] resistance 2 0 true
execute if entity @s[tag=shep_cyan,team=Blue] run effect give @e[team=Blue,distance=..5] strength 2 0 true

# 空色 (速度II)
execute if entity @s[tag=shep_aqua,team=Red] run effect give @e[team=Red,distance=..6] speed 2 1 true
execute if entity @s[tag=shep_aqua,team=Blue] run effect give @e[team=Blue,distance=..6] speed 2 1 true

# 紫 (耐性II)
execute if entity @s[tag=shep_purple,team=Red] run effect give @e[team=Red,distance=..5] resistance 2 1 true
execute if entity @s[tag=shep_purple,team=Blue] run effect give @e[team=Blue,distance=..5] resistance 2 1 true

# 白 (透明化)
execute if entity @s[tag=shep_white,team=Red] run effect give @e[team=Red,distance=..4] invisibility 2 0 true
execute if entity @s[tag=shep_white,team=Blue] run effect give @e[team=Blue,distance=..4] invisibility 2 0 true

# 黄 (発光)
execute if entity @s[tag=shep_yellow,team=Red] run effect give @e[team=Blue,distance=..10] glowing 2 0 true
execute if entity @s[tag=shep_yellow,team=Blue] run effect give @e[team=Red,distance=..10] glowing 2 0 true

# 青 (速度低下)
execute if entity @s[tag=shep_blue_aura,team=Red] run effect give @e[team=Blue,distance=..5] slowness 2 1 true
execute if entity @s[tag=shep_blue_aura,team=Blue] run effect give @e[team=Red,distance=..5] slowness 2 1 true

# 灰色 (弱化1)
execute if entity @s[tag=shep_gray_aura,team=Red] run effect give @e[team=Blue,distance=..5] weakness 2 0 true
execute if entity @s[tag=shep_gray_aura,team=Blue] run effect give @e[team=Red,distance=..5] weakness 2 0 true

# 黒 (盲目)
execute if entity @s[tag=shep_black_aura,team=Red] run effect give @e[team=Blue,distance=..3] blindness 2 0 true
execute if entity @s[tag=shep_black_aura,team=Blue] run effect give @e[team=Red,distance=..3] blindness 2 0 true

# ★赤紫 (味方へのバフ部分：攻撃2・速度2・耐性2)

execute if entity @s[tag=shep_kamikaze,team=Red] run effect give @e[team=Red,distance=..5] strength 2 1 true
execute if entity @s[tag=shep_kamikaze,team=Red] run effect give @e[team=Red,distance=..5] speed 2 1 true
execute if entity @s[tag=shep_kamikaze,team=Red] run effect give @e[team=Red,distance=..5] resistance 2 1 true

execute if entity @s[tag=shep_kamikaze,team=Blue] run effect give @e[team=Blue,distance=..5] strength 2 1 true
execute if entity @s[tag=shep_kamikaze,team=Blue] run effect give @e[team=Blue,distance=..5] speed 2 1 true
execute if entity @s[tag=shep_kamikaze,team=Blue] run effect give @e[team=Blue,distance=..5] resistance 2 1 true
# ==========================================
#  間欠更新グループ (再生、毒、衰弱)
#  ★重要: タイマーが0の時だけ実行し、効果時間を4秒にする
# ==========================================

# 橙 (再生のみ分離)
execute if score #global aura_timer matches 0 if entity @s[tag=shep_gold,team=Red] run effect give @e[team=Red,distance=..5] regeneration 4 0 true
execute if score #global aura_timer matches 0 if entity @s[tag=shep_gold,team=Blue] run effect give @e[team=Blue,distance=..5] regeneration 4 0 true

# 桃 (再生2)
execute if score #global aura_timer matches 0 if entity @s[tag=shep_pink,team=Red] run effect give @e[team=Red,distance=..5] regeneration 4 1 true
execute if score #global aura_timer matches 0 if entity @s[tag=shep_pink,team=Blue] run effect give @e[team=Blue,distance=..5] regeneration 4 1 true

# 緑 (毒)
execute if score #global aura_timer matches 0 if entity @s[tag=shep_green_aura,team=Red] run effect give @e[team=Blue,distance=..4] poison 4 1 true
execute if score #global aura_timer matches 0 if entity @s[tag=shep_green_aura,team=Blue] run effect give @e[team=Red,distance=..4] poison 4 1 true

# ★赤紫 (味方への代償：衰弱 VIII)
# Amplifier 7 = Lv8
execute if score #global aura_timer matches 0 if entity @s[tag=shep_kamikaze,team=Red] run effect give @e[team=Red,distance=..5] wither 4 7 true
execute if score #global aura_timer matches 0 if entity @s[tag=shep_kamikaze,team=Blue] run effect give @e[team=Blue,distance=..5] wither 4 7 true