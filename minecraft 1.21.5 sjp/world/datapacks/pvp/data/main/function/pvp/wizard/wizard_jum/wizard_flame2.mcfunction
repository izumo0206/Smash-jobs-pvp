#WizardFlame


#画面表示
execute if entity @a[tag=Wizard,scores={SelectJum=12}] as @a[tag=Wizard,scores={SelectJum=12}] run title @s actionbar [{"text":"炎の魔法Ⅱ mp:100 ct:200 cd:300","color":"dark_red"},{"text":"   MP:  ","color":"black"},{"score":{"name":"*","objective":"WizardMP"},"color":"dark_purple"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"},{"text":"   CD:  ","color":"black"},{"score":{"name":"*","objective":"WizardCooldown"},"color":"dark_purple"}]

#炎の魔法実行
execute as @a[tag=Wizard,scores={WizardCooldown=..0,sneak=200..,WizardMP=100..,SelectJum=12}] run function main:pvp/wizard/wizard_jum/wizard_flame2_sub