#縫世

#画面表示は main:pvp/ruciano/hud で行う


#時計配布
execute as @a[tag=Ruciano,scores={sneak=1000..}] run give @s minecraft:clock[custom_name="ストップウォッチ",enchantment_glint_override=true,lore=["時よ。止まれ。"]]

#タグ付け
execute as @a[tag=Ruciano,scores={sneak=1000..}] run tag @s add RucianoHs

execute as @a[tag=Ruciano,scores={sneak=1000..}] run scoreboard players set @a[tag=Ruciano,scores={sneak=1000..}] sneak 0