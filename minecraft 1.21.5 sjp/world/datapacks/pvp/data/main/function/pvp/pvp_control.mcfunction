#ほんの少しでも軽量化を図る
#プレイヤーの職種の種類が少ないときに非常に有効

#空腹度
function main:pvp/food/food

#パッシブエフェクト
#function main:pvp/effect

#剣士
execute if entity @a[tag=Sword] run function main:pvp/sword/sword
#弓兵
execute if entity @a[tag=Bow] run function main:pvp/bow/bow
#海賊
execute if entity @a[tag=Pirate] run function main:pvp/pirate/pirate
#海賊2
execute if entity @a[tag=Pirate2] run function main:pvp/pirate2/pirate2
#魔法使い（魔王は専用処理へ分離）
execute if entity @a[tag=Wizard,tag=!MagicKing] run function main:pvp/wizard/wizard
#魔王
execute if entity @a[tag=MagicKing] run function main:pvp/magicking/main
#アシスト
execute if entity @a[tag=Assist] run function main:pvp/assist/assist
#アシスト2
execute if entity @a[tag=Assist2] run function main:pvp/assist2/assist
#スカウター
execute if entity @a[tag=Scouter] run function main:pvp/scouter/scouter
#隠密弓兵
execute if entity @a[tag=ScouterBow] run function main:pvp/scouterbow/scouterbow
#観察者
execute if entity @a[tag=Kansatusya] run function main:pvp/audience/audience
#ビーストテイマー
execute if entity @a[tag=Beasttamer] run function main:pvp/beasttamer/beasttamer
#ハンター
execute if entity @a[tag=Hunter] run function main:pvp/hunter/hunter
#ザック
execute if entity @a[tag=Isaac] run function main:pvp/isaac/isaac
#へロブライン
execute if entity @a[tag=Herobrine] run function main:pvp/herobrine/herobrine
#アッシュ
execute if entity @a[tag=Ashe] run function main:pvp/ashe/ashe
#バードマン
execute if entity @a[tag=Birdman] run function main:pvp/birdman/birdman
#ボンバー
execute if entity @a[tag=Bomber] run function main:pvp/bomber/bomber
#キリト
execute if entity @a[tag=Kirito] run function main:pvp/kirito/kirito
#ガーディアン
execute if entity @a[tag=Guardian] run function main:pvp/guardian/guardian
#ルチアーノ
execute if entity @a[tag=Ruciano] run function main:pvp/ruciano/ruciano
#シンジド
execute if entity @a[tag=Singed] run function main:pvp/singed/singed
#トラッパー
execute if entity @a[tag=Trapper] run function main:pvp/trapper/trapper
#雷神
execute if entity @a[tag=Thor] run function main:pvp/thor/thor
#画家
execute if entity @a[tag=Dusk] run function main:pvp/dusk/dusk
#ピースキーパー
execute if entity @a[tag=Peacekeeper] run function main:pvp/peacekeeper/peacekeeper
#逃亡者
execute if entity @a[tag=Escaper] run function main:pvp/escaper/escaper
#キラー
execute if entity @a[tag=Killer] run function main:pvp/killer/killer
#エルフ
execute if entity @a[tag=Elf] run function main:pvp/elf/elf
#プロトタイプ
execute if entity @a[tag=Prototype] run function main:pvp/prototype/prototype
#ゾンビ狼
execute if entity @a[tag=Zwolf] run function main:pvp/zwolf/zwolf
#レイス
execute if entity @a[tag=Wraith] run function main:pvp/wraith/wraith
#音楽家
execute if entity @a[tag=Musician] run function main:pvp/musician/musician
#異端者
execute if entity @a[tag=Heretic] run function main:pvp/heretic/heretic
#ポセイドン
execute if entity @a[tag=Poseidon] run function main:pvp/poseidon/poseidon
#羊飼い
execute if entity @a[tag=Shepherd] run function main:pvp/shepherd/shepherd
#上級ゲリラ兵
execute if entity @a[tag=Guerrilla] run function main:pvp/guerrilla/guerrilla
#回復スナイパー
execute if entity @a[tag=HealSniper] run function main:pvp/healsniper/healsniper
