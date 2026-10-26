#スポーン場所

execute at @e[tag=FirstContact] run execute if entity @a[distance=..2] as @a[distance=..2] run function main:first/first_sub
execute if entity @a[tag=First] as @a[tag=First] run function main:first/first_title