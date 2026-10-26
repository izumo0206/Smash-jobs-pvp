#アクションバー表示（実行者：死神）
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{rc:"rv"}] if score @s RcReload matches 1.. run return run title @s actionbar [{text:"光 ",color:"gold"},{text:"[リロード中...]",color:"yellow"},{text:"  |  束の間の幻影 ",color:"dark_gray"},{score:{name:"@s",objective:"sneak"},color:"dark_purple"},{text:"/1000",color:"gray"}]
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{rc:"rv"}] run return run title @s actionbar [{text:"光 ",color:"gold"},{score:{name:"@s",objective:"RcAmmo"},color:"white"},{text:"/8",color:"gray"},{text:"  |  束の間の幻影 ",color:"dark_gray"},{score:{name:"@s",objective:"sneak"},color:"dark_purple"},{text:"/1000",color:"gray"}]

#銃を持っていないときは従来の表示
title @s actionbar [{"text":"束の間の幻影 ct:1000 ","color":"dark_gray"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"}]
