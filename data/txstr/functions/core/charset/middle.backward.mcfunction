scoreboard players add $m txstr 1

data modify storage tasx: var.char.forward append from storage tasx: var.char.backward[-1]
data remove storage tasx: var.char.backward[-1]
execute if score $m txstr < $n txstr run function txstr:core/charset/middle.backward
