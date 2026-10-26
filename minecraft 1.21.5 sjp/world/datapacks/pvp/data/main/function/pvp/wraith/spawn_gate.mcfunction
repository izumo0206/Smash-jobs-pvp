#ゲート生成（spawn_gate）
execute if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data~{wraith_slot:1}] run function main:pvp/wraith/spawn_gate1
execute if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data~{wraith_slot:2}] run function main:pvp/wraith/spawn_gate2
execute if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data~{wraith_slot:3}] run function main:pvp/wraith/spawn_gate3
execute if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data~{wraith_slot:4}] run function main:pvp/wraith/spawn_gate4

scoreboard players set @s wraith_rc 0
