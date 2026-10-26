tag @p add Superjumpblue1

summon minecraft:armor_stand 4972 3 108 {Marker:true,Invisible:true,Tags:["Superjumpblue1"],CustomName:'{"text":"スーパージャンプ","color":"blue"}',CustomNameVisible:true,NoGravity:true,Glowing:false}

title @p title "着地まで後5秒"

schedule function main:stage/dekaline/superjump_blue1_sub 5s