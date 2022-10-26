# 探索した文字をsubに追加
data modify storage txstr:io args.sub append from storage txstr:io split[-1]

execute if data storage txstr:io {result:1b} run function txstr:core/string/all/next
execute unless data storage txstr:io {result:1b} run function txstr:core/string/all/end