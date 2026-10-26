#WizardFlame


#画面表示
execute if entity @a[tag=Wizard,scores={SelectJum=2}] as @a[tag=Wizard,scores={SelectJum=2}] run title @s actionbar [{"text":"炎の魔法Ⅰ mp:30 ct:20 cd:30","color":"dark_red"},{"text":"   MP:  ","color":"black"},{"score":{"name":"*","objective":"WizardMP"},"color":"dark_purple"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"},{"text":"   CD:  ","color":"black"},{"score":{"name":"*","objective":"WizardCooldown"},"color":"dark_purple"}]

#炎の魔法実行
execute as @a[tag=Wizard,scores={WizardCooldown=..0,sneak=20..,WizardMP=30..,SelectJum=2}] run function main:pvp/wizard/wizard_jum/wizard_flame1_sub