title @s actionbar [{text:'子兎',color:'white'},{text:'   CT: ',color:'black'},{score:{name:'*',objective:'DuskCast'},color:'dark_purple'},{text:'/50   CD: ',color:'black'},{score:{name:'*',objective:'DuskCooldown'},color:'dark_purple'}]
execute if score @s DuskCooldown matches ..0 if score @s DuskCast matches 50.. run function main:pvp/dusk/art/duskrabbit_sub
