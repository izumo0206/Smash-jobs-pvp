#フルオート銃の発射タイミング（毎tick RPM を加算し、1200 を超えるごとに1発。押した瞬間は即発射）
execute if score @s GuPress matches 1 run scoreboard players set @s GuRate 1200
$execute if score @s GuPress matches 1 run scoreboard players remove @s GuRate $(rpm)
$scoreboard players add @s GuRate $(rpm)
