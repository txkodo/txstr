#> txstr:api/string.until
# 
# 指定した文字まで読む
# 
# @input  tasx: 
#   callback    :string
#   arg.string  :string
#   arg.until   :string
#   arg.split   :string[]
#   arg.charset :string[]
# 
# @output tasx:
#   var.range : string[]
#   var.state : byte
#       -2b : 最後まで読んだが指定の文字が見つからなかった,
#       -1b : charsetにない文字が入っていた,
#        0b : 最後の文字で指定の文字が見つかった
#        1b : 途中の文字で指定の文字が見つかった

function txstr:core/string/until/
