function atasx:api/start

data modify storage txstr version set value "1"

data modify storage tasx: arg.string set value 'abcde'
data modify storage tasx: arg.split set value []
data modify storage tasx: arg.charset set value ['a','b','c','d','e']
data modify storage tasx: arg.until set value 'd'

data modify storage tasx: callback set value 'function txstr:test/string/callback'

function txstr:api/string.until
