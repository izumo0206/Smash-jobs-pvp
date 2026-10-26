#本でステータス選択したときのコマンド　本でfunctionが行われている
clear @p
scoreboard players set @s SelectStatus 2
scoreboard players set @s EscaperPoint 100
scoreboard players set @s SelectJum 0
function main:mode/1vs4/give_escaper_book
