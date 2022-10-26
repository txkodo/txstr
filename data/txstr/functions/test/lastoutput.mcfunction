data modify storage txstr:io string set from block ~ ~-1 ~ LastOutput
data modify storage txstr:io split set value []
data modify storage txstr:io callback set value 'tellraw @a {"nbt":"split","storage": "txstr:io"}'
function txstr:api/charset/ascii
function txstr:api/string.all
