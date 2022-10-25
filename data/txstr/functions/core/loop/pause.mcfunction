# 処理を中断しtickを跨ぐ

# リピートコマブロを止める
data modify block 29999984 2 43381 auto set value 0b

# コマブロの中身をリセット
data modify block 29999985 1 43381 Command set value ''
data modify block 29999985 0 43381 Command set value ''
data modify block 29999984 0 43381 Command set value ''

data modify storage txstr loop.active set value 0b

data modify storage txstr loop.id set value 1
