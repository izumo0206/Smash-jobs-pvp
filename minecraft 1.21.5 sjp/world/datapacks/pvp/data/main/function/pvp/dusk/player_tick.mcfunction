#固定スロットへブラシと絵の具を戻す
function main:pvp/dusk/items/ensure

#クールダウン
scoreboard players remove @s[scores={DuskCooldown=1..}] DuskCooldown 1

#前tickの描画地点を破棄
function main:pvp/dusk/draw/clear_target
tag @s remove DuskHasTarget

#移動中・クールダウン中・描画地点がない場合はCTをリセット
execute if score @s walk matches 1.. run scoreboard players set @s DuskCast 0
execute if score @s dash matches 1.. run scoreboard players set @s DuskCast 0
scoreboard players set @s walk 0
scoreboard players set @s dash 0
execute if score @s DuskCooldown matches 1.. run scoreboard players set @s DuskCast 0

#ブラシを持ってブロックを見ている間だけ描画地点を探索
execute if score @s DuskCooldown matches ..0 if items entity @s weapon.mainhand minecraft:brush[minecraft:custom_data~{dusk_brush:1b}] run function main:pvp/dusk/draw/target_start
execute unless entity @s[tag=DuskHasTarget] run scoreboard players set @s DuskCast 0
execute if entity @s[tag=DuskHasTarget] run scoreboard players add @s DuskCast 1

#選択中の絵画
execute if score @s Duskkirikae matches 1 run function main:pvp/dusk/art/duskfortress
execute if score @s Duskkirikae matches 2 run function main:pvp/dusk/art/duskrabbit
execute if score @s Duskkirikae matches 3 run function main:pvp/dusk/art/dusksoldiers
execute if score @s Duskkirikae matches 4 run function main:pvp/dusk/art/duskpiller
execute if score @s Duskkirikae matches 5 run function main:pvp/dusk/art/duskwall
