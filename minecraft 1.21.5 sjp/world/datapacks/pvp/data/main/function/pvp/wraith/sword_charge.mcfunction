#長剣スニークCTチャージ判定

#チャージ条件成立（長剣所持 かつ スニーク中 かつ 非スペクテイター）
execute if items entity @s weapon.mainhand golden_sword[custom_data~{wraith_slot:0}] if predicate main:is_sneaking if score @s wraith_spec_time matches 0 run scoreboard players add @s wraith_sword_ct 1
execute if items entity @s weapon.mainhand golden_sword[custom_data~{wraith_slot:0}] if predicate main:is_sneaking if score @s wraith_spec_time matches 0 run particle minecraft:portal ~ ~0.2 ~ 0.3 0.1 0.3 0.05 2

#チャージ完了（200tick到達）
execute if score @s wraith_sword_ct matches 200.. run function main:pvp/wraith/spectator_start

#チャージ中断（長剣を持っていない、またはスニークしていない）
execute unless items entity @s weapon.mainhand golden_sword[custom_data~{wraith_slot:0}] if score @s wraith_sword_ct matches 1.. run scoreboard players set @s wraith_sword_ct 0
execute unless predicate main:is_sneaking if score @s wraith_sword_ct matches 1.. run scoreboard players set @s wraith_sword_ct 0
