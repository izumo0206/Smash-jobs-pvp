#参加者だけが準備確認用triggerを使用できる
scoreboard players enable @a[tag=StageStartParticipant] StageReady

#各チームで最初に押したプレイヤーの入力を採用
execute if score #state StageStartCtrl matches 1 as @a[tag=StageStartParticipant,team=Red,scores={StageReady=1}] if score #redReady StageStartCtrl matches 0 run function main:stage/common_start/ready/red
execute if score #state StageStartCtrl matches 1 as @a[tag=StageStartParticipant,team=Blue,scores={StageReady=1}] if score #blueReady StageStartCtrl matches 0 run function main:stage/common_start/ready/blue
execute if score #state StageStartCtrl matches 1 as @a[tag=StageStartParticipant,team=Red,scores={StageReady=2}] if score #redReady StageStartCtrl matches 1 run function main:stage/common_start/cancel/red
execute if score #state StageStartCtrl matches 1 as @a[tag=StageStartParticipant,team=Blue,scores={StageReady=2}] if score #blueReady StageStartCtrl matches 1 run function main:stage/common_start/cancel/blue

#入力していないプレイヤーのtrigger有効状態は維持する
scoreboard players reset @a[tag=StageStartParticipant,scores={StageReady=1..}] StageReady
