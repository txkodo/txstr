
data modify block 29999984 3 43383 Text1 set value '[{"storage":"tasx:","nbt":"var.string"},"￿"]'
data modify entity d718fdc0-dc29-44f3-9409-0012bde34e23 CustomName set from block 29999984 3 43383 Text1

data modify block 29999984 3 43383 Text1 set value '[{"storage":"tasx:","nbt":"var.split[]","separator":""},"￿"]'
data modify entity f2f670c8-260b-4689-ae50-7f8de19a38de CustomName set from block 29999984 3 43383 Text1

data modify storage tasx: var.__cmds__ prepend value 'w'
data modify storage tasx: var.__cmds__ prepend value 'data modify storage tasx: var.time set from storage tasx: var.LastOutput'
data modify storage tasx: var.__cmds__ prepend value 'enchant d718fdc0-dc29-44f3-9409-0012bde34e23 looting'
data modify storage tasx: var.__cmds__ prepend value 'data modify storage tasx: var.string_concat set from storage tasx: var.LastOutput'
data modify storage tasx: var.__cmds__ prepend value 'enchant f2f670c8-260b-4689-ae50-7f8de19a38de looting'
data modify storage tasx: var.__cmds__ prepend value 'function txstr:core/char/1'