#WizardFire


#画面表示
execute if entity @a[tag=Wizard,scores={SelectJum=21}] as @a[tag=Wizard,scores={SelectJum=21}] run title @s actionbar [{"text":"火の魔法Ⅲ mp:300 ct:200 cd:300","color":"red"},{"text":"   MP:  ","color":"black"},{"score":{"name":"*","objective":"WizardMP"},"color":"dark_purple"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"},{"text":"   CD:  ","color":"black"},{"score":{"name":"*","objective":"WizardCooldown"},"color":"dark_purple"}]

#火の魔法実行
execute as @a[tag=Wizard,scores={WizardCooldown=..0,sneak=200..,WizardMP=300..,SelectJum=21}] run function main:pvp/wizard/wizard_jum/wizard_fire3_sub