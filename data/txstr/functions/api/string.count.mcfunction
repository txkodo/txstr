#> txstr:api/string.count
# 
# 指定した文字まで読む
# 
# @input  tasx: 
#   callback    :string
#   arg.string  :string
#   arg.count   :int
#   arg.split   :string[]
#   arg.charset :string[]
# 
# @output tasx:
#   var.range : string[]
#   var.state : byte
#       -2b : 最後まで読んだが指定文字数に到達しなかった
#       -1b : charsetにない文字が入っていた,
#        0b : 最後で指定文字数に到達した
#        1b : 途中で指定文字数に到達した

function txstr:core/string/count/
