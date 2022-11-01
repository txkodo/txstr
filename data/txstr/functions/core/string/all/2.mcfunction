
data modify storage tasx: arg.string set from storage tasx: var.string
data modify storage tasx: arg.split set from storage tasx: var.split
data modify storage tasx: arg.charset set from storage tasx: var.charset
data modify storage tasx: callback set value 'function txstr:core/string/all/1'
function txstr:api/char
