#タグ付け
execute as @a[tag=Bow,scores={sneak=300..}] run tag @s add ChargeShot


#プレイサウンド
execute at @a[tag=ChargeShot] run playsound minecraft:block.anvil.use master @p ~ ~ ~ 0.8 0.5
execute at @a[tag=ChargeShot] run particle minecraft:crit ~ ~ ~ 1 1 1 1 500 normal


#弓取り上げ
execute as @a[tag=ChargeShot] run clear @a[tag=ChargeShot] minecraft:bow

#エフェクト付与
execute as @a[tag=ChargeShot] run effect give @e[tag=ChargeShot] minecraft:speed 5 2
execute at @a[tag=ChargeShot,team=Red] run effect give @e[team=Bule,distance=..6] minecraft:glowing 5 2
execute at @a[tag=ChargeShot,team=Blue] run effect give @e[team=Red,distance=..6] minecraft:glowing 5 2

#弓配布
execute as @a[tag=ChargeShot] run give @s minecraft:bow[custom_name="チャージショット",enchantments={"power":18,"infinity":1},lore=["研ぎ澄まされた一撃"],unbreakable={}]

#仕上げ
schedule function main:pvp/bow/chargeshot_sub 100
scoreboard players set @a[tag=ChargeShot] sneak 0
tag @a[tag=ChargeShot] remove ChargeShot