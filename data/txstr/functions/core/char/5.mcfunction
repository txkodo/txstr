# 完全一致するか確認
data modify block 29999984 3 43383 Text1 set value '[{"storage":"tasx:","nbt":"var.string"},"￿"]'
data modify entity d718fdc0-dc29-44f3-9409-0012bde34e23 CustomName set from block 29999984 3 43383 Text1

data modify block 29999984 3 43383 Text1 set value '[{"storage":"tasx:","nbt":"var.split[]","separator":""},"￿"]'
data modify entity f2f670c8-260b-4689-ae50-7f8de19a38de CustomName set from block 29999984 3 43383 Text1

data modify storage tasx: var.__cmds__ set value ['function txstr:core/char/6','w','execute store success storage tasx: var.result byte 1 run data modify storage tasx: var.temp set from storage tasx: var.LastOutput','enchant d718fdc0-dc29-44f3-9409-0012bde34e23 looting','data modify storage tasx: var.temp set from storage tasx: var.LastOutput','enchant f2f670c8-260b-4689-ae50-7f8de19a38de looting']