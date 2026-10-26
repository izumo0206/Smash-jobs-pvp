#実行者：大規模爆風爆弾で倒れる敵プレイヤー
execute at @s run particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1 force @a
execute if entity @a[tag=GuSrc] run damage @s 100000 main:gu_nuke by @a[tag=GuSrc,limit=1]
execute unless entity @a[tag=GuSrc] run damage @s 100000 main:gu_nuke
