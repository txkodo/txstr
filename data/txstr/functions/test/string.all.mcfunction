# data modify storage txstr:io string set value 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
data modify storage txstr:io string set value 'Lorem ipsum dolorあ sit amet,'
data modify storage txstr:io split set value []
data modify storage txstr:io callback set value 'tellraw @a {"nbt":"split","storage": "txstr:io"}'
function txstr:api/charset/ascii
function txstr:api/string.all
