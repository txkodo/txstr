
execute store success storage txstr loop.same_time byte 1 run data modify storage txstr loop.time set from block 29999984 0 43381 LastOutput

# 開始時刻と終了時刻が同じだったら継続
execute if data storage txstr loop{same_time:0b} run function txstr:core/loop/4/main

# 開始時刻と終了時刻が違ったら1に戻る
execute if data storage txstr loop{same_time:1b} run function txstr:core/loop/4/retry
