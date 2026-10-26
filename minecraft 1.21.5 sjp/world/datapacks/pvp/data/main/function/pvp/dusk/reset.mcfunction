#画家の設置ブロックを撤去してから召喚エンティティを削除
execute as @e[tag=DuskArmorStand1] at @s run function main:pvp/dusk/art/duskfortressbuild_sub
execute as @e[tag=DuskArmorStand2] at @s run function main:pvp/dusk/art/duskwallcleanup
execute as @e[tag=DuskArmorStand3] at @s run function main:pvp/dusk/art/duskpillercleanup

#新旧の画家エンティティを削除
kill @e[tag=DuskDrawTarget]
kill @e[tag=DuskRaycast]
kill @e[tag=DuskBrushProjectile]
kill @e[tag=DuskRabbitMob]
kill @e[tag=rabbit]
kill @e[tag=kozizai]
kill @e[tag=gatyuzin]
kill @e[tag=migawari]

#描画中の状態を次試合へ持ち越さない
scoreboard players set @a[tag=Dusk] DuskCast 0
tag @a remove DuskHasTarget
tag @a remove DuskCurrent
tag @a remove DuskFortressExists
tag @e remove DuskCastTarget
tag @e remove DuskNew
tag @e remove DuskNewTarget

#旧仕様の発動中タグも削除
tag @a remove DuskFortress
tag @a remove DuskRabbit
tag @a remove DuskSoldiers
tag @a remove DuskPiller
tag @a remove DuskWall
tag @a remove DuskAtelier
