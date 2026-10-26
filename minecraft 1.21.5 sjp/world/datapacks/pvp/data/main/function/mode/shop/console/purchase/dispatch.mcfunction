#チャットに残った古い購入ボタンから別ステージ商品を買えないよう、現在ステージも検証する
scoreboard players set #valid ShopTmp 0

execute if score @s ShopBuy matches 1 run scoreboard players set #valid ShopTmp 1
execute if score @s ShopBuy matches 1 run function main:mode/shop/console/purchase/buy {id:'01',price:1,name:'治癒のポーション'}
execute if score @s ShopBuy matches 2 run scoreboard players set #valid ShopTmp 1
execute if score @s ShopBuy matches 2 run function main:mode/shop/console/purchase/buy {id:'02',price:2,name:'金のリンゴ'}
execute if score @s ShopBuy matches 3 run scoreboard players set #valid ShopTmp 1
execute if score @s ShopBuy matches 3 run function main:mode/shop/console/purchase/buy {id:'03',price:5,name:'コモンシールド'}
execute if score @s ShopBuy matches 4 run scoreboard players set #valid ShopTmp 1
execute if score @s ShopBuy matches 4 run function main:mode/shop/console/purchase/buy {id:'04',price:2,name:'魔力瓶'}
execute if score @s ShopBuy matches 25 run scoreboard players set #valid ShopTmp 1
execute if score @s ShopBuy matches 25 run function main:mode/shop/console/purchase/buy {id:'25',price:15,name:'チケット破壊装置'}

execute if score @s ShopBuy matches 5 if score ステージ決め StageSetting matches 4 run scoreboard players set #valid ShopTmp 1
execute if score @s ShopBuy matches 5 if score ステージ決め StageSetting matches 4 run function main:mode/shop/console/purchase/buy {id:'05',price:5,name:'タートルメット'}
execute if score @s ShopBuy matches 6 if score ステージ決め StageSetting matches 4 run scoreboard players set #valid ShopTmp 1
execute if score @s ShopBuy matches 6 if score ステージ決め StageSetting matches 4 run function main:mode/shop/console/purchase/buy {id:'06',price:8,name:'影刃'}

execute if score @s ShopBuy matches 7 if score ステージ決め StageSetting matches 1 run scoreboard players set #valid ShopTmp 1
execute if score @s ShopBuy matches 7 if score ステージ決め StageSetting matches 1 run function main:mode/shop/console/purchase/buy {id:'07',price:8,name:'ジャンプブーツ'}
execute if score @s ShopBuy matches 8 if score ステージ決め StageSetting matches 1 run scoreboard players set #valid ShopTmp 1
execute if score @s ShopBuy matches 8 if score ステージ決め StageSetting matches 1 run function main:mode/shop/console/purchase/buy {id:'08',price:3,name:'発光蜜'}

execute if score @s ShopBuy matches 9 if score ステージ決め StageSetting matches 2 run scoreboard players set #valid ShopTmp 1
execute if score @s ShopBuy matches 9 if score ステージ決め StageSetting matches 2 run function main:mode/shop/console/purchase/buy {id:'09',price:8,name:'スポンジブーツ'}
execute if score @s ShopBuy matches 10 if score ステージ決め StageSetting matches 2 run scoreboard players set #valid ShopTmp 1
execute if score @s ShopBuy matches 10 if score ステージ決め StageSetting matches 2 run function main:mode/shop/console/purchase/buy {id:'10',price:8,name:'ファントムソード'}

execute if score @s ShopBuy matches 11 if score ステージ決め StageSetting matches 3 run scoreboard players set #valid ShopTmp 1
execute if score @s ShopBuy matches 11 if score ステージ決め StageSetting matches 3 run function main:mode/shop/console/purchase/buy {id:'11',price:5,name:'タートルメット'}
execute if score @s ShopBuy matches 12 if score ステージ決め StageSetting matches 3 run scoreboard players set #valid ShopTmp 1
execute if score @s ShopBuy matches 12 if score ステージ決め StageSetting matches 3 run function main:mode/shop/console/purchase/buy {id:'12',price:8,name:'ヘビーチェストプレート'}
execute if score @s ShopBuy matches 13 if score ステージ決め StageSetting matches 3 run scoreboard players set #valid ShopTmp 1
execute if score @s ShopBuy matches 13 if score ステージ決め StageSetting matches 3 run function main:mode/shop/console/purchase/buy {id:'13',price:2,name:'エンダーパール'}

