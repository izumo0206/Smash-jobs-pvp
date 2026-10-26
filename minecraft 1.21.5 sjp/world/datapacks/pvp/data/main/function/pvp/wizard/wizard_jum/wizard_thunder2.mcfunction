#WizardThunder


#画面表示
execute if entity @a[tag=Wizard,scores={SelectJum=15}] as @a[tag=Wizard,scores={SelectJum=15}] run title @s actionbar [{"text":"雷の魔法Ⅱ mp:150 ct:200 cd:150","color":"yellow"},{"text":"   MP:  ","color":"black"},{"score":{"name":"*","objective":"WizardMP"},"color":"dark_purple"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"},{"text":"   CD:  ","color":"black"},{"score":{"name":"*","objective":"WizardCooldown"},"color":"dark_purple"}]

#雷の魔法実行
execute as @a[tag=Wizard,scores={WizardCooldown=..0,sneak=100..,WizardMP=100..,SelectJum=15}] run function main:pvp/wizard/wizard_jum/wizard_thunder2_sub