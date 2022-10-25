data modify storage txstr loop.time set from block 1 1 0 LastOutput

# 二つの文字列が一致するかチェック
data modify storage txstr loop.split_concat set from block 1 0 0 LastOutput
execute store success storage txstr env.result byte 1 run data modify storage txstr loop.split_concat set from block 0 0 0 LastOutput

# 一致しなかった場合、ひとつ前の文字を結果とする
execute if data storage txstr env{result:1b} run data modify storage txstr env.split[-1] set from storage txstr charset.backward[-1]

# function txstr:core/loop/1/

# コールバックを呼び出す
# コールバック用に変数を反映
data modify storage txstr continue set value 0b
data modify storage txstr loop.in_callback set value 1b
function txstr:core/io/callback
data modify block 1 1 0 Command set from storage txstr env.callback
data modify block 1 0 0 Command set value 'function txstr:core/loop/5.5/'
data modify block 0 0 0 Command set value ''
