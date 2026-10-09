#命中時の血（実行位置に出す。量は config の param.common.blood。0 なら出さない）
$scoreboard players set #b GuCalc $(blood)
execute if score #b GuCalc matches ..0 run return 0
#撃たれた本人には見せない
tag @s add SdVictim
$particle minecraft:block{block_state:"minecraft:redstone_block"} ~ ~ ~ 0.12 0.15 0.12 0 $(blood) force @a[tag=!SdVictim]
$particle minecraft:dust{color:[0.55,0.0,0.0],scale:0.9} ~ ~ ~ 0.1 0.12 0.1 0 $(blood) force @a[tag=!SdVictim]
tag @s remove SdVictim
