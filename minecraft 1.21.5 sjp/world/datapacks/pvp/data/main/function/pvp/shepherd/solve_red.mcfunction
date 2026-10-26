# 1. 安全タグのリセット
tag @e[type=sheep,tag=shepherd_sheep,team=Red] remove safe

# 2. 若い順に3匹選んで safe タグをつける
function main:pvp/shepherd/find_youngest_red
function main:pvp/shepherd/find_youngest_red
function main:pvp/shepherd/find_youngest_red

# 3. 選抜漏れを処分
# 「safeタグがない」 かつ 「new_sheep(新入り)でもない」 羊だけを殺す
kill @e[type=sheep,tag=shepherd_sheep,team=Red,tag=!safe,tag=!new_sheep]