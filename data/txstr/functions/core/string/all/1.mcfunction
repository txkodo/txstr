data modify storage tasx: var.range append from storage tasx: var.char
data modify storage tasx: var.split append from storage tasx: var.char

execute if data storage tasx: var{state:1b} run function txstr:core/string/all/2

execute unless data storage tasx: var{state:1b} run function txstr:core/string/all/end
