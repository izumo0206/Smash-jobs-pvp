#WizardPulpunte


#画面表示
execute if entity @a[tag=Wizard,scores={SelectJum=6}] as @a[tag=Wizard,scores={SelectJum=6}] run title @s actionbar [{"text":"パルプンテ mp:100 ct:100 cd:300","color":"black"},{"text":"   MP:  ","color":"black"},{"score":{"name":"*","objective":"WizardMP"},"color":"dark_purple"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"},{"text":"   CD:  ","color":"black"},{"score":{"name":"*","objective":"WizardCooldown"},"color":"dark_purple"}]

#パルプンテ実行
execute as @a[tag=Wizard,tag=!WizardPulpunte0,scores={WizardCooldown=..0,sneak=100..,WizardMP=100..,SelectJum=6}] run function main:pvp/wizard/wizard_jum/wizard_pulpunte_sub
