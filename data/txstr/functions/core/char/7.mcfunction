# 一致しなかった場合

# 採用する文字を検索に使った文字のひとつ前の文字とする
# (両方の文字列の末尾に\uffffを追加して比較しているため)
data modify storage tasx: var.split[-1] set from storage tasx: var.char.backward[-1]

# string.length <= split.length のときエラー
# charsetにない文字が含まれていた場合におこる
execute store result score $string.len txstr run data get storage tasx: var.string_concat
execute store result score $split.len txstr run data get storage tasx: var.split_concat
execute if score $string.len txstr <= $split.len txstr run data modify storage tasx: var.result set value -1b
