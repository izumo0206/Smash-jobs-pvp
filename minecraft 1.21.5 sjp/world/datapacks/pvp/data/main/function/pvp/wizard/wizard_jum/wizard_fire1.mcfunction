#WizardFire


#画面表示
execute if entity @a[tag=Wizard,scores={SelectJum=1}] as @a[tag=Wizard,scores={SelectJum=1}] run title @s actionbar [{"text":"火の魔法Ⅰ mp:20 ct:20 cd:20","color":"red"},{"text":"   MP:  ","color":"black"},{"score":{"name":"*","objective":"WizardMP"},"color":"dark_purple"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"},{"text":"   CD:  ","color":"black"},{"score":{"name":"*","objective":"WizardCooldown"},"color":"dark_purple"}]

#火の魔法実行
execute as @a[tag=Wizard,scores={WizardCooldown=..0,sneak=20..,WizardMP=20..,SelectJum=1}] run function main:pvp/wizard/wizard_jum/wizard_fire1_sub