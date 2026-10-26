#ゲーム終了

#ステージ3～7 共通開始処理の停止と、次試合用の開始済み状態解除
execute if data storage main:stage_start {configured:1b} run function main:stage/common_start/reset
data remove storage main:stage_start running

#魔王の設置ブロックと一時attributeを先に復元
execute if data storage main:magicking {setup:1b} run function main:pvp/magicking/reset_world
#上級ゲリラ兵の召喚物・ドロップ品・表示を削除
execute if data storage main:guerrilla {setup:1b} run function main:pvp/guerrilla/reset_world
#回復スナイパーの召喚物・付与した状態を解除
execute if data storage main:healsniper {setup:1b} run function main:pvp/healsniper/reset_world

#ジョブ能力によるエンティティと設置ブロックの削除
function main:pvp/dusk/reset
kill @e[tag=MTentity]

#MTentity導入前に召喚されたジョブエンティティも削除
kill @e[tag=Wolf]
kill @e[tag=Ryu]
kill @e[tag=shepherd_sheep]
kill @e[tag=trap]
kill @e[tag=PoisonSinged]

#ステージリセット
#コインゲートの進捗・クールダウンを次試合用に初期化
scoreboard players set @a diamond 0
execute if data storage main:shop_gate {setup:1b} run function main:mode/shop/diamond/gate/reset
execute if data storage main:shop_console {setup:1b} run function main:mode/shop/console/reset_match

#ステージ1
execute if score ステージ決め StageSetting matches 1 run function main:stage/stage_reset_debug
execute if score ステージ決め StageSetting matches 1 run function main:stage/stage_set
#ステージ2
execute if score ステージ決め StageSetting matches 2 run function main:stage/stage2_reset_debug
execute if score ステージ決め StageSetting matches 2 run function main:stage/stage_set2

#スニークを0にする 暴発防止
scoreboard players set @a sneak 0

#チーム離脱
team leave @a

#ゲーム中剥奪
scoreboard players set @a NumberOfPlayer 0
#青チームゲームプレイヤー
scoreboard players set 青チーム NumberOfPlayer 0
#赤チームゲームプレイヤー
scoreboard players set 赤チーム NumberOfPlayer 0
#プレイヤーの人数
scoreboard players set プレイヤーの人数 NumberOfPlayer 0
#終了合意人数
scoreboard players set 終了合意人数 NumberOfPlayer 0
#終了合意判定
scoreboard players set 終了合意判定 NumberOfPlayer 0
#終了合意のタグ消し
tag @a remove agreement
#降参同意のタグ消し
tag @a remove Surrender
#簡易2vs2観戦者のタグ消し
tag @a remove TeamSetSpectator


#タグ消し
tag @a remove Sword
tag @a remove Wizard
tag @a remove Scouter
tag @a remove Bow
tag @a remove Pirate
tag @a remove Pirate2
tag @a remove Assist
tag @a remove Assist2
tag @a remove Beasttamer
tag @a remove Isaac
tag @a remove Kirito
tag @a remove Herobrine
tag @a remove Birdman
tag @a remove Ashe
tag @a remove Bomber
tag @a remove Hunter
tag @a remove Guardian
tag @a remove SwordMaster
execute as @a[tag=Ruciano] at @s run function main:pvp/ruciano/reset_player
tag @a remove Ruciano
tag @a remove Singed
tag @a remove ScouterBow
tag @a remove Trapper
tag @a remove Thor
tag @a remove Peacekeeper
execute as @a[tag=MagicKing] at @s run function main:pvp/magicking/reset_player
execute as @a[tag=Guerrilla] at @s run function main:pvp/guerrilla/reset_player
execute as @a[tag=HealSniper] at @s run function main:pvp/healsniper/reset_player
function main:job_selection/tag_reset


#アイテムクリア
clear @a

#ステータスリセット
execute as @a at @s run function main:job_selection/set/state_reset

#スペクテイターモード
gamemode spectator @a
#制限時間セット
scoreboard players set @a FinishTime 1200

scoreboard players set @a win 0


#一応レッドストーンブロック外す
#時間終了
execute as @e[tag=CentralControlSystem] at @s run setblock ~ ~ ~3 air
#チケット演算終了
execute as @e[tag=CentralControlSystem] at @s run setblock ~1 ~ ~3 air



#レッドストーンブロックセット
execute as @e[tag=CentralControlSystem] at @s run setblock ~2 ~ ~1 minecraft:redstone_block

#味方の場所柱消去
setblock 10020 316 10013 air
