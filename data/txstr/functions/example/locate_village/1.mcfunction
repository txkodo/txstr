data modify storage txstr:io string set from block ~ ~-1 ~ LastOutput
data modify storage txstr:io split set value ['{"extra":[{"translate":"commands.locate.structure.success","with":["#minecraft:village (']
data modify storage txstr:io until set value ')'
data modify storage txstr:io charset set value [')','minecraft:village_desert','minecraft:village_plains','minecraft:village_savanna','minecraft:village_snowy','minecraft:village_taiga']
data modify storage txstr:io callback set value 'function txstr:example/locate_village/2'
function txstr:api/string.until