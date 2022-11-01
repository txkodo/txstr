data modify storage tasx: var.split append from storage tasx: var.char
data modify storage tasx: var.range append from storage tasx: var.char
execute store success storage tasx: var.continue byte 1 run data modify storage tasx: var.char set from storage tasx: var.until

# 最後の文字まで読んで指定された文字が発見されなかった場合 -2 に
execute if data storage tasx: var{state:0b} if data storage tasx: var{continue:1b} run data modify storage tasx: var.state set value -2b

# 最後の文字 or エラーの時続きを読まない
execute unless data storage tasx: var{state:1b} run data modify storage tasx: var.continue set value 0b

execute if data storage tasx: var{continue:0b} run function txstr:core/string/until/end
execute if data storage tasx: var{continue:1b} run function txstr:core/string/until/2
