data modify storage txstr string.until.tmp set from storage txstr:io args.until
execute store result storage txstr string.until.flag byte 1 run data modify storage txstr string.until.tmp set from storage txstr:io split[-1]

execute if data storage txstr:io {result:0b} run data modify storage txstr string.until.flag set value 0b

execute if data storage txstr string.until{flag:1b} run function txstr:core/string/until/next

execute if data storage txstr string.until{flag:0b} run function txstr:core/string/until/end