#実行者：kills 回キルした回復スナイパー。持っていなければナノブーストを渡す（持てるのは1個まで）
scoreboard players set @s HsKill 0
execute if score @s HsNanoHave matches 1.. run return 0
scoreboard players set @s HsNanoHave 1
function main:pvp/healsniper/nano/ready
