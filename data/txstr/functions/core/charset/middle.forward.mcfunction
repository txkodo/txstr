scoreboard players remove $m txstr 1

data modify storage txstr charset.backward append from storage txstr charset.forward[-1]
data remove storage txstr charset.forward[-1]
execute if score $m txstr > $n txstr run function txstr:core/charset/middle.forward
