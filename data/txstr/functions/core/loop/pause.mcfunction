# 処理を中断しtickを跨ぐ

# このチェーンコマブロを止める
data modify block 29999984 1 43381 UpdateLastExecution set value 1b

# コマブロの中身をリセット
data modify block 29999985 1 43381 Command set value ''
data modify block 29999985 0 43381 Command set value ''
data modify block 29999984 0 43381 Command set value ''

data modify storage txstr loop.active set value 0b

data modify storage txstr loop.id set value 1
