#WizardKill


#画面表示
execute if entity @a[tag=Wizard,scores={SelectJum=26}] as @a[tag=Wizard,scores={SelectJum=26}] run title @s actionbar [{"text":"致死の魔法 mp:400 ct:800 cd:200","color":"black"},{"text":"   MP:  ","color":"black"},{"score":{"name":"*","objective":"WizardMP"},"color":"dark_purple"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"},{"text":"   CD:  ","color":"black"},{"score":{"name":"*","objective":"WizardCooldown"},"color":"dark_purple"}]

#致死の魔法実行
execute as @a[tag=Wizard,scores={WizardCooldown=..0,sneak=800..,WizardMP=400..,SelectJum=26}] run function main:pvp/wizard/wizard_jum/wizard_kill_sub