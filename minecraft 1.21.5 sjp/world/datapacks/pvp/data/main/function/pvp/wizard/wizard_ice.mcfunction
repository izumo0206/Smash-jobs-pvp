#魔法使い 氷呪文


#最初に粉雪
execute at @e[tag=WizardIceArmorStand,scores={WizardIce=1}] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:powder_snow keep
#時間経過
scoreboard players add @e[tag=WizardIceArmorStand,tag=WizardIceArmorStand] WizardIce 1

#粉雪消す
execute at @e[tag=WizardIceArmorStand,scores={WizardIce=199}] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:powder_snow
#アマスタキル
kill @e[tag=WizardIceArmorStand,scores={WizardIce=200..}]