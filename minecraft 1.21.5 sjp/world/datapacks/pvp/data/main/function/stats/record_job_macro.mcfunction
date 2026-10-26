$scoreboard players add @a[tag=$(JobName)] JobPlay_$(JobName) 1
$execute if score #Global WinTeam matches 1 run scoreboard players add @a[tag=$(JobName),team=Blue] JobWin_$(JobName) 1
$execute if score #Global WinTeam matches 2 run scoreboard players add @a[tag=$(JobName),team=Red] JobWin_$(JobName) 1
