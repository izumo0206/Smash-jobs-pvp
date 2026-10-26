scoreboard players add @s GuSkull 1
#ボーナス：頭蓋骨を拾うごとにカロリーメイト（金リンゴ）
give @s minecraft:golden_apple[custom_name={text:"カロリーメイト",color:"yellow",italic:false},lore=[{text:"頭蓋骨を拾うたびにもらえる",color:"white",italic:false},{text:"▶ 右クリック長押し：食べて回復",color:"gray",italic:false}],custom_data={gu_item:1b}] 1
playsound minecraft:entity.skeleton.ambient player @a ~ ~ ~ 1 0.6
tellraw @s [{text:"頭蓋骨を回収した（",color:"gray"},{score:{name:"@s",objective:"GuSkull"},color:"white"},{text:"個）",color:"gray"}]
function main:pvp/guerrilla/reward/check
