#WizardIce


#画面表示
execute if entity @a[tag=Wizard,scores={SelectJum=13}] as @a[tag=Wizard,scores={SelectJum=13}] run title @s actionbar [{"text":"氷の魔法Ⅱ mp:100 ct:50 cd:100","color":"aqua"},{"text":"   MP:  ","color":"black"},{"score":{"name":"*","objective":"WizardMP"},"color":"dark_purple"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"},{"text":"   CD:  ","color":"black"},{"score":{"name":"*","objective":"WizardCooldown"},"color":"dark_purple"}]

#氷の魔法実行
execute as @a[tag=Wizard,scores={WizardCooldown=..0,sneak=50..,WizardMP=100..,SelectJum=13}] run function main:pvp/wizard/wizard_jum/wizard_ice2_sub