data modify storage txstr loop.time set from block 29999985 1 43381 LastOutput

# 二つの文字列が一致するかチェック
data modify storage txstr loop.split_concat set from block 29999985 0 43381 LastOutput
execute store success storage txstr env.result byte 1 run data modify storage txstr loop.split_concat set from block 29999984 0 43381 LastOutput

# 一致しなかった場合
execute if data storage txstr env{result:1b} run function txstr:core/loop/5/mismatch

# コールバックを呼び出す
# コールバック用に変数を反映
data modify storage txstr continue set value 0b
data modify storage txstr loop.in_callback set value 1b
function txstr:core/io/callback
data modify block 29999985 1 43381 Command set from storage txstr env.callback
data modify block 29999985 0 43381 Command set value 'function txstr:core/loop/5.5/'
data modify block 29999984 0 43381 Command set value ''
