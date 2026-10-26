# BANなしピックの入口。赤青チーム人数から2vs2/3vs3を自動判定する。
execute unless data storage main:pick {configured:1b} run function main:job_selection/pick/setup
scoreboard players set #ban PickCtrl 0
function main:job_selection/pick/start
