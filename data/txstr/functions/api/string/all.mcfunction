
data modify storage txstr:io args.args set from storage txstr:io args
data modify storage txstr:io args.callback set from storage txstr:io callback
data modify storage txstr:io callback set value 'function txstr:core/string/all/'
function txstr:api/char
