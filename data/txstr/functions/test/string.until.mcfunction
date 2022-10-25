data modify storage txstr:io until set value 'l'
data modify storage txstr:io string set value 'Lorem ipsum dolor sit amet'
data modify storage txstr:io split set value []
data modify storage txstr:io callback set value 'tellraw @a {"nbt":"split","storage": "txstr:io"}'
function txstr:api/charset/ascii
function txstr:api/string.until
