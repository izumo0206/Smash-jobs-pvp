#実行者：管理marker。前進し、ドラゴンを追従させ、一定間隔でクリーパーを落とす
scoreboard players remove @s GuTimer 1
function main:pvp/guerrilla/reward/carpet_move with storage main:guerrilla param.carpet
scoreboard players operation #pid GuCalc = @s GuPid
#ドラゴンのモデルは向きと逆に飛ぶため、進行方向の逆を向かせる（実機で逆なら ^ ^ ^10 に変更）
execute at @s rotated as @s as @e[type=ender_dragon,tag=GuDragon] if score @s GuPid = #pid GuCalc run tp @s ~ ~ ~ facing ^ ^ ^-10
#飛行時間（duration）の間に bombs 個を等間隔で投下する
execute store result score #dur GuCalc run data get storage main:guerrilla param.carpet.duration
execute store result score #bombs GuCalc run data get storage main:guerrilla param.carpet.bombs
scoreboard players operation @s GuCount += #bombs GuCalc
execute if score @s GuCount >= #dur GuCalc run function main:pvp/guerrilla/reward/carpet_drop
execute if score @s GuTimer matches ..0 run function main:pvp/guerrilla/reward/carpet_end
