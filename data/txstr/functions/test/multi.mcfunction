data modify storage txstr:io string set value 'Lorem ipsum dolor sit amet,'
data modify storage txstr:io split set value []
data modify storage txstr:io callback set value 'tellraw @a ["1: ",{"nbt":"split","storage": "txstr:io"}]'
function txstr:api/charset/ascii
function txstr:api/string.all

data modify storage txstr:io string set value 'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
data modify storage txstr:io split set value []
data modify storage txstr:io callback set value 'tellraw @a ["2: ",{"nbt":"split","storage": "txstr:io"}]'
function txstr:api/charset/ascii
function txstr:api/string.all

data modify storage txstr:io string set value 'consectetur adipiscing elit,'
data modify storage txstr:io split set value []
data modify storage txstr:io callback set value 'tellraw @a ["3: ",{"nbt":"split","storage": "txstr:io"}]'
function txstr:api/charset/ascii
function txstr:api/string.all