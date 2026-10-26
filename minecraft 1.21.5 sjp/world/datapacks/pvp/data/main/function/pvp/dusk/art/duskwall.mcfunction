title @s actionbar [{text:'長城壁',color:'green'},{text:'   CT: ',color:'black'},{score:{name:'*',objective:'DuskCast'},color:'dark_purple'},{text:'/20   CD: ',color:'black'},{score:{name:'*',objective:'DuskCooldown'},color:'dark_purple'}]
execute if score @s DuskCooldown matches ..0 if score @s DuskCast matches 20.. run function main:pvp/dusk/art/duskwall_sub
