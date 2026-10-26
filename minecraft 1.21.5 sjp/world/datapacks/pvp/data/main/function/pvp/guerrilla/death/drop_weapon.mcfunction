#ランダム武器（等確率・仮）
execute store result score #r GuCalc run random value 1..6
execute if score #r GuCalc matches 1 run data modify storage main:guerrilla drop merge value {kind:"ak",item:"minecraft:iron_horse_armor",name:"AK47"}
execute if score #r GuCalc matches 2 run data modify storage main:guerrilla drop merge value {kind:"gl",item:"minecraft:iron_horse_armor",name:"Garill"}
execute if score #r GuCalc matches 3 run data modify storage main:guerrilla drop merge value {kind:"gren",item:"minecraft:fire_charge",name:"グレネード"}
execute if score #r GuCalc matches 4 run data modify storage main:guerrilla drop merge value {kind:"p90",item:"minecraft:golden_horse_armor",name:"SMG（P90）"}
execute if score #r GuCalc matches 5 run data modify storage main:guerrilla drop merge value {kind:"tec",item:"minecraft:golden_horse_armor",name:"オートピストル（Tec9）"}
execute if score #r GuCalc matches 6 run data modify storage main:guerrilla drop merge value {kind:"rv",item:"minecraft:diamond_horse_armor",name:"リボルバー"}
function main:pvp/guerrilla/death/spawn with storage main:guerrilla drop
