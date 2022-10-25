# 中央に分割する

# 中央値を計算
scoreboard players operation $n txstr = $l txstr
scoreboard players operation $n txstr += $r txstr
scoreboard players operation $n txstr /= #2 txstr

execute if score $m txstr > $n txstr run function txstr:core/charset/middle.forward
execute if score $m txstr < $n txstr run function txstr:core/charset/middle.backward

# 要素を変更
data modify storage txstr env.split[-1] set from storage txstr charset.forward[-1]

# l=mで探索終了(探索時の次の文字が答えとなる)
execute store success storage txstr loop.search_end byte 1 if score $l txstr = $m txstr

# tellraw @a {"nbt":"env.charset","storage": "txstr"}
