#試合終了・強制中止・次試合開始時の全リセット
scoreboard players set #red ShopGateCD 0
scoreboard players set #mid ShopGateCD 0
scoreboard players set #blue ShopGateCD 0
scoreboard players set #visualTick ShopGateCD 0
scoreboard players set @a diamond 0
function main:mode/shop/diamond/gate/restore/red
function main:mode/shop/diamond/gate/restore/mid
function main:mode/shop/diamond/gate/restore/blue
