#敵刻印登録（mark_enemy）
execute if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data~{wraith_slot:1}] run function main:pvp/wraith/mark_enemy1
execute if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data~{wraith_slot:2}] run function main:pvp/wraith/mark_enemy2
execute if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data~{wraith_slot:3}] run function main:pvp/wraith/mark_enemy3
execute if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data~{wraith_slot:4}] run function main:pvp/wraith/mark_enemy4

scoreboard players set @s wraith_dmg 0
