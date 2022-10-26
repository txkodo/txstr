data modify storage txstr:io string set value 'Lorem ipsum dolor sit amet,'
data modify storage txstr:io split set value ['Lorem ipsum',' ','dolor',' ']
data modify storage txstr:io callback set value 'tellraw @a ["1: ",{"nbt":"sub_split","storage": "txstr:io"}]'
function txstr:api/charset/ascii
function txstr:api/string.all
