# 次のコールバックを呼び出す
data modify block 0 0 0 Command set from storage txstr:io callback
data modify storage txstr:io callback set value ""
data modify storage txstr loop.id set value 6
