#単発銃の連射間隔：1200 / RPM tick（四捨五入）
scoreboard players set #c GuCalc 2400
$scoreboard players set #r GuCalc $(rpm)
scoreboard players operation #c GuCalc /= #r GuCalc
scoreboard players add #c GuCalc 1
scoreboard players operation #c GuCalc /= #2 GuCalc
scoreboard players operation @s GuCool = #c GuCalc
