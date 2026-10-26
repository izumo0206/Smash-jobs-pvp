tag @p add Superjumpred1

summon minecraft:armor_stand 4930 3 87 {Marker:true,Invisible:true,Tags:["Superjumpred1"],CustomName:'{"text":"スーパージャンプ","color":"red"}',CustomNameVisible:true,NoGravity:true,Glowing:false}

title @p title "着地まで後5秒"

schedule function main:stage/dekaline/superjump_red1_sub 5s