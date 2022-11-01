execute store success storage tasx: var.time_differ byte 1 run data modify storage tasx: var.time set from storage tasx: var.LastOutput

data modify storage tasx: var.found set value 0b

# 開始時刻と終了時刻が同じだったら次の文字を選ぶ
execute if data storage tasx: var{time_differ:0b} run function txstr:core/char/4

# 探索が終了した場合完全一致か確認する
execute if data storage tasx: var{found:1b} run function txstr:core/char/5

# 探索が終了していない場合もう一周
execute if data storage tasx: var{found:0b} run function txstr:core/char/0
