#実行者：撃たれた味方
#回復（heal）：再生Ⅵ（1tickに1回復）を heal tick だけ与え、終わったら通常の再生（regen）に切り替える（fx/heal_tick）
scoreboard players set #hit HsCalc 1
execute store result score @s HsHeal run data get storage main:healsniper param.rifle.heal
#far ブロックを超えたら回復量は far_heal
execute if score #far HsCalc matches 1.. if score #d HsCalc > #far HsCalc store result score @s HsHeal run data get storage main:healsniper param.rifle.far_heal
effect give @s minecraft:regeneration 1 5 true
particle minecraft:heart ~ ~0.3 ~ 0.3 0.3 0.3 0 6 force @a
particle minecraft:happy_villager ~ ~ ~ 0.3 0.4 0.3 0 12 force @a
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5 1.8
execute as @a[tag=HsShooter] at @s run playsound minecraft:block.note_block.chime player @s ~ ~ ~ 0.8 1.4
