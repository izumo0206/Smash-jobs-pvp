execute if score #debug PickCtrl matches 0 run tellraw @s {"text":"時間切れのため、使用可能なジョブをランダムに割り当てます。","color":"yellow"}
execute if score #debug PickCtrl matches 1 run tellraw @s {"text":"[デバッグ] ファーストピック以外のため、使用可能なジョブをランダムに割り当てます。","color":"aqua"}
execute store result score #random PickCtrl run random value 1..35
execute if score #random PickCtrl matches 1 if score herobrine PickPool matches 0 run function main:job_selection/herobrine
execute if score #random PickCtrl matches 2 if score wizardsword PickPool matches 0 run function main:job_selection/wizardsword
execute if score #random PickCtrl matches 3 if score assistwarrior PickPool matches 0 run function main:job_selection/assistwarrior
execute if score #random PickCtrl matches 4 if score kirito PickPool matches 0 run function main:job_selection/kirito
execute if score #random PickCtrl matches 5 if score thor PickPool matches 0 run function main:job_selection/thor
execute if score #random PickCtrl matches 6 if score zwolf PickPool matches 0 run function main:job_selection/zwolf
execute if score #random PickCtrl matches 7 if score sword PickPool matches 0 run function main:job_selection/sword
execute if score #random PickCtrl matches 8 if score isaac PickPool matches 0 run function main:job_selection/isaac
execute if score #random PickCtrl matches 9 if score singed PickPool matches 0 run function main:job_selection/singed
execute if score #random PickCtrl matches 10 if score peacekeeper PickPool matches 0 run function main:job_selection/peacekeeper
execute if score #random PickCtrl matches 11 if score pirate PickPool matches 0 run function main:job_selection/pirate
execute if score #random PickCtrl matches 12 if score assistpirate PickPool matches 0 run function main:job_selection/assistpirate
execute if score #random PickCtrl matches 13 if score wizardpirate PickPool matches 0 run function main:job_selection/wizardpirate
execute if score #random PickCtrl matches 14 if score guardian PickPool matches 0 run function main:job_selection/guardian
execute if score #random PickCtrl matches 15 if score allrounder PickPool matches 0 run function main:job_selection/allrounder
execute if score #random PickCtrl matches 16 if score bow PickPool matches 0 run function main:job_selection/bow
execute if score #random PickCtrl matches 17 if score ruciano PickPool matches 0 run function main:job_selection/ruciano
execute if score #random PickCtrl matches 18 if score hunter PickPool matches 0 run function main:job_selection/hunter
execute if score #random PickCtrl matches 19 if score bowscouter PickPool matches 0 run function main:job_selection/bowscouter
execute if score #random PickCtrl matches 20 if score bomber PickPool matches 0 run function main:job_selection/bomber
execute if score #random PickCtrl matches 21 if score wich PickPool matches 0 run function main:job_selection/wich
execute if score #random PickCtrl matches 22 if score assist PickPool matches 0 run function main:job_selection/assist
execute if score #random PickCtrl matches 23 if score elf PickPool matches 0 run function main:job_selection/elf
execute if score #random PickCtrl matches 24 if score shepherd PickPool matches 0 run function main:job_selection/shepherd
execute if score #random PickCtrl matches 25 if score scouter PickPool matches 0 run function main:job_selection/scouter
execute if score #random PickCtrl matches 26 if score ashe PickPool matches 0 run function main:job_selection/ashe
execute if score #random PickCtrl matches 27 if score trapper PickPool matches 0 run function main:job_selection/trapper
execute if score #random PickCtrl matches 28 if score wraith PickPool matches 0 run function main:job_selection/wraith
execute if score #random PickCtrl matches 29 if score beasttamer PickPool matches 0 run function main:job_selection/beasttamer
execute if score #random PickCtrl matches 30 if score prototype PickPool matches 0 run function main:job_selection/prototype
execute if score #random PickCtrl matches 31 if score birdman PickPool matches 0 run function main:job_selection/birdman
execute if score #random PickCtrl matches 32 if score dusk PickPool matches 0 run function main:job_selection/dusk
execute if score #random PickCtrl matches 33 if score magicking PickPool matches 0 run function main:job_selection/magicking
execute if score #random PickCtrl matches 34 if score guerrilla PickPool matches 0 run function main:job_selection/guerrilla
execute if score #random PickCtrl matches 35 if score healsniper PickPool matches 0 run function main:job_selection/healsniper
execute if entity @s[tag=PickAllowed] run function main:job_selection/pick/timeout/random_one
