# 処理終了

# リピートコマブロを止める
data modify block 0 2 0 auto set value 0b

# このチェーンコマブロを止める
data modify block 0 1 0 UpdateLastExecution set value 1b

# コマブロの中身をリセット
data modify block 1 1 0 Command set value ''
data modify block 1 0 0 Command set value ''
data modify block 0 0 0 Command set value ''

data modify storage txstr loop.active set value 0b

data modify storage txstr loop.id set value 1