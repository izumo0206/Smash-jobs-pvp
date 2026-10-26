tag @p add Superjumpred2

summon minecraft:armor_stand 4964 1 59 {Marker:true,Invisible:true,Tags:["Superjumpred2"],CustomName:'{"text":"スーパージャンプ","color":"red"}',CustomNameVisible:true,NoGravity:true,Glowing:false}

title @p title "着地まで後5秒"

schedule function main:stage/dekaline/superjump_red2_sub 5s