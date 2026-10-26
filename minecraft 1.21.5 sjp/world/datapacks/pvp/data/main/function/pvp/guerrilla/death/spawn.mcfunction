#ドロップ品。通常の拾得は無効にし、ゲリラ兵だけが drop/pickup で拾う
$summon item $(x) $(y) $(z) {Item:{id:"$(item)",count:1,components:{"minecraft:custom_name":{text:"$(name)",color:"gold",italic:false},"minecraft:custom_data":{gu_drop:"$(kind)"}}},PickupDelay:32767s,Glowing:1b,Tags:["GuDrop"]}
