#ピースキーパー
scoreboard players remove @a[tag=Musician,scores={musicianCD=1..}] musicianCD 1

#アイテム
item replace entity @a[tag=Musician] container.2 with minecraft:music_disc_chirp{display:{Name:'{"text":"ヴィヴァーチェ"}',Lore:['{"text":"いきいきと、活気に満ちた"}']}}
item replace entity @a[tag=Musician] container.3 with minecraft:music_disc_far{display:{Name:'{"text":"ドルチェ"}',Lore:['{"text":"優しく、柔らかく"}']}}
item replace entity @a[tag=Musician] container.4 with minecraft:music_disc_relic{display:{Name:'{"text":"グランディオーソ"}',Lore:['{"text":"壮大に、堂々と"}']}}
kill @e[type=item,nbt={Item:{id:"minecraft:music_disc_chirp"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:music_disc_far"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:music_disc_relic"}}]

#スキル
#画面表示
execute if entity @a[tag=Musician] as @a[tag=Musician] run title @s actionbar [{"text":"ムードチェンジ","color":"dark_gray"},{"text":"   CD:  ","color":"black"},{"score":{"name":"*","objective":"musicianCD"},"color":"dark_purple"}]


#ヴィヴァーチェ
execute as @a[tag=Musician,scores={Vivace=1..,musicianCD=..0}] at @s run function main:pvp/musician/vivace
#ドルチェ
execute as @a[tag=Musician,scores={Dolce=1..,musicianCD=..0}] at @s run function main:pvp/musician/dolce
#グランディオーソ
execute as @a[tag=Musician,scores={Grandioso=1..,musicianCD=..0}] at @s run function main:pvp/musician/grandioso

#ムードオーラ
#パーティクル
execute as @a[tag=Vivace] at @s run particle dust_color_transition 0.03 0.1 0.64 1 0.04 0.78 0.93 ~ ~1 ~ 0 0 0 0 1