data modify storage tasx: var.split_concat set from storage tasx: var.LastOutput

data modify storage tasx: var.tags set value ['a, b, c']
data modify storage tasx: var.tags append from storage tasx: var.string_concat
data modify storage tasx: var.tags append from storage tasx: var.split_concat

data modify entity d718fdc0-dc29-44f3-9409-0012bde34e23 Tags set from storage tasx: var.tags

data modify entity d718fdc0-dc29-44f3-9409-0012bde34e23 CustomName set value ""
data modify entity f2f670c8-260b-4689-ae50-7f8de19a38de CustomName set value ""

data modify storage tasx: var.__cmds__ set value ['function txstr:core/char/2','tag f2f670c8-260b-4689-ae50-7f8de19a38de list','data modify storage tasx: var.pre_sorted set from storage tasx: var.LastOutput','tag d718fdc0-dc29-44f3-9409-0012bde34e23 list']