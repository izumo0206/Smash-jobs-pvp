tellraw @s {text:'================================',color:'dark_gray'}
tellraw @s {text:'◆ ショップコンソール ◆',color:'gold',bold:1b}
tellraw @s [{text:'所持コイン: ',color:'yellow'},{score:{name:'@s',objective:'ShopCoin'},color:'white',bold:1b}]
tellraw @s {text:'【共通商品】',color:'aqua',bold:1b}
function main:mode/shop/console/ui/entry {id:1,name:'治癒のポーション',amount:1,price:1,detail:'即時回復Ⅱ'}
function main:mode/shop/console/ui/entry {id:2,name:'金のリンゴ',amount:1,price:2,detail:'普通の金のリンゴ'}
function main:mode/shop/console/ui/entry {id:3,name:'コモンシールド',amount:1,price:5,detail:'普通の盾'}
function main:mode/shop/console/ui/entry {id:4,name:'魔力瓶',amount:2,price:2,detail:'使用するとMPを100回復。雷神は10、エルフは合計300回復'}
function main:mode/shop/console/ui/entry {id:25,name:'チケット破壊装置',amount:1,price:15,detail:'右クリックで相手チームのチケットを1減らす（チケット有効時）'}
execute if score ステージ決め StageSetting matches 1 run function main:mode/shop/console/ui/stage/1
execute if score ステージ決め StageSetting matches 2 run function main:mode/shop/console/ui/stage/2
execute if score ステージ決め StageSetting matches 3 run function main:mode/shop/console/ui/stage/3
execute if score ステージ決め StageSetting matches 4 run function main:mode/shop/console/ui/stage/4
execute if score ステージ決め StageSetting matches 5 run function main:mode/shop/console/ui/stage/5
execute if score ステージ決め StageSetting matches 6 run function main:mode/shop/console/ui/stage/6
execute if score ステージ決め StageSetting matches 7 run function main:mode/shop/console/ui/stage/7
tellraw @s {text:'================================',color:'dark_gray'}
