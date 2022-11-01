#> txstr:core/char/
# 
# @input tasx:
#     arg.string  :: string
#     arg.split   :: string[]
#     arg.charset :: string[]
# 
# @output tasx:
#     var.char
#     var.return

function atasx:api/start

# 探索用のcharsetデータの用意
function txstr:core/charset/ready

data modify storage tasx: continue set value 'function txstr:core/char/0'

function atasx:api/pause_with_continue
function atasx:api/resume