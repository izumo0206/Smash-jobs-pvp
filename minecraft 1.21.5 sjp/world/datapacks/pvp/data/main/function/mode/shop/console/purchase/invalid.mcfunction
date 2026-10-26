tellraw @s {text:'現在のステージでは、その商品を購入できません。ショップを開き直してください。',color:'red'}
playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.8 0.6
function main:mode/shop/console/ui/open
