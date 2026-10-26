# 既存の途中状態を消してから、赤青チーム人数でルールを判定する。
function main:job_selection/pick/reset

# 現在の赤青チーム人数を集計
scoreboard players set #redCount PickCtrl 0
scoreboard players set #blueCount PickCtrl 0
execute as @a[team=Red] run scoreboard players add #redCount PickCtrl 1
execute as @a[team=Blue] run scoreboard players add #blueCount PickCtrl 1

# 参加者が一人もいない場合は開始しない
execute unless entity @a[team=Red] unless entity @a[team=Blue] run tellraw @a {"text":"ピックを開始できません。赤または青チームに参加者が必要です。","color":"red"}
execute unless entity @a[team=Red] unless entity @a[team=Blue] run return 0

# 対応人数を超えている場合は、人数不足デバッグとして扱わない
execute if score #redCount PickCtrl matches 4.. run tellraw @a {"text":"ピックを開始できません。赤チームが3人を超えています。","color":"red"}
execute if score #redCount PickCtrl matches 4.. run return 0
execute if score #blueCount PickCtrl matches 4.. run tellraw @a {"text":"ピックを開始できません。青チームが3人を超えています。","color":"red"}
execute if score #blueCount PickCtrl matches 4.. run return 0

# 赤青が各2人なら2vs2、各3人なら3vs3
scoreboard players set #teamSize PickCtrl 0
scoreboard players set #debug PickCtrl 0
execute if score #redCount PickCtrl matches 2 if score #blueCount PickCtrl matches 2 run scoreboard players set #teamSize PickCtrl 2
execute if score #redCount PickCtrl matches 3 if score #blueCount PickCtrl matches 3 run scoreboard players set #teamSize PickCtrl 3

# 上記を満たさない場合だけ、人数不足・人数不均衡デバッグとして3vs3を使用
execute if score #teamSize PickCtrl matches 0 run scoreboard players set #debug PickCtrl 1
execute if score #teamSize PickCtrl matches 0 run scoreboard players set #teamSize PickCtrl 3

# ルール番号: 20=2v2 BANなし、21=2v2 BANあり、30=3v3 BANなし、31=3v3 BANあり
scoreboard players operation #rule PickCtrl = #teamSize PickCtrl
scoreboard players operation #rule PickCtrl *= #10 PickCtrl
scoreboard players operation #rule PickCtrl += #ban PickCtrl

tag @a[team=Red] add PickParticipant
tag @a[team=Blue] add PickParticipant
tag @a[tag=PickParticipant] add PickViewer
tag @a[gamemode=spectator] add PickViewer
tag @a[tag=PickParticipant] add Standbypick
tag @r[tag=PickParticipant] add PickFirst
execute if entity @a[tag=PickFirst,team=Red] run tag @a[team=Red,tag=PickParticipant] add PickTeamA
execute if entity @a[tag=PickFirst,team=Red] run tag @a[team=Blue,tag=PickParticipant] add PickTeamB
execute if entity @a[tag=PickFirst,team=Blue] run tag @a[team=Blue,tag=PickParticipant] add PickTeamA
execute if entity @a[tag=PickFirst,team=Blue] run tag @a[team=Red,tag=PickParticipant] add PickTeamB

function main:job_selection/job_select_reset
function main:job_selection/pick/job_pool/reset
function main:job_selection/pick/job_pool/disable_unimplemented
scoreboard players set @a[tag=PickParticipant] PickJob 0
scoreboard players set @a[tag=PickParticipant] PickAction 0
scoreboard players set #expected PickCtrl 0
execute as @a[tag=PickParticipant] run scoreboard players add #expected PickCtrl 1
scoreboard players set #step PickCtrl 0
scoreboard players set #active PickCtrl 1
data modify storage main:pick active set value 1b
bossbar set main:pick players @a[tag=PickViewer]
bossbar set main:pick visible true
execute if score #debug PickCtrl matches 0 if score #teamSize PickCtrl matches 2 run tellraw @a[tag=PickViewer] {"text":"2vs2のピックフェーズを開始します。","color":"green"}
execute if score #debug PickCtrl matches 0 if score #teamSize PickCtrl matches 3 run tellraw @a[tag=PickViewer] {"text":"3vs3のピックフェーズを開始します。","color":"green"}
execute if score #debug PickCtrl matches 1 run tellraw @a[tag=PickViewer] {"text":"[デバッグ] 人数不足のため、3vs3のピック順で開始します。","color":"aqua"}
execute if entity @a[tag=PickFirst,team=Red] run tellraw @a[tag=PickViewer] [{"text":"ファーストピック：","color":"gold"},{"selector":"@a[tag=PickFirst,limit=1]"},{"text":"（赤チーム）","color":"red"}]
execute if entity @a[tag=PickFirst,team=Blue] run tellraw @a[tag=PickViewer] [{"text":"ファーストピック：","color":"gold"},{"selector":"@a[tag=PickFirst,limit=1]"},{"text":"（青チーム）","color":"blue"}]
function main:job_selection/pick/next
