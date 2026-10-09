#銃のダメージ（実行者：撃たれた相手）。引数：amount ダメージ / type ダメージタイプ / src 撃った人のtag
#  通常のダメージ。ノックバックなし（#minecraft:no_knockback）・防具貫通（#minecraft:bypasses_armor）
#  ※撃たれた側の画面の揺れ・赤いフラッシュ・被弾音は、Minecraftの仕様でダメージを与えると必ず出る
#撃った側の手ごたえ：ヒットマーカー（撃った本人にだけ表示）
$execute as @a[tag=$(src),limit=1] at @s run function main:pvp/silent_damage/hitmarker
$damage @s $(amount) $(type) by @a[tag=$(src),limit=1]
#倒したら：キルの印とキル音（撃った本人にだけ）
execute store result score #h SdCalc run data get entity @s Health 100
$execute if score #h SdCalc matches ..0 as @a[tag=$(src),limit=1] at @s run function main:pvp/silent_damage/killmarker
