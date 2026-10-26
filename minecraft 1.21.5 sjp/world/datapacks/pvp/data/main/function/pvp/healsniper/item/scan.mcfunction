#実行者：新しく出たアイテム。回復スナイパーの装備なら消す（捨てても手元に戻る）
tag @s add HsChk
execute if items entity @s contents *[minecraft:custom_data~{hs_item:1b}] run kill @s
