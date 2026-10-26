# ホログラム表示開始

# プレイヤー名を取得してマクロに渡すための準備などは、呼び出し元でやるか、ここでやるか。
# 名前セレクタが使えるマクロ引数はそのまま使える。
# 呼び出し: execute as @p run function main:stats/hologram/show

# 1. ヘッダー表示
# 目の前3マス
# 1. ヘッダー表示
# 目の前3マス
summon text_display ^ ^ ^3 {Tags:["StatsHologram","StatsHeader"],billboard:"center",background:2130706432,text:"========== 戦績 =========="}

# 2. アンカー設置 (ヘッダーの少し下)
summon marker ^ ^-0.3 ^3 {Tags:["HoloAnchor"]}

# 3. ジョブ反復 (セレクト)
# プレイヤー名を文字列として取得するのは1.21.5なら selector expansion が使える
# $(Player) に @s を入れるとスコア表示でバグるため、@p (一番近いプレイヤー=自分) を使う
function main:stats/hologram/iterate_jobs_macro {Player:"@p"}

# 4. アンカー削除
kill @e[tag=HoloAnchor,distance=..5]

# 5. 15秒後に削除 (タグづけされたエンティティを一括削除)
schedule function main:stats/hologram/remove 15s
