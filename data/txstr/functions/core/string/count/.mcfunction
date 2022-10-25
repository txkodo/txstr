execute store result storage txstr string.count.flag byte 1 store result storage txstr:io args.count int 1 run data get storage txstr:io args.count 0.999999999999

execute if data storage txstr:io {result:0b} run data modify storage txstr string.count.flag set value 0b

execute unless data storage txstr string.count{flag:0b} run function txstr:core/string/count/next

execute if data storage txstr string.count{flag:0b} run function txstr:core/string/count/end