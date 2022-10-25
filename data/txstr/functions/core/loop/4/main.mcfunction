
# ソート済みと未ソートが同じ文字列かを確認する
data modify storage txstr loop.compare set from block 29999985 1 43381 LastOutput
execute store success storage txstr loop.gt byte 1 run data modify storage txstr loop.compare set from block 29999985 0 43381 LastOutput

# 次に比較する文字を決定する
# 上書きが成功(splitのほうが大きい)
execute if data storage txstr loop{gt:1b} run function txstr:core/charset/bottom_half
# 上書きが失敗(splitのほうが小さい)
execute if data storage txstr loop{gt:0b} run function txstr:core/charset/top_half

data modify storage txstr continue set value 1b
execute if data storage txstr loop{search_end:1b} run function txstr:core/loop/4/find

# 探索済みでない場合1に戻る
execute if data storage txstr loop{search_end:0b} run function txstr:core/loop/1/
