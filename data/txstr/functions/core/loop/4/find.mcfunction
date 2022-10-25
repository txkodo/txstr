# 探索終了時処理

data modify storage txstr continue set value 0b

# 文字列が完全一致するかどうかをチェックする
data modify block 1 2 0 Text1 set value '[{"storage":"minecraft:txstr","nbt":"env.string"},"￿"]'
data modify entity d718fdc0-dc29-44f3-9409-0012bde34e23 CustomName set from block 1 2 0 Text1

data modify block 1 2 0 Text1 set value '[{"storage":"minecraft:txstr","nbt":"env.split[]","separator":""},"￿"]'
data modify entity f2f670c8-260b-4689-ae50-7f8de19a38de CustomName set from block 1 2 0 Text1

data modify block 1 1 0 Command set value 'w'
data modify block 1 0 0 Command set value 'enchant d718fdc0-dc29-44f3-9409-0012bde34e23 looting'
data modify block 0 0 0 Command set value 'enchant f2f670c8-260b-4689-ae50-7f8de19a38de looting'

data modify storage txstr loop.id set value 5

