scoreboard players add $m txstr 1

data modify storage txstr charset.forward append from storage txstr charset.backward[-1]
data remove storage txstr charset.backward[-1]
execute if score $m txstr < $n txstr run function txstr:core/charset/middle.backward
