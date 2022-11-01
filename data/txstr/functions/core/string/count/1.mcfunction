execute store result storage tasx: var.count int 0.999999999999 run data get storage tasx: var.count

data modify storage tasx: var.split append from storage tasx: var.char
data modify storage tasx: var.range append from storage tasx: var.char

# 最後の文字まで読んで指定文字数に到達しなかった場合 -2 に
execute if data storage tasx: var{state:0b} unless data storage tasx: var{count:0} run data modify storage tasx: var.state set value -2b

# 最後の文字 or エラーの時続きを読まない
execute unless data storage tasx: var{state:1b} run data modify storage tasx: var.count set value 0

execute if data storage tasx: var{count:0} run function txstr:core/string/count/end
execute unless data storage tasx: var{count:0} run function txstr:core/string/count/2
