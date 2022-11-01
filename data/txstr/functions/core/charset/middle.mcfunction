# 選択要素をlとrの中心に移動

# スコアに代入
execute store result score $l txstr run data get storage tasx: var.char.l
execute store result score $m txstr run data get storage tasx: var.char.m
execute store result score $r txstr run data get storage tasx: var.char.r

# 中央値を計算
scoreboard players operation $n txstr = $l txstr
scoreboard players operation $n txstr += $r txstr
scoreboard players operation $n txstr /= #2 txstr


execute if score $m txstr > $n txstr run function txstr:core/charset/middle.forward
execute if score $m txstr < $n txstr run function txstr:core/charset/middle.backward

# 要素を変更
data modify storage tasx: var.split[-1] set from storage tasx: var.char.forward[-1]

# l=mで探索終了(探索時の次の文字が答えとなる)
execute store success storage tasx: var.found byte 1 if score $l txstr = $m txstr

# tellraw @a [{ "score": { "name": "$l","objective": "txstr"}},{ "score": { "name": "$m","objective": "txstr"}},{ "score": { "name": "$r","objective": "txstr"}}]

execute store result storage tasx: var.char.m int 1 run scoreboard players get $m txstr
