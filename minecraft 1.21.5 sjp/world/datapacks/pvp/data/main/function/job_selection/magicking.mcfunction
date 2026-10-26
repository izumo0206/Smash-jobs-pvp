#魔王

execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] as @p at @s run function main:job_selection/pick/input/job {job_id:33,pool:"magicking",job_name:"魔王",job_function:"magicking",sign_x:-16,sign_y:3}
execute if data storage main:pick {active:1b} unless entity @p[tag=PickBypass] run return 0

execute unless data storage main:magicking {setup:1b} run function main:pvp/magicking/setup
execute unless data storage main:magicking {devour_setup:1b} run function main:pvp/magicking/setup_devour

execute at @e[tag=jobsentakuKun] run data merge block ~-16 ~3 ~ {front_text:{messages:["",{"text":"BAN"},"",""]},is_waxed:1b}
execute if entity @a[tag=FirstBAN] run return run function main:job_selection/tag_reset2

function main:job_selection/tag_reset2
scoreboard players set @p sneak 0

tag @p add MagicKing

#初期状態
scoreboard players set @p WizardMP 100
scoreboard players set @p WizardCooldown 0
scoreboard players set @p SelectJum 1
scoreboard players set @p MKFire 0
scoreboard players set @p MKWater 0
scoreboard players set @p MKWind 0
scoreboard players set @p MKEarth 0
scoreboard players set @p MKLight 0
scoreboard players set @p MKDark 0
scoreboard players set @p MKFlameN 0
scoreboard players set @p MKThunderN 0
scoreboard players set @p MKIceN 0
scoreboard players set @p MKChaosN 0
scoreboard players set @p MKUltimate 0
scoreboard players set @p MKDevourUse 0
scoreboard players add #next_owner MKOwner 1
scoreboard players operation @p MKOwner = #next_owner MKOwner

#持ち物
clear @p
give @p minecraft:nether_star[custom_name={"text":"エレメント確認","color":"light_purple","italic":false},lore=[{"text":"投げると現在のエレメントと魔法性能を確認できる","color":"gray","italic":false}],custom_data={magic_king_element_check:1b},enchantment_glint_override=true]
function main:pvp/magicking/item/give_magic_book
function main:pvp/magicking/item/give_skill_book
function main:pvp/magicking/item/give_devour

#ステータス
function main:job_selection/set/state_reset
attribute @p minecraft:attack_damage base set 1
attribute @p minecraft:attack_speed base set 1
attribute @p minecraft:max_health base set 40
attribute @p minecraft:armor base set 12
attribute @p minecraft:movement_speed base set 0.08
attribute @p minecraft:entity_interaction_range base set 2
attribute @p minecraft:scale base set 1.2

title @a[tag=Standbypick] title ["",{"selector":"@p"},{"text":"：魔王"}]
execute at @e[tag=jobsentakuKun] run data merge block ~-16 ~3 ~ {front_text:{messages:["",{"selector":"@p"},"",""]},is_waxed:1b}
