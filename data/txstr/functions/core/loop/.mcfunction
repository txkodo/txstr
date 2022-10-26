
data modify storage txstr loop.done set value 0b

execute store success storage txstr loop.done byte 1 if data storage txstr loop{done:0b} if data storage txstr loop{id:1} run function txstr:core/loop/1/
execute store success storage txstr loop.done byte 1 if data storage txstr loop{done:0b} if data storage txstr loop{id:2} run function txstr:core/loop/2/
execute store success storage txstr loop.done byte 1 if data storage txstr loop{done:0b} if data storage txstr loop{id:3} run function txstr:core/loop/3/
execute store success storage txstr loop.done byte 1 if data storage txstr loop{done:0b} if data storage txstr loop{id:4} run function txstr:core/loop/4/
execute store success storage txstr loop.done byte 1 if data storage txstr loop{done:0b} if data storage txstr loop{id:5} run function txstr:core/loop/5/
execute store success storage txstr loop.done byte 1 if data storage txstr loop{done:0b} if data storage txstr loop{id:6} run function txstr:core/loop/6/

execute if data storage txstr loop{done:0b} run function txstr:core/loop/disactivate