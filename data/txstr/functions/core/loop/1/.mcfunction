# loop -= 1
execute store result storage txstr loop.count int 0.999999999999 run data get storage txstr loop.count

# チェーンコマブロの無限ループ設定
data modify storage txstr loop.active set value 1b

# やることなし
execute unless data storage txstr loop{count:0} if data storage txstr {continue:0b} unless data storage txstr queue[0] run function txstr:core/loop/disactivate

# 通常
execute if data storage txstr loop{active:1b} run function txstr:core/loop/1/main

# 次tickに回す
execute if data storage txstr loop{count:0} run function txstr:core/loop/pause

# tellraw @a {"nbt":"loop.count","storage": "txstr"}