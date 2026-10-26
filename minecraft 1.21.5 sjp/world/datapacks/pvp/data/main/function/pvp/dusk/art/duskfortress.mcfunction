title @s actionbar [{text:'砦',color:'dark_aqua'},{text:'   CT: ',color:'black'},{score:{name:'*',objective:'DuskCast'},color:'dark_purple'},{text:'/100   CD: ',color:'black'},{score:{name:'*',objective:'DuskCooldown'},color:'dark_purple'}]
execute if score @s DuskCooldown matches ..0 if score @s DuskCast matches 100.. run function main:pvp/dusk/art/duskfortress_sub
