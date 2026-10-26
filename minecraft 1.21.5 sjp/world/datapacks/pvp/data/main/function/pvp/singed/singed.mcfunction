#基本
scoreboard players set @a[tag=Singed,scores={walk=1..}] sneak 0
scoreboard players set @a[tag=Singed,scores={dash=1..}] sneak 0
clear @a[tag=Singed] minecraft:glass_bottle

#毒捲き
execute as @a[tag=Singed,scores={walk=100..},nbt={SelectedItem:{id:"minecraft:shield"}}] run function main:pvp/singed/singed_sub
execute as @a[tag=Singed,scores={dash=100..},nbt={SelectedItem:{id:"minecraft:shield"}}] run function main:pvp/singed/singed_sub

#毒捲き効果
execute at @e[tag=BluePoisonSinged] run effect give @e[team=Red,distance=..3] minecraft:poison 4 0 true
execute at @e[tag=RedPoisonSinged] run effect give @e[team=Blue,distance=..3] minecraft:poison 4 0 true
execute at @e[tag=BluePoisonSinged] run effect give @e[team=Red,distance=..3] minecraft:slowness 4 0 true
execute at @e[tag=RedPoisonSinged] run effect give @e[team=Blue,distance=..3] minecraft:slowness 4 0 true

#毒制御
execute as @e[tag=PoisonSinged] run scoreboard players add @s PoisonSinged 1
execute as @e[tag=PoisonSinged,scores={PoisonSinged=60..}] run kill @s

#狂人のポーション（無限湧き）
execute as @a[tag=Singed,scores={potion=1..}] run give @s minecraft:potion[custom_name="狂人のポーション",lore=["筋力増強、骨密度上昇、視力増加、","聴力上昇、伝達速度向上、神経増設。","あとついでに寿命激減！"],potion_contents={"custom_color":744448,"custom_effects":[{"id":"speed","amplifier":0,"duration":200,"show_particles":false},{"id":"strength","amplifier":0,"duration":200},{"id":"regeneration","amplifier":1,"duration":200},{"id":"resistance","amplifier":0,"duration":200}]}]
execute as @a[tag=Singed,scores={potion=1..}] run scoreboard players set @a[tag=Singed,scores={potion=1..}] potion 0