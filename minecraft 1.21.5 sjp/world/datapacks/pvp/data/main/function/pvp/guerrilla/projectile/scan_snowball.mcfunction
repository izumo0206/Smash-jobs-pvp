tag @s add GuSeen
execute unless data entity @s Item.components."minecraft:custom_data"{gu:"gren"} run return 0
summon marker ~ ~ ~ {Tags:["GuNadeM","GuNew"]}
function main:pvp/guerrilla/projectile/attach
