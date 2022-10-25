# コールバック後に呼ばれる
data modify storage txstr loop.6.tmp set value 0b
execute store result storage txstr loop.6.tmp byte 1 unless data storage txstr:io {callback:""} if data storage txstr {next_char:0b} run function txstr:core/loop/6/callback
execute if data storage txstr loop.6{tmp:0b} run function txstr:core/loop/6/end