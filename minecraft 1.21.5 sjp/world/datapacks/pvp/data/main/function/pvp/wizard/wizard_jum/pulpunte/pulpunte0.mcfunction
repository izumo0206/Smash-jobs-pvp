#パルプンテ0

#タグ付け
tag @s add WizardPulpunte0

#効果
execute at @s run particle minecraft:cloud ~ ~ ~ 1 1 1 1 200
execute at @s run playsound minecraft:entity.wither.death master @a ~ ~ ~ 1

#実行者消滅後にタグが残らないよう、先に後処理
tag @s remove WizardPulpunte0
tag @s remove WizardPulpunte
kill @a
