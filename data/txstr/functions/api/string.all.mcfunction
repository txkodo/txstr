#> txstr:api/string.all
# 
# stringからsplitの続きをすべて読み取る
# 
# string : 'abcdefg'
# split : ['a','b','c']
# として実行すると
# split : ['a','b','c','d','e','f','g']
# という実行結果になる
# 
# 下記のようなケースではエラーになる
# 1. string : ['abcdefg'] split : ['x','y','z']
# 2. string : ['あいうえお'] charset : ['a','b'...'y','z']
# 
# @input storage txstr:io
#          string(string) 分割元の文字列
#          split(list[string]) 分割された文字列のリスト。結果はこれに追加される
#          charset(list[string]) 使用されうる文字列集合(基本的にunicode順)
#          callback(string) 処理終了時に呼ばれるコールバック
#          args(compound) コールバック実行時まで保存される変数空間
# 
# コールバック時の出力
# @output storage txstr:io コールバック時の出力
#          string(string) 分割元の文字列
#          split(list[string]) 分割された文字列のリスト。結果はこれに追加される
#          charset(list[string]) 使用されうる文字列集合(基本的にunicode順)
#          args(compound) コールバック実行時まで保存される変数空間
#          result(byte) 処理結果 (0b:最後の文字まで読み取った,-1b:エラー)

data modify storage txstr:io args.args set from storage txstr:io args
data modify storage txstr:io args.callback set from storage txstr:io callback
data modify storage txstr:io callback set value 'function txstr:core/string/all/'
function txstr:api/char
