execute if entity @a[tag=Bow] as @a[tag=Bow] run title @s actionbar [{"text":"チャージショット ct:300 ","color":"aqua"},{"text":"   CT:  ","color":"black"},{"score":{"name":"*","objective":"sneak"},"color":"dark_purple"}]


execute as @a[tag=Bow,scores={sneak=300..}] run function main:pvp/bow/chargeshot

execute as @a[tag=Bow] run function main:pvp/bow/spectral_arrow