data modify storage txstr util.to_int.f1 set value '0'
data modify storage txstr util.to_int.f2 set value 0

execute store result storage txstr util.to_int.f1 byte 1 run data modify storage txstr util.to_int.f1 set from storage txstr util.to_int.chars[0]
execute unless data storage txstr util.to_int{f1:0b} store success storage txstr util.to_int.f2 int 1 run data modify storage txstr util.to_int.f1 set value '1'

execute unless data storage txstr util.to_int{f1:0b} store result storage txstr util.to_int.f1 byte 1 run data modify storage txstr util.to_int.f1 set from storage txstr util.to_int.chars[0]
execute unless data storage txstr util.to_int{f1:0b} store success storage txstr util.to_int.f2 int 2 run data modify storage txstr util.to_int.f1 set value '2'

execute unless data storage txstr util.to_int{f1:0b} store result storage txstr util.to_int.f1 byte 1 run data modify storage txstr util.to_int.f1 set from storage txstr util.to_int.chars[0]
execute unless data storage txstr util.to_int{f1:0b} store success storage txstr util.to_int.f2 int 3 run data modify storage txstr util.to_int.f1 set value '3'

execute unless data storage txstr util.to_int{f1:0b} store result storage txstr util.to_int.f1 byte 1 run data modify storage txstr util.to_int.f1 set from storage txstr util.to_int.chars[0]
execute unless data storage txstr util.to_int{f1:0b} store success storage txstr util.to_int.f2 int 4 run data modify storage txstr util.to_int.f1 set value '4'

execute unless data storage txstr util.to_int{f1:0b} store result storage txstr util.to_int.f1 byte 1 run data modify storage txstr util.to_int.f1 set from storage txstr util.to_int.chars[0]
execute unless data storage txstr util.to_int{f1:0b} store success storage txstr util.to_int.f2 int 5 run data modify storage txstr util.to_int.f1 set value '5'

execute unless data storage txstr util.to_int{f1:0b} store result storage txstr util.to_int.f1 byte 1 run data modify storage txstr util.to_int.f1 set from storage txstr util.to_int.chars[0]
execute unless data storage txstr util.to_int{f1:0b} store success storage txstr util.to_int.f2 int 6 run data modify storage txstr util.to_int.f1 set value '6'

execute unless data storage txstr util.to_int{f1:0b} store result storage txstr util.to_int.f1 byte 1 run data modify storage txstr util.to_int.f1 set from storage txstr util.to_int.chars[0]
execute unless data storage txstr util.to_int{f1:0b} store success storage txstr util.to_int.f2 int 7 run data modify storage txstr util.to_int.f1 set value '7'

execute unless data storage txstr util.to_int{f1:0b} store result storage txstr util.to_int.f1 byte 1 run data modify storage txstr util.to_int.f1 set from storage txstr util.to_int.chars[0]
execute unless data storage txstr util.to_int{f1:0b} store success storage txstr util.to_int.f2 int 8 run data modify storage txstr util.to_int.f1 set value '8'

execute unless data storage txstr util.to_int{f1:0b} store result storage txstr util.to_int.f1 byte 1 run data modify storage txstr util.to_int.f1 set from storage txstr util.to_int.chars[0]
execute unless data storage txstr util.to_int{f1:0b} store success storage txstr util.to_int.f2 int 9 run data modify storage txstr util.to_int.f1 set value '9'

execute store result score $util._ txstr run data get storage txstr util.to_int.f2
scoreboard players operation $util.to_int txstr *= #10 txstr
scoreboard players operation $util.to_int txstr += $util._ txstr

data remove storage txstr util.to_int.chars[0]

execute store result storage txstr util.to_int.len int 1 run data get storage txstr util.to_int.chars
execute unless data storage txstr util.to_int{len:0} run function txstr:core/util/to_int/