execute if score @s ShopBuy matches 14 if score ステージ決め StageSetting matches 5 run scoreboard players set #valid ShopTmp 1
execute if score @s ShopBuy matches 14 if score ステージ決め StageSetting matches 5 run function main:mode/shop/console/purchase/buy {id:'14',price:12,name:'重力の魔石'}
execute if score @s ShopBuy matches 15 if score ステージ決め StageSetting matches 5 run scoreboard players set #valid ShopTmp 1
execute if score @s ShopBuy matches 15 if score ステージ決め StageSetting matches 5 run function main:mode/shop/console/purchase/buy {id:'15',price:8,name:'スポンジブーツ'}
execute if score @s ShopBuy matches 16 if score ステージ決め StageSetting matches 5 run scoreboard players set #valid ShopTmp 1
execute if score @s ShopBuy matches 16 if score ステージ決め StageSetting matches 5 run function main:mode/shop/console/purchase/buy {id:'16',price:5,name:'ブリンク'}

execute if score @s ShopBuy matches 17 if score ステージ決め StageSetting matches 6 run scoreboard players set #valid ShopTmp 1
execute if score @s ShopBuy matches 17 if score ステージ決め StageSetting matches 6 run function main:mode/shop/console/purchase/buy {id:'17',price:10,name:'小人の帽子'}
execute if score @s ShopBuy matches 18 if score ステージ決め StageSetting matches 6 run scoreboard players set #valid ShopTmp 1
execute if score @s ShopBuy matches 18 if score ステージ決め StageSetting matches 6 run function main:mode/shop/console/purchase/buy {id:'18',price:10,name:'俊足'}
execute if score @s ShopBuy matches 19 if score ステージ決め StageSetting matches 6 run scoreboard players set #valid ShopTmp 1
execute if score @s ShopBuy matches 19 if score ステージ決め StageSetting matches 6 run function main:mode/shop/console/purchase/buy {id:'19',price:8,name:'登山家の靴'}
execute if score @s ShopBuy matches 22 if score ステージ決め StageSetting matches 6 run scoreboard players set #valid ShopTmp 1
execute if score @s ShopBuy matches 22 if score ステージ決め StageSetting matches 6 run function main:mode/shop/console/purchase/buy {id:'22',price:1,name:'シュノーケル'}

execute if score @s ShopBuy matches 20 if score ステージ決め StageSetting matches 7 run scoreboard players set #valid ShopTmp 1
execute if score @s ShopBuy matches 20 if score ステージ決め StageSetting matches 7 run function main:mode/shop/console/purchase/buy {id:'20',price:10,name:'ウォーデンのスポーンエッグ'}
execute if score @s ShopBuy matches 21 if score ステージ決め StageSetting matches 7 run scoreboard players set #valid ShopTmp 1
execute if score @s ShopBuy matches 21 if score ステージ決め StageSetting matches 7 run function main:mode/shop/console/purchase/buy {id:'21',price:10,name:'天翔の剣'}
execute if score @s ShopBuy matches 22 if score ステージ決め StageSetting matches 7 run scoreboard players set #valid ShopTmp 1
execute if score @s ShopBuy matches 22 if score ステージ決め StageSetting matches 7 run function main:mode/shop/console/purchase/buy {id:'22',price:1,name:'シュノーケル'}
execute if score @s ShopBuy matches 23 if score ステージ決め StageSetting matches 7 run scoreboard players set #valid ShopTmp 1
execute if score @s ShopBuy matches 23 if score ステージ決め StageSetting matches 7 run function main:mode/shop/console/purchase/buy {id:'23',price:5,name:'暗視ゴーグル'}
execute if score @s ShopBuy matches 24 if score ステージ決め StageSetting matches 7 run scoreboard players set #valid ShopTmp 1
execute if score @s ShopBuy matches 24 if score ステージ決め StageSetting matches 7 run function main:mode/shop/console/purchase/buy {id:'24',price:1,name:'足ヒレ'}

execute if score #valid ShopTmp matches 0 run function main:mode/shop/console/purchase/invalid
