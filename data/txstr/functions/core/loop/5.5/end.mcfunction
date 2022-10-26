# コールバック終了
function txstr:core/io/restore
data modify storage txstr loop.id set value 1
data modify storage txstr loop.in_callback set value 0b