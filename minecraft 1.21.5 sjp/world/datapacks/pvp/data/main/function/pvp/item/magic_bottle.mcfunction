#魔力瓶実行

#タグ付け
execute as @a[tag=!Elf,scores={MPcharge=1..}] run tag @s add MPcharge

execute at @a[tag=MPcharge] run particle minecraft:witch ~ ~ ~ 0.5 0.6 0.5 1 1 normal

#魔法使いMPチャージ
#タグ付け
execute as @a[tag=Wizard,tag=MPcharge] run tag @s add WizardMPcharge

scoreboard players add @a[tag=WizardMPcharge] WizardMP 100
scoreboard players set @a[tag=MagicKing,scores={WizardMP=1001..}] WizardMP 1000

#アシストMPチャージ
#タグ付け
execute as @a[tag=Assist,tag=MPcharge] run tag @s add AssistMPcharge

scoreboard players add @a[tag=AssistMPcharge] AssistMP 100

execute as @a[tag=Assist2,tag=MPcharge] run tag @s add Assist2MPcharge

scoreboard players add @a[tag=Assist2MPcharge] AssistMP 100

#爆弾魔MPチャージ
#タグ付け
execute as @a[tag=Bomber,tag=MPcharge] run tag @s add BomberMPcharge

scoreboard players add @a[tag=BomberMPcharge] BomberMP 100

#雷神MPチャージ
#タグ付け
execute as @a[tag=Thor,tag=MPcharge] run tag @s add ThorMPcharge

scoreboard players add @a[tag=ThorMPcharge] ThorMP 10

#タグ剥奪
scoreboard players set @a[tag=MPcharge] MPcharge 0
tag @a[tag=WizardMPcharge] remove WizardMPcharge
tag @a[tag=AssistMPcharge] remove AssistMPcharge
tag @a[tag=Assist2MPcharge] remove Assist2MPcharge
tag @a[tag=BomberMPcharge] remove BomberMPcharge
tag @a[tag=ThorMPcharge] remove ThorMPcharge
tag @a[tag=MPcharge] remove MPcharge
