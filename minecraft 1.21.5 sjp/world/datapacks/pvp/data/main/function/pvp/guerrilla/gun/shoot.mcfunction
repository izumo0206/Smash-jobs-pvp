#1回分の射撃（実行者：射手。storage main:guerrilla param.<銃> を引数に呼ぶ）
$scoreboard players set #sc GuCalc $(spread_c)
$scoreboard players set #ss GuCalc $(spread_s)
$scoreboard players set #mm GuCalc $(move)
$scoreboard players set #cm GuCalc $(crouch_move)
function main:pvp/guerrilla/gun/spread
#射程（ブロック）→ 0.25ブロック刻みの歩数
$scoreboard players set #st GuCalc $(range)
scoreboard players operation #st GuCalc *= #4 GuCalc
execute store result storage main:guerrilla shot.steps int 1 run scoreboard players get #st GuCalc
$data modify storage main:guerrilla shot merge value {dmg:$(dmg),pellets:$(pellets),far_dmg:$(far_dmg),blood:$(blood)}
#距離減衰の開始距離（ブロック → 0.25ブロック刻みの歩数。0 なら減衰なし）
$scoreboard players set #far GuCalc $(far)
scoreboard players operation #far GuCalc *= #4 GuCalc
#1回の射撃で同じ相手に与えるダメージの上限（×10で計算。0 なら上限なし）
$scoreboard players set #maxd GuCalc $(max_dmg)
scoreboard players operation #maxd GuCalc *= #10 GuCalc
#ノックバック：knockback 1 の銃（ショットガン）だけノックバックありのダメージにする
data modify storage main:guerrilla shot.type set value "main:gu_bullet"
$scoreboard players set #kb GuCalc $(knockback)
execute if score #kb GuCalc matches 1 run data modify storage main:guerrilla shot.type set value "main:gu_pellet"
function main:pvp/guerrilla/gun/fire
