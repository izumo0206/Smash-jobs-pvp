title @s actionbar [{text:'石柱',color:'gray'},{text:'   CT: ',color:'black'},{score:{name:'*',objective:'DuskCast'},color:'dark_purple'},{text:'/200   CD: ',color:'black'},{score:{name:'*',objective:'DuskCooldown'},color:'dark_purple'}]
execute if score @s DuskCooldown matches ..0 if score @s DuskCast matches 200.. run function main:pvp/dusk/art/duskpiller_sub
