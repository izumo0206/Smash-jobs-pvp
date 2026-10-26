tag @p add Superjumpblue2

summon minecraft:armor_stand 4938 1 136 {Marker:true,Invisible:true,Tags:["Superjumpblue2"],CustomName:'{"text":"スーパージャンプ","color":"blue"}',CustomNameVisible:true,NoGravity:true,Glowing:false}

title @p title "着地まで後5秒"

schedule function main:stage/dekaline/superjump_blue2_sub 5s