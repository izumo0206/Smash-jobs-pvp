execute as @p[tag=MagicKing] at @s run function main:pvp/magicking/reset_player
execute as @p[tag=Guerrilla] at @s run function main:pvp/guerrilla/reset_player
execute as @p[tag=HealSniper] at @s run function main:pvp/healsniper/reset_player
execute as @p[tag=Ruciano] at @s run function main:pvp/ruciano/reset_player
tag @p remove Sword
tag @p remove Wizard
tag @p remove MagicKing
tag @p remove Scouter
tag @p remove Bow
tag @p remove Pirate
tag @p remove Pirate2
tag @p remove Assist
tag @p remove Beasttamer
tag @p remove Isaac
tag @p remove Kirito
tag @p remove Herobrine
tag @p remove Ashe
tag @p remove Bomber
tag @p remove Hunter
tag @p remove Guardian
tag @p remove SwordMaster
tag @p remove Birdman
tag @p remove Ruciano
tag @p remove Singed
tag @p remove ScouterBow
tag @p remove Assist2
tag @p remove Allrounder
tag @p remove Eryuside-ta1
tag @p remove Eryuside-ta2
tag @p remove Eryuside-ta3
tag @p remove Eryuside-ta4
tag @p remove Da-kuriparusa-1
tag @p remove Da-kuriparusa-2
tag @p remove Da-kuriparusa-3
tag @p remove Da-kuriparusa-4
tag @p remove Trapper
tag @p remove Thor
tag @p remove ThorNeo
tag @p remove Knocbackisaac
tag @p remove Sharpisaac
tag @p remove Dusk
tag @p remove Peacekeeper
tag @p remove Escaper
tag @p remove Killer
tag @p remove Elf
tag @p remove FirstBAN
tag @p remove Prototype
tag @p remove Rengoku
tag @p remove Zwolf
tag @p remove Shepherd
tag @p remove Heretic
tag @p remove WhiteSword
tag @p remove MagicSword
tag @p remove WizardSword
tag @p remove Poseidon
tag @p remove Wraith
tag @p remove Wraith1
tag @p remove Wraith2
tag @p remove Wraith3
scoreboard players reset @p wraith_cd
scoreboard players reset @p wraith_ent
scoreboard players reset @p wraith_exit
scoreboard players reset @p wraith_rc
scoreboard players reset @p wraith_dmg
scoreboard players reset @p wraith_void
scoreboard players reset @p wraith_drop_s
scoreboard players reset @p wraith_drop_f
scoreboard players reset @p wraith_type_1
scoreboard players reset @p wraith_type_2
scoreboard players reset @p wraith_type_3
scoreboard players reset @p wraith_type_4
scoreboard players reset @p wraith_mark_1
scoreboard players reset @p wraith_mark_2
scoreboard players reset @p wraith_mark_3
scoreboard players reset @p wraith_mark_4
scoreboard players reset @p wraith_sneak_cd
scoreboard players reset @p wraith_sword_ct
scoreboard players reset @p wraith_spec_time
execute as @p[tag=Wraith,gamemode=spectator] run gamemode adventure @s
tag @p remove WraithCurrentIn
tag @p remove WraithCurrentOut
tag @p remove Musician
tag @a remove Wich
tag @p remove Guerrilla
tag @p remove HealSniper
function main:job_selection/set/state_reset
clear @p
