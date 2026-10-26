#スカウターライト モブは光らない
#タグ付け
execute as @a[tag=Scouter,scores={ScouterSickle=1..}] run tag @s add ScouterLight

#発光付与
execute at @a[tag=ScouterLight] run effect give @a[tag=!ScouterLight,scores={dameged=1..},sort=nearest,distance=0..5,limit=1] minecraft:glowing 40 1


#終了

scoreboard players set @a[tag=ScouterLight] ScouterSickle 0
tag @a[tag=ScouterLight] remove ScouterLight