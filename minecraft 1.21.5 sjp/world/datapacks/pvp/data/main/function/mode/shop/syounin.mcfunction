#村人取引からコンソール式ショップへ移行したため、既存ショップ地点の商人だけを除去する
function main:mode/shop/console/cleanup_villagers

#旧召喚フラグを消費する
scoreboard players set ステージ決め shop 0
