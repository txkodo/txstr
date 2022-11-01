execute store success storage tasx: var.time_differ byte 1 run data modify storage tasx: var.time set from storage tasx: var.LastOutput

# 開始時刻と終了時刻が違ったらもう一周
execute if data storage tasx: var{time_differ:1b} run function txstr:core/char/5

# execute if data storage tasx: var{time_differ:0b} run tellraw @a {"storage":"tasx:","nbt":"var.string_concat"}
# execute if data storage tasx: var{time_differ:0b} run tellraw @a {"storage":"tasx:","nbt":"var.split_concat"}

# 開始時刻と終了時刻が一致して、文字列が一致しなかった場合
execute if data storage tasx: var{time_differ:0b} if data storage tasx: var{result:1b} run function txstr:core/char/7

# execute if data storage tasx: var{time_differ:0b} run tellraw @a {"storage":"tasx:","nbt":"var.split"}
# execute if data storage tasx: var{time_differ:0b} run tellraw @a {"storage":"tasx:","nbt":"var.result"}

# 開始時刻と終了時刻がしたら終了
execute if data storage tasx: var{time_differ:0b} run function txstr:core/char/8