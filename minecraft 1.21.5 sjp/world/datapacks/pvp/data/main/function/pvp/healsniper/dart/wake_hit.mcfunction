#ダメージで起きた：暗闇と、動けないほどの鈍足を少しの間
function main:pvp/healsniper/dart/wake
$effect give @s minecraft:darkness $(wake_dark_sec) 0 true
$effect give @s minecraft:slowness $(wake_slow_sec) 9 true
title @s actionbar {text:"目が覚めた！",color:"yellow"}
