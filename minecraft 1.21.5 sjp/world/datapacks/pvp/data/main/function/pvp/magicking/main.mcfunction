#魔王共通処理（pvp_controlから1tickに1回呼び出す）

execute unless data storage main:magicking {devour_setup:1b} run function main:pvp/magicking/setup_devour

#MP自動回復と上限
scoreboard players add @a[tag=MagicKing,scores={WizardMP=..999}] WizardMP 1
scoreboard players set @a[tag=MagicKing,scores={WizardMP=1001..}] WizardMP 1000

#CDと詠唱キャンセル
scoreboard players remove @a[tag=MagicKing,scores={WizardCooldown=1..}] WizardCooldown 1
scoreboard players set @a[tag=MagicKing,scores={WizardCooldown=1..}] sneak 0
scoreboard players set @a[tag=MagicKing,scores={walk=1..}] sneak 0
scoreboard players set @a[tag=MagicKing,scores={dash=1..}] sneak 0
scoreboard players set @a[tag=MagicKing,scores={walk=1..}] walk 0
scoreboard players set @a[tag=MagicKing,scores={dash=1..}] dash 0

#確認用ネザースターを投げたプレイヤーに現在値を表示
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",components:{"minecraft:custom_data":{magic_king_element_check:1b}}}}] at @s as @a[tag=MagicKing,distance=..4,sort=nearest,limit=1] run function main:pvp/magicking/info/show
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",components:{"minecraft:custom_data":{magic_king_element_check:1b}}}}]
item replace entity @a[tag=MagicKing] container.0 with minecraft:nether_star[custom_name={"text":"エレメント確認","color":"light_purple","italic":false},lore=[{"text":"投げると現在のエレメントと魔法性能を確認できる","color":"gray","italic":false}],custom_data={magic_king_element_check:1b},enchantment_glint_override=true]

#魔喰の右クリック
execute as @a[tag=MagicKing,scores={MKDevourUse=1..}] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_data~{magic_king_devour:1b}] run function main:pvp/magicking/devour/use
execute as @a[tag=MagicKing,scores={MKDevourUse=1..}] if items entity @s weapon.offhand minecraft:carrot_on_a_stick[minecraft:custom_data~{magic_king_devour:1b}] run function main:pvp/magicking/devour/use
scoreboard players set @a[scores={MKDevourUse=1..}] MKDevourUse 0

#選択中の魔法
execute as @a[tag=MagicKing,scores={SelectJum=1}] at @s run function main:pvp/magicking/spell/fire/prepare
execute as @a[tag=MagicKing,scores={SelectJum=2}] at @s run function main:pvp/magicking/spell/water/prepare
execute as @a[tag=MagicKing,scores={SelectJum=3}] at @s run function main:pvp/magicking/spell/wind/prepare
execute as @a[tag=MagicKing,scores={SelectJum=4}] at @s run function main:pvp/magicking/spell/earth/prepare
execute as @a[tag=MagicKing,scores={SelectJum=5}] at @s run function main:pvp/magicking/spell/light/prepare
execute as @a[tag=MagicKing,scores={SelectJum=6}] at @s run function main:pvp/magicking/spell/dark/prepare
execute as @a[tag=MagicKing,scores={SelectJum=7}] at @s run function main:pvp/magicking/spell/flame/prepare
execute as @a[tag=MagicKing,scores={SelectJum=8}] at @s run function main:pvp/magicking/spell/thunder/prepare
execute as @a[tag=MagicKing,scores={SelectJum=9}] at @s run function main:pvp/magicking/spell/ice/prepare
execute as @a[tag=MagicKing,scores={SelectJum=10}] at @s run function main:pvp/magicking/spell/chaos/prepare

#持続entity
execute as @e[tag=MKWaterWall] at @s run function main:pvp/magicking/spell/water/wall_tick
execute as @e[tag=MKFlameMarker] at @s run function main:pvp/magicking/spell/flame/tick
execute as @e[tag=MKIceMarker] at @s run function main:pvp/magicking/spell/ice/tick
execute as @e[tag=MKWindBurst,scores={MKTimer=-1}] at @s run function main:pvp/magicking/spell/wind/cleanup_burst
scoreboard players remove @e[tag=MKWindBurst,scores={MKTimer=1..}] MKTimer 1
execute as @e[tag=MKWindBurst,scores={MKTimer=0}] at @s run function main:pvp/magicking/spell/wind/move_burst

#混沌の一時attribute
scoreboard players remove @a[scores={MKGravityTime=1..}] MKGravityTime 1
execute as @a[scores={MKGravityTime=0,MKGravityOld=1..}] run function main:pvp/magicking/util/restore_gravity
scoreboard players remove @a[scores={MKScaleTime=1..}] MKScaleTime 1
execute as @a[scores={MKScaleTime=0,MKScaleOld=1..}] run function main:pvp/magicking/util/restore_scale
