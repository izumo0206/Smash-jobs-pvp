#魔法使い 氷呪文2


#最初に炎
execute at @e[tag=WizardFlameArmorStand2,scores={Wizardfire=1}] run fill ~-2 ~-1 ~-2 ~2 ~2 ~2 minecraft:fire keep
#時間経過
scoreboard players add @e[tag=WizardFlameArmorStand2] Wizardfire 1

#炎消す
execute at @e[tag=WizardFlameArmorStand2,scores={Wizardfire=59}] run fill ~-2 ~-1 ~-2 ~2 ~2 ~2 minecraft:air replace minecraft:fire
#アマスタキル
kill @e[tag=WizardFlameArmorStand2,scores={Wizardfire=60..}]