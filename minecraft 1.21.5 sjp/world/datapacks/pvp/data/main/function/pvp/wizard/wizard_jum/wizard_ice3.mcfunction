#WizardIce


#画面表示
execute if entity @a[tag=Wizard,scores={SelectJum=23}] as @a[tag=Wizard,scores={SelectJum=23}] run title @s actionbar [{"text":"氷の魔法Ⅲ mp:300 ct:100 cd:300","color":"aqua"},{"text":"   MP:  ","color":"black"},{"score":{"name":"*","objective":"WizardMP"},"color":"dark_purple"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"},{"text":"   CD:  ","color":"black"},{"score":{"name":"*","objective":"WizardCooldown"},"color":"dark_purple"}]

#氷の魔法実行
execute as @a[tag=Wizard,scores={WizardCooldown=..0,sneak=100..,WizardMP=300..,SelectJum=23}] run function main:pvp/wizard/wizard_jum/wizard_ice3_sub