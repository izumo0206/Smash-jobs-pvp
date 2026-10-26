#実行者：落下中の帯電クリーパー。着地したら爆発（5秒で強制爆発）
scoreboard players add @s GuTimer 1
execute if entity @s[nbt={OnGround:1b}] run return run function main:pvp/guerrilla/reward/bomb_explode
execute if score @s GuTimer matches 100.. run function main:pvp/guerrilla/reward/bomb_explode
