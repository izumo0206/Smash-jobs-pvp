# テキストディスプレイ召喚
# Player引数はスコア取得のためにスコアセレクタ内で使う
$execute at @e[tag=HoloAnchor,limit=1,sort=nearest] run summon text_display ~ ~ ~ {Tags:["StatsHologram"],billboard:"center",background:2130706432,text:'[{"text":"$(JobName): ","color":"aqua"},{"score":{"name":"$(Player)","objective":"JobWin_$(JobName)"},"color":"white"},{"text":" / ","color":"gray"},{"score":{"name":"$(Player)","objective":"JobPlay_$(JobName)"},"color":"white"}]'}

# アンカーを下げる
execute at @e[tag=HoloAnchor,limit=1,sort=nearest] as @s run tp @s ~ ~-0.25 ~
