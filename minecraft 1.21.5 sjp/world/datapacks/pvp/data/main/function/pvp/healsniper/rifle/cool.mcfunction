#連射間隔：1200 / RPM tick（四捨五入）
scoreboard players set #c HsCalc 2400
$scoreboard players set #r HsCalc $(rpm)
scoreboard players operation #c HsCalc /= #r HsCalc
scoreboard players add #c HsCalc 1
scoreboard players operation #c HsCalc /= #2 HsCalc
scoreboard players operation @s HsCool = #c HsCalc
