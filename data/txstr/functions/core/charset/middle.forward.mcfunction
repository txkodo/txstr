scoreboard players remove $m txstr 1

data modify storage tasx: var.char.backward append from storage tasx: var.char.forward[-1]
data remove storage tasx: var.char.forward[-1]
execute if score $m txstr > $n txstr run function txstr:core/charset/middle.forward
