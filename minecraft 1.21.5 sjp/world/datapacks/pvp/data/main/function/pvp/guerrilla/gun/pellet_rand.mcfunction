#上下左右それぞれ ±n/100 度のランダムなずれ（四角形の拡散）
$execute store result storage main:guerrilla rot.y double 0.01 run random value -$(n)..$(n)
$execute store result storage main:guerrilla rot.p double 0.01 run random value -$(n)..$(n)
function main:pvp/guerrilla/gun/pellet_rot with storage main:guerrilla rot
