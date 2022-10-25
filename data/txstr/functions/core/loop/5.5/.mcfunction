# コールバック後に呼ばれる
data modify storage txstr loop.5.tmp set value 0b
execute store result storage txstr loop.5.tmp byte 1 unless data storage txstr:io {callback:""} if data storage txstr {next_char:0b} run function txstr:core/loop/5.5/callback
execute if data storage txstr loop.5{tmp:0b} run function txstr:core/loop/5.5/end
