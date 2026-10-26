#WizardExplosion


#画面表示
execute if entity @a[tag=Wizard,scores={SelectJum=24}] as @a[tag=Wizard,scores={SelectJum=24}] run title @s actionbar [{"text":"爆発の魔法Ⅲ mp:300 ct:200 cd:400","color":"gold"},{"text":"   MP:  ","color":"black"},{"score":{"name":"*","objective":"WizardMP"},"color":"dark_purple"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"},{"text":"   CD:  ","color":"black"},{"score":{"name":"*","objective":"WizardCooldown"},"color":"dark_purple"}]

#爆発の魔法実行
execute as @a[tag=Wizard,scores={WizardCooldown=..0,sneak=200..,WizardMP=300..,SelectJum=24}] run function main:pvp/wizard/wizard_jum/wizard_explosion3_sub

execute as @a[tag=WizardExplosion3,scores={WizardCooldown=350..}] run effect give @s minecraft:resistance 1 255 true

execute at @a[tag=WizardExplosion3,scores={WizardCooldown=350..}] run summon minecraft:creeper ^ ^0.5 ^-2 {Tags:["MTentity"],Fuse:0,ignited:true,ExplosionRadius:6b,Silent:true,Invulnerable:true,CustomName:{text:"爆発の魔法Ⅲ",color:"gold"}}

#タグ消去
tag @a[tag=WizardExplosion3,scores={WizardCooldown=..350}] remove WizardExplosion3
