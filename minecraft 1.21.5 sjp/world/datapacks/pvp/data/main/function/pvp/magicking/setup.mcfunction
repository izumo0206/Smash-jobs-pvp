#魔王で使用するscoreboardを初回選択時に作成する
scoreboard objectives add MKFire dummy
scoreboard objectives add MKWater dummy
scoreboard objectives add MKWind dummy
scoreboard objectives add MKEarth dummy
scoreboard objectives add MKLight dummy
scoreboard objectives add MKDark dummy
scoreboard objectives add MKCost dummy
scoreboard objectives add MKCast dummy
scoreboard objectives add MKCD dummy
scoreboard objectives add MKRange dummy
scoreboard objectives add MKDuration dummy
scoreboard objectives add MKPower dummy
scoreboard objectives add MKLevel dummy
scoreboard objectives add MKCount dummy
scoreboard objectives add MKPrev dummy
scoreboard objectives add MKTimer dummy
scoreboard objectives add MKOwner dummy
scoreboard objectives add MKRandom dummy
scoreboard objectives add MKFlameN dummy
scoreboard objectives add MKThunderN dummy
scoreboard objectives add MKIceN dummy
scoreboard objectives add MKChaosN dummy
scoreboard objectives add MKUltimate dummy
scoreboard objectives add MKGravityOld dummy
scoreboard objectives add MKGravityTime dummy
scoreboard objectives add MKScaleOld dummy
scoreboard objectives add MKScaleTime dummy
scoreboard objectives add MKCalc dummy

scoreboard players set #1 MKCalc 1
scoreboard players set #2 MKCalc 2
scoreboard players set #5 MKCalc 5
scoreboard players set #6 MKCalc 6
scoreboard players set #8 MKCalc 8
scoreboard players set #10 MKCalc 10
scoreboard players set #20 MKCalc 20
scoreboard players set #30 MKCalc 30
scoreboard players set #50 MKCalc 50
scoreboard players set #100 MKCalc 100
scoreboard players set #200 MKCalc 200
scoreboard players set #next_owner MKOwner 0

function main:pvp/magicking/setup_devour
data modify storage main:magicking setup set value 1b
