#WizardFire


#画面表示
execute if entity @a[tag=Wizard,scores={SelectJum=11}] as @a[tag=Wizard,scores={SelectJum=11}] run title @s actionbar [{"text":"火の魔法Ⅱ mp:200 ct:100 cd:200","color":"red"},{"text":"   MP:  ","color":"black"},{"score":{"name":"*","objective":"WizardMP"},"color":"dark_purple"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"},{"text":"   CD:  ","color":"black"},{"score":{"name":"*","objective":"WizardCooldown"},"color":"dark_purple"}]

#火の魔法実行
execute as @a[tag=Wizard,scores={WizardCooldown=..0,sneak=100..,WizardMP=100..,SelectJum=11}] run function main:pvp/wizard/wizard_jum/wizard_fire2_sub
