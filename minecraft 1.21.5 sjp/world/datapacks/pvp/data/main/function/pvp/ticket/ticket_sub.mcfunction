#チケット計算


#青チーム
execute if entity @a[team=Blue,scores={death=1..}] run scoreboard players remove 青チーム ticket 1
#デス数でMP半分 青
scoreboard players operation @a[tag=Assist,team=Blue,scores={death=1..}] AssistMP /= 2 DeathMP_sub
scoreboard players operation @a[tag=Wizard,tag=!MagicKing,team=Blue,scores={death=1..}] WizardMP /= 2 DeathMP_sub
scoreboard players set @a[team=Blue,scores={death=1..}] death 0


#赤チーム
execute if entity @a[team=Red,scores={death=1..}] run scoreboard players remove 赤チーム ticket 1
#デス数でMP半分 赤
scoreboard players operation @a[tag=Assist,team=Red,scores={death=1..}] AssistMP /= 2 DeathMP_sub
scoreboard players operation @a[tag=Wizard,tag=!MagicKing,team=Red,scores={death=1..}] WizardMP /= 2 DeathMP_sub
scoreboard players set @a[team=Red,scores={death=1..}] death 0
