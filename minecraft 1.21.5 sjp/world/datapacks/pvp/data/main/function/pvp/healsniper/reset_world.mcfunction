#回復スナイパーが出したentity・付与した状態の後片付け（試合終了時）
kill @e[type=item_display,tag=HsDart]
kill @e[type=marker,tag=HsHitPt]
execute as @a[tag=HsSleeping] run function main:pvp/healsniper/dart/wake
execute as @a[scores={HsNano=1..}] run function main:pvp/healsniper/nano/end
scoreboard players set @a HsHeal 0
tag @a remove HsNanoTarget
tag @a remove HsNanoUser
