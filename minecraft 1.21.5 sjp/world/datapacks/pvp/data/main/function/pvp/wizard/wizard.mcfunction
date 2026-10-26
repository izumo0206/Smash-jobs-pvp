#魔法使い　リピート



#MP回復
execute as @a[tag=Wizard,scores={sneak=1..,walk=0,dash=0},nbt={SelectedItem:{id:"minecraft:nether_star",components:{"minecraft:custom_name":"魔法の素"}}}] run function main:pvp/wizard/wizard_mp

execute as @a[tag=Wizard,scores={MPcharge=1..}] run function main:pvp/wizard/wizard_mp_charge

scoreboard players set @a[tag=Wizard,scores={WizardCooldown=1..}] sneak 0
scoreboard players set @a[tag=Wizard,scores={walk=1..}] sneak 0
scoreboard players set @a[tag=Wizard,scores={dash=1..}] sneak 0
scoreboard players remove @a[tag=Wizard,scores={WizardCooldown=1..}] WizardCooldown 1
scoreboard players set @a[tag=Wizard,scores={walk=1..}] walk 0
scoreboard players set @a[tag=Wizard,scores={dash=1..}] dash 0


#詠唱時パーティクル
execute as @a[tag=Wizard,scores={sneak=1..}] run execute at @s run particle minecraft:enchant ~ ~1 ~ 1 1 1 1 1 normal


#火の魔法Ⅰ
execute if entity @a[tag=Wizard,scores={SelectJum=1}] run function main:pvp/wizard/wizard_jum/wizard_fire1
#火の魔法Ⅱ
execute if entity @a[tag=Wizard,scores={SelectJum=11}] run function main:pvp/wizard/wizard_jum/wizard_fire2
#火の魔法Ⅲ
execute if entity @a[tag=Wizard,scores={SelectJum=21}] run function main:pvp/wizard/wizard_jum/wizard_fire3

#炎の魔法Ⅰ
execute if entity @a[tag=Wizard,scores={SelectJum=2}] run function main:pvp/wizard/wizard_jum/wizard_flame1
#炎の魔法Ⅱ
execute if entity @a[tag=Wizard,scores={SelectJum=12}] run function main:pvp/wizard/wizard_jum/wizard_flame2
#炎の魔法Ⅲ
execute if entity @a[tag=Wizard,scores={SelectJum=22}] run function main:pvp/wizard/wizard_jum/wizard_flame3

#氷の魔法Ⅰ
execute if entity @a[tag=Wizard,scores={SelectJum=3}] run function main:pvp/wizard/wizard_jum/wizard_ice1
#氷の魔法Ⅱ
execute if entity @a[tag=Wizard,scores={SelectJum=13}] run function main:pvp/wizard/wizard_jum/wizard_ice2
#氷の魔法Ⅲ
execute if entity @a[tag=Wizard,scores={SelectJum=23}] run function main:pvp/wizard/wizard_jum/wizard_ice3

#爆発の魔法Ⅰ
execute if entity @a[tag=Wizard,scores={SelectJum=4}] run function main:pvp/wizard/wizard_jum/wizard_explosion1
#爆発の魔法Ⅱ
execute if entity @a[tag=Wizard,scores={SelectJum=14}] run function main:pvp/wizard/wizard_jum/wizard_explosion2
#爆発の魔法Ⅲ
execute if entity @a[tag=Wizard,scores={SelectJum=24}] run function main:pvp/wizard/wizard_jum/wizard_explosion3

#雷の魔法Ⅰ
execute if entity @a[tag=Wizard,scores={SelectJum=5}] run function main:pvp/wizard/wizard_jum/wizard_thunder1
#雷の魔法Ⅱ
execute if entity @a[tag=Wizard,scores={SelectJum=15}] run function main:pvp/wizard/wizard_jum/wizard_thunder2
#雷の魔法Ⅲ
execute if entity @a[tag=Wizard,scores={SelectJum=25}] run function main:pvp/wizard/wizard_jum/wizard_thunder3

#パルプンテ
execute if entity @a[tag=Wizard,scores={SelectJum=6}] run function main:pvp/wizard/wizard_jum/wizard_pulpunte

#致死の魔法
execute if entity @a[tag=Wizard,scores={SelectJum=26}] run function main:pvp/wizard/wizard_jum/wizard_kill

#氷呪文呼び出し
execute if entity @e[tag=WizardIceArmorStand] run function main:pvp/wizard/wizard_ice
execute if entity @e[tag=WizardIceArmorStand2] run function main:pvp/wizard/wizard_ice2
#炎呪文呼び出し
execute if entity @e[tag=WizardFlameArmorStand] run function main:pvp/wizard/wizard_flame
execute if entity @e[tag=WizardFlameArmorStand2] run function main:pvp/wizard/wizard_flame2

#絨毯爆撃
execute at @e[type=minecraft:spectral_arrow,tag=bombing,nbt={inGround:true}] run summon minecraft:creeper ~ ~ ~ {Tags:["MTentity"],Fuse:0,ignited:1b,powered:1b,ExplosionRadius:3b,CustomName:'{"text":"天からのプレゼント","color":"gray"}'}
kill @e[type=minecraft:spectral_arrow,tag=bombing,nbt={inGround:true}]
