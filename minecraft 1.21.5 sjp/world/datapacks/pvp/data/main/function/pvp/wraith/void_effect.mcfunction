#虚空無効化効果（全バフ・デバフ解除＆パーティクル）
scoreboard players remove @e[scores={wraith_void=1..}] wraith_void 1

#デバフクリア
effect clear @e[scores={wraith_void=1..}] slowness
effect clear @e[scores={wraith_void=1..}] mining_fatigue
effect clear @e[scores={wraith_void=1..}] instant_damage
effect clear @e[scores={wraith_void=1..}] nausea
effect clear @e[scores={wraith_void=1..}] blindness
effect clear @e[scores={wraith_void=1..}] hunger
effect clear @e[scores={wraith_void=1..}] weakness
effect clear @e[scores={wraith_void=1..}] poison
effect clear @e[scores={wraith_void=1..}] wither
effect clear @e[scores={wraith_void=1..}] glowing
effect clear @e[scores={wraith_void=1..}] levitation
effect clear @e[scores={wraith_void=1..}] darkness

#バフクリア
effect clear @e[scores={wraith_void=1..}] speed
effect clear @e[scores={wraith_void=1..}] haste
effect clear @e[scores={wraith_void=1..}] strength
effect clear @e[scores={wraith_void=1..}] jump_boost
effect clear @e[scores={wraith_void=1..}] regeneration
effect clear @e[scores={wraith_void=1..}] resistance
effect clear @e[scores={wraith_void=1..}] fire_resistance
effect clear @e[scores={wraith_void=1..}] water_breathing
effect clear @e[scores={wraith_void=1..}] invisibility
effect clear @e[scores={wraith_void=1..}] night_vision
effect clear @e[scores={wraith_void=1..}] health_boost
effect clear @e[scores={wraith_void=1..}] absorption
effect clear @e[scores={wraith_void=1..}] saturation
effect clear @e[scores={wraith_void=1..}] slow_falling
effect clear @e[scores={wraith_void=1..}] conduit_power
effect clear @e[scores={wraith_void=1..}] dolphins_grace

#演出パーティクル
execute at @e[scores={wraith_void=1..}] run particle minecraft:dragon_breath ~ ~1.8 ~ 0.3 0.2 0.3 0.01 2
