#プレイヤーごとの処理（射撃・リロード・HUD表示）
execute as @a[tag=Ruciano] at @s run function main:pvp/ruciano/player_tick

#逢瀬
execute if entity @a[tag=Ruciano] run function main:pvp/ruciano/ruciano_hs


#逢瀬
execute if entity @a[tag=Ruciano,scores={Stopwatch=1..}] run function main:pvp/ruciano/ruciano_hs_sub

#パッシブ
execute as @a[tag=RucianoHs] run effect give @a[tag=RucianoHs] minecraft:glowing 1 1 true