# ソート済みと未ソートが同じ文字列かを確認する
data modify storage tasx: var.compare set from storage tasx: var.sorted
execute store success storage tasx: var.gt byte 1 run data modify storage tasx: var.compare set from storage tasx: var.unsorted

# execute if data storage tasx: var{time_differ:0b} run tellraw @a {"storage":"tasx:","nbt":"var.string_concat"}
# execute if data storage tasx: var{time_differ:0b} run tellraw @a {"storage":"tasx:","nbt":"var.split_concat"}
# execute if data storage tasx: var{time_differ:0b} run tellraw @a {"storage":"tasx:","nbt":"var.gt"}


# tellraw @a [{"storage":"tasx:","nbt":"var.gt"},{"storage":"tasx:","nbt":"var.split[-1]"}]

# 次に比較する文字を決定する
# 上書きが成功(splitのほうが大きい)
execute if data storage tasx: var{gt:1b} run function txstr:core/charset/bottom_half

# 上書きが失敗(splitのほうが小さい)
execute if data storage tasx: var{gt:0b} run function txstr:core/charset/top_half

# tellraw @a [{"storage":"tasx:","nbt":"var.gt"},{"storage":"tasx:","nbt":"var.split[-1]"}]