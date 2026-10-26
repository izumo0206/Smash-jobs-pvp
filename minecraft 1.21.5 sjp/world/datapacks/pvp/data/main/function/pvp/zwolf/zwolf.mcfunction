#ZombieWolf　リピート


scoreboard players set @a[tag=Zwolf,scores={walk=1..}] sneak 0
scoreboard players set @a[tag=Zwolf,scores={dash=1..}] sneak 0
scoreboard players set @a[tag=Zwolf,scores={walk=1..}] walk 0
scoreboard players set @a[tag=Zwolf,scores={dash=1..}] dash 0
scoreboard players remove @a[tag=Zwolf,scores={zwolfCD=1..}] zwolfCD 1


#陰陽の饗宴
execute if entity @a[tag=Zwolf] run function main:pvp/zwolf/zwolf_eat

#おなかへる攻撃
execute as @a[tag=Zwolf,scores={Damagedealt=1..}] run function main:pvp/zwolf/zwolf_attack

#空腹度チェック
function main:pvp/zwolf/zwolf_hunger

#空腹度エフェクト
function main:pvp/zwolf/zwolf_hunger_effect

#空腹度減少
effect give @e[tag=Zwolf] minecraft:hunger 2 3 true