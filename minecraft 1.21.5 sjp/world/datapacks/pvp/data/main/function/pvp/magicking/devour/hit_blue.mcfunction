advancement revoke @s only main:magicking/devour_hit_blue
execute if entity @s[tag=MagicKing,team=Red] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_data~{magic_king_devour:1b}] run function main:pvp/magicking/devour/recover_mp
