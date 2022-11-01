# env.charsetを二分探索できるように整理する
data modify storage tasx: var.char.forward set from storage tasx: var.charset
data modify storage tasx: var.char.forward append value "￿"
data modify storage tasx: var.char.backward set value []
execute store result storage tasx: var.char.m int 1 store result storage tasx: var.char.r int 1 if data storage tasx: var.char.forward[]
data modify storage tasx: var.char.l set value 0

# txstr:core/charset/middleで上書きするためのダミー要素
data modify storage tasx: var.split append value ""

function txstr:core/charset/middle
