title @s actionbar [{text:'子自在',color:'aqua'},{text:'   CT: ',color:'black'},{score:{name:'*',objective:'DuskCast'},color:'dark_purple'},{text:'/60   CD: ',color:'black'},{score:{name:'*',objective:'DuskCooldown'},color:'dark_purple'}]
execute if score @s DuskCooldown matches ..0 if score @s DuskCast matches 60.. run function main:pvp/dusk/art/dusksoldiers_sub
