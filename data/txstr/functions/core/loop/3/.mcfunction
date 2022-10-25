
data modify block 29999985 2 43381 Text1 set value '[{"block":"29999985 1 43381","nbt":"LastOutput","interpret":true}]'
data modify entity d718fdc0-dc29-44f3-9409-0012bde34e23 CustomName set from block 29999985 2 43381 Text1

data modify block 29999985 2 43381 Text1 set value '[{"block":"29999985 0 43381","nbt":"LastOutput","interpret":true},", ",{"storage":"txstr","nbt":"loop.string_concat"},", ",{"storage":"txstr","nbt":"loop.split_concat"}]'
data modify entity f2f670c8-260b-4689-ae50-7f8de19a38de CustomName set from block 29999985 2 43381 Text1

data modify block 29999985 1 43381 Command set value 'enchant d718fdc0-dc29-44f3-9409-0012bde34e23 looting'
data modify block 29999985 0 43381 Command set value 'enchant f2f670c8-260b-4689-ae50-7f8de19a38de looting'
data modify block 29999984 0 43381 Command set value 'w'

data modify storage txstr loop.id set value 4