$tellraw @s [{text:'コインが足りません: ',color:'red'},{text:'$(name)',color:'white'},{text:'（必要 $(price)）',color:'yellow'}]
playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.8 0.6
function main:mode/shop/console/ui/open
