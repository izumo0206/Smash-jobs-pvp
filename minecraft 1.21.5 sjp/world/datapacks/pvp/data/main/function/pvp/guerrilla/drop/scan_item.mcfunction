#実行者：新しく出たアイテム。ゲリラ兵の装備（ドロップ品以外）なら消す
tag @s add GuChk
execute if entity @s[tag=!GuDrop] if items entity @s contents *[minecraft:custom_data~{gu_item:1b}] run kill @s
