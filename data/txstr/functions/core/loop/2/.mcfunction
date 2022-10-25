data modify storage txstr loop.time set from block 1 1 0 LastOutput

data modify storage txstr loop.string_concat set from block 1 0 0 LastOutput
data modify storage txstr loop.split_concat set from block 0 0 0 LastOutput

data modify storage txstr loop.tags set value ['a, b, c']
data modify storage txstr loop.tags append from storage txstr loop.string_concat
data modify storage txstr loop.tags append from storage txstr loop.split_concat
data modify entity d718fdc0-dc29-44f3-9409-0012bde34e23 Tags set from storage txstr loop.tags

data modify entity d718fdc0-dc29-44f3-9409-0012bde34e23 CustomName set value ""
data modify entity f2f670c8-260b-4689-ae50-7f8de19a38de CustomName set value ""

# ソート済み
data modify block 1 1 0 Command set value 'tag d718fdc0-dc29-44f3-9409-0012bde34e23 list'
# 未ソート(未完)
data modify block 1 0 0 Command set value 'tag f2f670c8-260b-4689-ae50-7f8de19a38de list'
data modify block 0 0 0 Command set value ''

data modify storage txstr loop.id set value 3