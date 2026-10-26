#実行者：ゲリラ兵の攻撃を受けた敵。アシスト時間を設定し、位置を記録する（ダメージ前に呼ぶ）
$scoreboard players set @s GuAssist $(assist)
function main:pvp/guerrilla/death/store_pos
