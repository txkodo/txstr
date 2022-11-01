data modify storage tasx: var.pre_unsorted set from storage tasx: var.LastOutput

data modify block 29999984 3 43383 Text1 set value '[{"storage":"tasx:","nbt":"var.pre_sorted","interpret":true}]'
data modify entity d718fdc0-dc29-44f3-9409-0012bde34e23 CustomName set from block 29999984 3 43383 Text1

data modify block 29999984 3 43383 Text1 set value '[{"storage":"tasx:","nbt":"var.pre_unsorted","interpret":true},", ",{"storage":"tasx:","nbt":"var.string_concat"},", ",{"storage":"tasx:","nbt":"var.split_concat"}]'
data modify entity f2f670c8-260b-4689-ae50-7f8de19a38de CustomName set from block 29999984 3 43383 Text1

data modify storage tasx: var.__cmds__ set value ['function txstr:core/char/3','w','data modify storage tasx: var.unsorted set from storage tasx: var.LastOutput','enchant f2f670c8-260b-4689-ae50-7f8de19a38de looting','data modify storage tasx: var.sorted set from storage tasx: var.LastOutput','enchant d718fdc0-dc29-44f3-9409-0012bde34e23 looting']