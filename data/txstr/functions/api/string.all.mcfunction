#> txstr:api/string.all
# 
# 最後まで読む
# 
# @input  tasx: 
#   callback    :string
#   arg.string  :string
#   arg.split   :string[]
#   arg.charset :string[]
# 
# @output tasx:
#   var.range : string[]
#   var.state : byte (-1:エラー,0:最後の文字まで呼んだ)
#       -1b : charsetにない文字が入っていた
#        0b : 最後の文字まで読み取った

function txstr:core/string/all/