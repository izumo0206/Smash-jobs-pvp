#魔法使い 氷呪文2


#最初に粉雪
execute at @e[tag=WizardIceArmorStand2,scores={WizardIce=1}] run fill ~-2 ~-1 ~-2 ~2 ~2 ~2 minecraft:powder_snow keep
#時間経過
scoreboard players add @e[tag=WizardIceArmorStand2] WizardIce 1

#粉雪消す
execute at @e[tag=WizardIceArmorStand2,scores={WizardIce=899}] run fill ~-2 ~-1 ~-2 ~2 ~2 ~2 minecraft:air replace minecraft:powder_snow
#アマスタキル
kill @e[tag=WizardIceArmorStand2,scores={WizardIce=900..}]