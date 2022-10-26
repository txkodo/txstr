data modify storage txstr:util chars set from storage txstr:io sub_split
data remove storage txstr:util chars[-1]
function txstr:api/util/to_int
tellraw @a {"nbt":"int","storage":"txstr:util"}
