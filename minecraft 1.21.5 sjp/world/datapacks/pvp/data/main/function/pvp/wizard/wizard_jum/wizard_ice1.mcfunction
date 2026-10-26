#WizardIce


#画面表示
execute if entity @a[tag=Wizard,scores={SelectJum=3}] as @a[tag=Wizard,scores={SelectJum=3}] run title @s actionbar [{"text":"氷の魔法Ⅰ mp:30 ct:20 cd:40","color":"aqua"},{"text":"   MP:  ","color":"black"},{"score":{"name":"*","objective":"WizardMP"},"color":"dark_purple"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"},{"text":"   CD:  ","color":"black"},{"score":{"name":"*","objective":"WizardCooldown"},"color":"dark_purple"}]

#氷の魔法実行
execute as @a[tag=Wizard,scores={WizardCooldown=..0,sneak=20..,WizardMP=30..,SelectJum=3}] run function main:pvp/wizard/wizard_jum/wizard_ice1_sub