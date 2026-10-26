#死神で使用するscoreboardを初回選択時に作成する
scoreboard objectives add RcCalc dummy
scoreboard objectives add RcUse minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add RcCool dummy
scoreboard objectives add RcAmmo dummy
scoreboard objectives add RcReload dummy
scoreboard objectives add RcWalk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add RcSprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add RcCrouchM minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add RcMove dummy
scoreboard objectives add RcDeath deathCount
data modify storage main:ruciano setup set value 1b
