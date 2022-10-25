
data modify block 1 2 0 Text1 set value '[{"block":"1 1 0","nbt":"LastOutput","interpret":true}]'
data modify entity d718fdc0-dc29-44f3-9409-0012bde34e23 CustomName set from block 1 2 0 Text1

data modify block 1 2 0 Text1 set value '[{"block":"1 0 0","nbt":"LastOutput","interpret":true},", ",{"storage":"txstr","nbt":"loop.string_concat"},", ",{"storage":"txstr","nbt":"loop.split_concat"}]'
data modify entity f2f670c8-260b-4689-ae50-7f8de19a38de CustomName set from block 1 2 0 Text1

data modify block 1 1 0 Command set value 'enchant d718fdc0-dc29-44f3-9409-0012bde34e23 looting'
data modify block 1 0 0 Command set value 'enchant f2f670c8-260b-4689-ae50-7f8de19a38de looting'
data modify block 0 0 0 Command set value 'w'

data modify storage txstr loop.id set value 4