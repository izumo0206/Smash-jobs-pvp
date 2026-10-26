#爆撃要請（望遠鏡）。使える回数は config の param.bombbow.uses
give @s minecraft:spyglass[custom_name={text:"爆撃要請（望遠鏡）",color:"gold",italic:false},custom_data={gu:"bombscope",gu_item:1b,gu_loot:1b},enchantment_glint_override=true,lore=[{text:"支給品：頭蓋骨3個",color:"white",italic:false},{text:"▶ 右クリック長押し：望遠鏡で爆撃地点を狙う（赤い印が出る）",color:"gray",italic:false},{text:"▶ 離した瞬間、見ていた地点に警告の後で爆撃が続けて落ちる",color:"gray",italic:false},{text:"▶ 決められた回数だけ使える",color:"gray",italic:false},{text:"死亡すると失う",color:"red",italic:false}]] 1
execute store result score @s GuBombUse run data get storage main:guerrilla param.bombbow.uses
