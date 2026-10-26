#罠師　リピート


scoreboard players set @a[tag=Trapper,scores={walk=1..}] sneak 0
scoreboard players set @a[tag=Trapper,scores={dash=1..}] sneak 0
scoreboard players set @a[tag=Trapper,scores={TrapperCD=1..}] sneak 1
scoreboard players set @a[tag=Trapper,scores={TrapperCD=1..}] sneak 1
scoreboard players set @a[tag=Trapper,scores={walk=1..}] walk 0
scoreboard players set @a[tag=Trapper,scores={dash=1..}] dash 0
scoreboard players remove @a[tag=Trapper,scores={TrapperCD=1..}] TrapperCD 1
effect clear @a[tag=Trapper,scores={sneak=0}] minecraft:speed


#トラッパーパッシブ
effect give @a[tag=Trapper,scores={sneak=1..}] minecraft:speed 1 11 true
effect give @a[tag=Trapper,scores={sneak=1..}] minecraft:invisibility 1 1 true
execute as @a[tag=Trapper,scores={sneak=1..}] at @a[tag=Trapper] run particle minecraft:ash ~ ~ ~ 0.5 1 0.5 0.01 4 force @a


#罠設置
execute if entity @a[tag=Trapper] run function main:pvp/trapper/trapper_summon

#罠実行
execute if entity @a[tag=Trapper] run function main:pvp/trapper/trapper_wana

#罠効果時間
scoreboard players add @e[tag=trap] trap 1

execute as @e[tag=trap,scores={trap=2400..}] run kill @s

#出口移動
execute at @e[tag=Trapper,scores={tp_red=1..}] at @e[tag=exit,distance=..7] run tp @e[tag=exit] ^ ^1 ^
execute as @e[tag=Trapper,scores={tp_red=1..}] run scoreboard players set @a[tag=Trapper] tp_red 0