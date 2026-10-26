#WizardThunder


#画面表示
execute if entity @a[tag=Wizard,scores={SelectJum=25}] as @a[tag=Wizard,scores={SelectJum=25}] run title @s actionbar [{"text":"雷の魔法Ⅲ mp:300 ct:300 cd:300","color":"yellow"},{"text":"   MP:  ","color":"black"},{"score":{"name":"*","objective":"WizardMP"},"color":"dark_purple"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"},{"text":"   CD:  ","color":"black"},{"score":{"name":"*","objective":"WizardCooldown"},"color":"dark_purple"}]

#雷の魔法実行
execute as @a[tag=Wizard,scores={WizardCooldown=..0,sneak=300..,WizardMP=300..,SelectJum=25}] run function main:pvp/wizard/wizard_jum/wizard_thunder3_sub