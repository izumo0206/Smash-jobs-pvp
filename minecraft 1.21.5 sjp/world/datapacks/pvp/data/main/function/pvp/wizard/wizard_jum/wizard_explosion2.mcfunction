#WizardExplosion


#画面表示
execute if entity @a[tag=Wizard,scores={SelectJum=14}] as @a[tag=Wizard,scores={SelectJum=14}] run title @s actionbar [{"text":"爆発の魔法Ⅱ mp:140 ct:60 cd:100","color":"gold"},{"text":"   MP:  ","color":"black"},{"score":{"name":"*","objective":"WizardMP"},"color":"dark_purple"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"},{"text":"   CD:  ","color":"black"},{"score":{"name":"*","objective":"WizardCooldown"},"color":"dark_purple"}]

#爆発の魔法実行
execute as @a[tag=Wizard,scores={WizardCooldown=..0,sneak=60..,WizardMP=140..,SelectJum=14}] run function main:pvp/wizard/wizard_jum/wizard_explosion2_sub