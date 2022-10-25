
data modify storage txstr:io args.args set from storage txstr:io args
data modify storage txstr:io args.count set from storage txstr:io count
data modify storage txstr:io args.callback set from storage txstr:io callback
data modify storage txstr:io callback set value 'function txstr:core/string/count/'
function txstr:api/char
