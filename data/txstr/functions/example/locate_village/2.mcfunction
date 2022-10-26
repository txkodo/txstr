tellraw @a {"nbt":"sub_split[0]","storage":"txstr:io"}

data modify storage txstr:io split append value '",{"color":"green","clickEvent":{"action":"suggest_command","value":"/tp @s '
data modify storage txstr:io until set value ' '
data modify storage txstr:io charset set value [' ','-','0','1','2','3','4','5','6','7','8','9']
data modify storage txstr:io callback set value 'function txstr:example/locate_village/3'
function txstr:api/string.until

# # {"extra":[{"translate":"commands.locate.structure.success","with":["#minecraft:village (minecraft:village_snowy)
# # ",{"color":"green","clickEvent":{"action":"suggest_command","value":"/tp @s 96 ~ -496"},"hoverEvent":{"action":"show_text","contents":{"translate":"chat.coordinates.tooltip"}},"translate":"chat.square_brackets","with":[{"translate":"chat.coordinates","with":["96","~","-496"]}]},"300"]}],"text":"[11:41:34] "}