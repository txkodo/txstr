data modify storage txstr:util chars set from storage txstr:io sub_split
data remove storage txstr:util chars[-1]
function txstr:api/util/to_int
tellraw @a {"nbt":"int","storage":"txstr:util"}

data modify storage txstr:io split append value '~ '
data modify storage txstr:io until set value '"'
# function txstr:api/charset/ascii
data modify storage txstr:io charset set value ['-','0','1','2','3','4','5','6','7','8','9','"']
data modify storage txstr:io callback set value 'function txstr:example/locate_village/4'
function txstr:api/string.until
