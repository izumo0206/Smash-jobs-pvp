#死亡処理（リスポーン時に残弾・クールダウン全回復）
execute if score @s RcDeath matches 1.. run function main:pvp/ruciano/on_death

#連射クールダウン減算
scoreboard players remove @s[scores={RcCool=1..}] RcCool 1

#移動距離計測（拡散計算用）
scoreboard players operation @s RcMove = @s RcWalk
scoreboard players operation @s RcMove += @s RcSprint
scoreboard players operation @s RcMove += @s RcCrouchM
scoreboard players set @s RcWalk 0
scoreboard players set @s RcSprint 0
scoreboard players set @s RcCrouchM 0

#リロード処理
execute if score @s RcReload matches 1.. run function main:pvp/ruciano/gun/reload_tick

#右クリック入力処理（「光」を持っているときのみ）
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{rc:"rv"}] if score @s RcUse matches 1.. unless score @s RcReload matches 1.. if score @s RcAmmo matches ..0 run function main:pvp/ruciano/gun/reload
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{rc:"rv"}] if score @s RcUse matches 1.. unless score @s RcCool matches 1.. unless score @s RcReload matches 1.. if score @s RcAmmo matches 1.. run function main:pvp/ruciano/gun/fire
scoreboard players set @s RcUse 0

#HUD表示（アクションバー）
function main:pvp/ruciano/hud
