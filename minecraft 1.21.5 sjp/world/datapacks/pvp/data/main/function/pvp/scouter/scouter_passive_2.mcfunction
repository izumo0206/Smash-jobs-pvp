#スカウター パッシブ2


#スカウターパッシブ
effect give @a[tag=Scouter,scores={sneak=0,ScouterCooldown=..1},nbt={SelectedItem:{id:"minecraft:netherite_hoe"}}] minecraft:strength 1 2 true
#execute if predicate main:nighttime run effect give @a[tag=Scouter,scores={sneak=0,ScouterCooldown=..1},nbt={SelectedItem:{id:"minecraft:netherite_hoe"}}] minecraft:strength 1 2 true


execute at @a[tag=Scouter,scores={ScouterSickle=1..}] run playsound minecraft:entity.blaze.hurt master @p ~ ~ ~ 1

#クールタイム
execute as @a[tag=Scouter,scores={ScouterSickle=1..}] run scoreboard players set @a[tag=Scouter] ScouterCooldown 120
#execute if predicate main:daytime run scoreboard players set @a[tag=Scouter] ScouterCooldown 200


execute as @a[tag=Scouter,scores={ScouterSickle=1..}] run effect clear @a[tag=Scouter] minecraft:strength

#スニーク消す
execute as @a[tag=Scouter,scores={ScouterSickle=1..}] run scoreboard players set @a[tag=Scouter] ScouterSickle 0