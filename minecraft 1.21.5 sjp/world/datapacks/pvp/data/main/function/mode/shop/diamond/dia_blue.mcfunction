#コインゲート回収カウント

#カウントダウン
execute if score @s diamond matches 20 run playsound minecraft:block.anvil.place master @s ~ ~ ~ 0.5 2 1
execute if score @s diamond matches 20 run title @s title "4"
execute if score @s diamond matches 40 run playsound minecraft:block.anvil.place master @s ~ ~ ~ 0.5 2 1
execute if score @s diamond matches 40 run title @s title "3"
execute if score @s diamond matches 60 run playsound minecraft:block.anvil.place master @s ~ ~ ~ 0.5 2 1
execute if score @s diamond matches 60 run title @s title "2"
execute if score @s diamond matches 80 run playsound minecraft:block.anvil.place master @s ~ ~ ~ 0.5 2 1
execute if score @s diamond matches 80 run title @s title "1"

#回収完了
execute if score @s diamond matches 100.. run function main:mode/shop/diamond/gate/capture/blue

#スニークのリセット
scoreboard players set @s sneak2 0
