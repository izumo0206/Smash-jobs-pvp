#上下視線を除いた東西南北方向を基準に、描画地点を中心として横41×高さ6の壁を作る
execute as @e[tag=DuskArmorStand2,scores={Wall=0}] at @s run fill ^-20 ^ ^ ^20 ^5 ^ minecraft:lime_stained_glass_pane keep
scoreboard players set @e[tag=DuskArmorStand2,scores={Wall=0}] Wall 1
