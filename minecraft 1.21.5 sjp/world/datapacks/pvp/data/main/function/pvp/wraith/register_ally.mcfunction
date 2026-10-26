#味方登録（register_ally）
execute if score @s wraith_sneak_cd matches 1.. run return 0

execute if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data~{wraith_slot:1}] run function main:pvp/wraith/register_ally1
execute if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data~{wraith_slot:2}] run function main:pvp/wraith/register_ally2
execute if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data~{wraith_slot:3}] run function main:pvp/wraith/register_ally3
execute if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data~{wraith_slot:4}] run function main:pvp/wraith/register_ally4
