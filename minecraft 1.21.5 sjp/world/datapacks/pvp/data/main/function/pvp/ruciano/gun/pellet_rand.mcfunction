#上下左右それぞれ ±n/100 度のランダムなずれ
$execute store result storage main:ruciano rot.y double 0.01 run random value -$(n)..$(n)
$execute store result storage main:ruciano rot.p double 0.01 run random value -$(n)..$(n)
function main:pvp/ruciano/gun/pellet_rot with storage main:ruciano rot
