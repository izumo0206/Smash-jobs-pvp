#砦（120秒）と耐性II
scoreboard players add @e[tag=DuskArmorStand1] Fortress 1
execute as @e[tag=DuskArmorStand1,scores={Fortress=2400..}] at @s run function main:pvp/dusk/art/duskfortressbuild_sub
execute at @e[tag=DuskArmorStand1,team=Blue] run effect give @a[team=Blue,distance=..10] minecraft:resistance 1 1 true
execute at @e[tag=DuskArmorStand1,team=Red] run effect give @a[team=Red,distance=..10] minecraft:resistance 1 1 true

#長城壁（旧仕様の7.5秒）
scoreboard players add @e[tag=DuskArmorStand2] Wall 1
execute as @e[tag=DuskArmorStand2,scores={Wall=150..}] at @s run function main:pvp/dusk/art/duskwallcleanup

#石柱（15秒）：味方強化と従来の敵への暗闇を両立
scoreboard players add @e[tag=DuskArmorStand3] Piller 1
execute as @e[tag=DuskArmorStand3,scores={Piller=300..}] at @s run function main:pvp/dusk/art/duskpillercleanup
execute at @e[tag=DuskArmorStand3,team=Blue] run effect give @e[team=Blue,distance=..10] minecraft:speed 1 2 true
execute at @e[tag=DuskArmorStand3,team=Blue] run effect give @e[team=Blue,distance=..10] minecraft:strength 1 1 true
execute at @e[tag=DuskArmorStand3,team=Red] run effect give @e[team=Red,distance=..10] minecraft:speed 1 2 true
execute at @e[tag=DuskArmorStand3,team=Red] run effect give @e[team=Red,distance=..10] minecraft:strength 1 1 true
execute at @e[tag=DuskArmorStand3,team=Blue] run effect give @a[team=Red,distance=..10] minecraft:darkness 1 10 true
execute at @e[tag=DuskArmorStand3,team=Red] run effect give @a[team=Blue,distance=..10] minecraft:darkness 1 10 true

#子兎（10秒）：半径6マスの味方プレイヤーへ移動速度上昇III
scoreboard players add @e[tag=DuskRabbitMob] rabbit 1
kill @e[tag=DuskRabbitMob,scores={rabbit=200..}]
execute at @e[tag=DuskRabbitMob,team=Blue] run effect give @a[team=Blue,distance=..6] minecraft:speed 1 2 true
execute at @e[tag=DuskRabbitMob,team=Red] run effect give @a[team=Red,distance=..6] minecraft:speed 1 2 true

#子自在（20秒）：従来の発光・移動速度低下III
scoreboard players add @e[tag=kozizai] rabbit 1
kill @e[tag=kozizai,scores={rabbit=400..}]
execute at @e[tag=kozizai,team=Red] run effect give @e[team=Blue,distance=..5] minecraft:glowing 1 1 true
execute at @e[tag=kozizai,team=Blue] run effect give @e[team=Red,distance=..5] minecraft:glowing 1 1 true
execute at @e[tag=kozizai,team=Red] run effect give @e[team=Blue,distance=..5] minecraft:slowness 1 2 true
execute at @e[tag=kozizai,team=Blue] run effect give @e[team=Red,distance=..5] minecraft:slowness 1 2 true

#画中人は砦と同じ120秒を上限とする
scoreboard players add @e[tag=gatyuzin] rabbit 1
kill @e[tag=gatyuzin,scores={rabbit=2400..}]
