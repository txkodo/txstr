#> txstr:api/util/to_int
# 文字のリストを整数値に変換する
# ['-','1','5','2'] -> 152
# 文字は1文字づつに分かれている必要がある
# @input storage txstr:util chars(list[string]) 入力文字リスト
# @output storage txstr:util int 結果の整数値
# @output score $util.to_int txstr 結果の整数値

# 最初の文字が'-'かチェック
data modify storage txstr util.to_int.chars set from storage txstr:util chars

data modify storage txstr util.to_int.tmp set from storage txstr util.to_int.chars[0]
execute store success storage txstr util.to_int.positive byte 1 run data modify storage txstr util.to_int.tmp set value '-'
execute if data storage txstr util.to_int{positive:0b} run data remove storage txstr util.to_int.chars[0]

scoreboard players set $util.to_int txstr 0

execute store result storage txstr util.to_int.len int 1 run data get storage txstr util.to_int.chars
execute unless data storage txstr util.to_int{len:0} run function txstr:core/util/to_int/

execute if data storage txstr util.to_int{positive:0b} run scoreboard players operation $util.to_int txstr *= #-1 txstr
execute store result storage txstr:util int int 1 run scoreboard players get $util.to_int txstr