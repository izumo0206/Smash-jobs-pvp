#実行者：死亡したプレイヤー。眠り・ナノブースト・回復を解除する
scoreboard players set @s HsDeath 0
execute if entity @s[tag=HsSleeping] run function main:pvp/healsniper/dart/wake
execute if score @s HsNano matches 1.. run function main:pvp/healsniper/nano/end
scoreboard players set @s HsHeal 0
#回復スナイパー自身：ズーム解除と弾の補充（クールダウンはそのまま）
execute if entity @s[tag=HealSniper] run function main:pvp/healsniper/death/self
