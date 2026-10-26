# 勝利判定と戦績記録

# 勝利チーム判定 (WinTeam: 1=Blue, 2=Red, 0=Draw)
scoreboard players set #Global WinTeam 0

# チケット優先モード (Mode=0)
execute if score 勝利判断モード Mode matches 0 if score 青チーム ticket > 赤チーム ticket run scoreboard players set #Global WinTeam 1
execute if score 勝利判断モード Mode matches 0 if score 青チーム ticket < 赤チーム ticket run scoreboard players set #Global WinTeam 2
# チケット同数
execute if score 勝利判断モード Mode matches 0 if score 青チーム ticket = 赤チーム ticket if score ガチエリアボスバー GatiAreaBlueMaxPlus > ガチエリアボスバー GatiAreaRedMaxPlus run scoreboard players set #Global WinTeam 1
execute if score 勝利判断モード Mode matches 0 if score 青チーム ticket = 赤チーム ticket if score ガチエリアボスバー GatiAreaBlueMaxPlus < ガチエリアボスバー GatiAreaRedMaxPlus run scoreboard players set #Global WinTeam 2

# ガチエリア優先モード (Mode=1)
execute if score 勝利判断モード Mode matches 1 if score ガチエリアボスバー GatiAreaBlueMaxPlus > ガチエリアボスバー GatiAreaRedMaxPlus run scoreboard players set #Global WinTeam 1
execute if score 勝利判断モード Mode matches 1 if score ガチエリアボスバー GatiAreaBlueMaxPlus < ガチエリアボスバー GatiAreaRedMaxPlus run scoreboard players set #Global WinTeam 2
# エリア同数
execute if score 勝利判断モード Mode matches 1 if score ガチエリアボスバー GatiAreaBlueMaxPlus = ガチエリアボスバー GatiAreaRedMaxPlus if score 青チーム ticket > 赤チーム ticket run scoreboard players set #Global WinTeam 1
execute if score 勝利判断モード Mode matches 1 if score ガチエリアボスバー GatiAreaBlueMaxPlus = ガチエリアボスバー GatiAreaRedMaxPlus if score 青チーム ticket < 赤チーム ticket run scoreboard players set #Global WinTeam 2

# 戦績記録処理マクロ
# 引数: JobName
function main:stats/record_job_macro {JobName:"Sword"}
function main:stats/record_job_macro {JobName:"Wizard"}
function main:stats/record_job_macro {JobName:"Scouter"}
function main:stats/record_job_macro {JobName:"Bow"}
function main:stats/record_job_macro {JobName:"Pirate"}
function main:stats/record_job_macro {JobName:"Assist"}
function main:stats/record_job_macro {JobName:"Beasttamer"}
function main:stats/record_job_macro {JobName:"Isaac"}
function main:stats/record_job_macro {JobName:"Kirito"}
function main:stats/record_job_macro {JobName:"Herobrine"}
function main:stats/record_job_macro {JobName:"Birdman"}
function main:stats/record_job_macro {JobName:"Ashe"}
function main:stats/record_job_macro {JobName:"Bomber"}
function main:stats/record_job_macro {JobName:"Hunter"}
function main:stats/record_job_macro {JobName:"Guardian"}
function main:stats/record_job_macro {JobName:"SwordMaster"}
function main:stats/record_job_macro {JobName:"Ruciano"}
function main:stats/record_job_macro {JobName:"Singed"}
function main:stats/record_job_macro {JobName:"ScouterBow"}
function main:stats/record_job_macro {JobName:"Trapper"}
function main:stats/record_job_macro {JobName:"Thor"}
function main:stats/record_job_macro {JobName:"Peacekeeper"}
function main:stats/record_job_macro {JobName:"Escaper"}
function main:stats/record_job_macro {JobName:"Killer"}
function main:stats/record_job_macro {JobName:"Elf"}
function main:stats/record_job_macro {JobName:"Prototype"}
function main:stats/record_job_macro {JobName:"Zwolf"}
function main:stats/record_job_macro {JobName:"Heretic"}
function main:stats/record_job_macro {JobName:"WhiteSword"}
function main:stats/record_job_macro {JobName:"MagicSword"}
function main:stats/record_job_macro {JobName:"Poseidon"}
function main:stats/record_job_macro {JobName:"Wraith"}
function main:stats/record_job_macro {JobName:"Musician"}
function main:stats/record_job_macro {JobName:"Allrounder"}
function main:stats/record_job_macro {JobName:"Dusk"}
