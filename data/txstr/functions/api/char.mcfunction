#> txstr:api/char
# 
# 一文字読む
# 
# @input  tasx: 
#   callback    :string
#   arg.string  :string
#   arg.split   :string[]
#   arg.charset :string[]
# 
# @output tasx:
#   var.char  :string
#   var.state :byte (-1:エラー,0:最後の文字,1:途中の文字)

function txstr:core/char/