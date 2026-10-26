#花火回収


#画面表示
execute if entity @a[tag=Birdman] as @a[tag=Birdman] run title @s actionbar [{"text":"花火回収 ct:200 cd:400 ","color":"dark_gray"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"},{"text":"   CD:  ","color":"black"},{"score":{"name":"*","objective":"BirdmanCooldown"},"color":"dark_purple"}]

#花火回収実行
execute as @a[tag=Birdman,scores={BirdmanCooldown=..0,sneak=200..}] run function main:pvp/birdman/birdman_allow_sub