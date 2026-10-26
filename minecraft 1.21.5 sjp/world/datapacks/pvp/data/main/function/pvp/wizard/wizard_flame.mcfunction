#魔法使い 炎呪文


#最初に炎
execute at @e[tag=WizardFlameArmorStand,scores={Wizardfire=1}] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:fire keep
#時間経過
scoreboard players add @e[tag=WizardFlameArmorStand] Wizardfire 1

#炎消す
execute at @e[tag=WizardFlameArmorStand,scores={Wizardfire=59}] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:fire
#アマスタキル
kill @e[tag=WizardFlameArmorStand,scores={Wizardfire=60..}]