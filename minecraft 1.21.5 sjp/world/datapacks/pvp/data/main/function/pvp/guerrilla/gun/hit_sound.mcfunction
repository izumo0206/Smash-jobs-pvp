#命中音（1回の射撃につき1回。撃った本人の位置で鳴らすので遠くでも聞こえる）
scoreboard players set #hitsnd GuCalc 1
$execute as @a[tag=GuShooter] at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.5 $(hit_pitch)
$execute as @a[tag=GuShooter] at @s run playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 0.8 $(hit_pitch)
