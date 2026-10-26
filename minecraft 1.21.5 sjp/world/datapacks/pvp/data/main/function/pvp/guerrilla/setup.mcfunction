#上級ゲリラ兵で使用するscoreboardを初回選択時に作成する
scoreboard objectives add GuCalc dummy
scoreboard objectives add GuID dummy
scoreboard objectives add GuPid dummy
scoreboard objectives add GuUse minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add GuHoldT dummy
scoreboard objectives add GuPress dummy
scoreboard objectives add GuCool dummy
scoreboard objectives add GuRate dummy
scoreboard objectives add GuReload dummy
scoreboard objectives add GuReloadW dummy
scoreboard objectives add GuWalk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add GuSprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add GuCrouchM minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add GuMove dummy
scoreboard objectives add GuDeath deathCount
scoreboard objectives add GuKill playerKillCount
scoreboard objectives add GuAssist dummy
scoreboard objectives add GuPX dummy
scoreboard objectives add GuPY dummy
scoreboard objectives add GuPZ dummy
scoreboard objectives add GuSkull dummy
scoreboard objectives add GuRw1 dummy
scoreboard objectives add GuRw3 dummy
scoreboard objectives add GuRw5 dummy
scoreboard objectives add GuRw10 dummy
scoreboard objectives add GuTimer dummy
scoreboard objectives add GuCount dummy
scoreboard objectives add GuAmmoSg dummy
scoreboard objectives add GuAmmoAk dummy
scoreboard objectives add GuMagAk dummy
scoreboard objectives add GuHasAk dummy
scoreboard objectives add GuAmmoGl dummy
scoreboard objectives add GuMagGl dummy
scoreboard objectives add GuHasGl dummy
scoreboard objectives add GuAmmoP90 dummy
scoreboard objectives add GuMagP90 dummy
scoreboard objectives add GuHasP90 dummy
scoreboard objectives add GuAmmoTec dummy
scoreboard objectives add GuMagTec dummy
scoreboard objectives add GuHasTec dummy
scoreboard objectives add GuAmmoRv dummy
scoreboard objectives add GuMagRv dummy
scoreboard objectives add GuHasRv dummy

scoreboard players set #10 GuCalc 10
scoreboard players set #360 GuCalc 360
scoreboard players set #nuke GuCalc 0
data modify storage main:guerrilla setup set value 1b
