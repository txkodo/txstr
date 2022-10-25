data modify storage txstr:io string set value 'asdfghjkl;qwertyuiop'
data modify storage txstr:io split set value []
data modify storage txstr:io callback set value 'tellraw @a {"nbt":"env.split","storage": "txstr"}'
function txstr:api/charset/ascii
function txstr:api/char
