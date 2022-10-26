gamerule maxCommandChainLength 2147483647
forceload add 29999999 43376

data modify storage txstr version set value "1.0"

#define storage txstr:io
#define storage txstr:util
#define storage txstr

#define objective txstr
scoreboard objectives add txstr dummy

#define score_holder $l
#define score_holder $m
#define score_holder $r

#define score_holder #-1
scoreboard players set #-1 txstr -1

#define score_holder #2
scoreboard players set #2 txstr 2

#define score_holder #10
scoreboard players set #10 txstr 10

data modify storage txstr:io max_loop set value 1024

data modify storage txstr:io next_char set value 0b
data modify storage txstr:io continue set value 0b

data modify storage txstr loop.in_callback set value 0b

data modify storage txstr:io string set value ""
data modify storage txstr:io split set value []
data modify storage txstr:io charset set value []
data modify storage txstr:io args set value {}
data modify storage txstr:io callback set value {}

data modify storage txstr env set value {}
data modify storage txstr queue set value []

function txstr:api/charset/ascii

# 29999984 0 43381
setblock 29999984 2 43381 repeating_command_block[facing=down]{"Command":"function txstr:core/loop/enter"}
setblock 29999984 1 43381 chain_command_block[facing=east]{"UpdateLastExecution":0b,auto:1b,Command:"function txstr:core/loop/"}
setblock 29999985 1 43381 chain_command_block[facing=down]{"UpdateLastExecution":0b,auto:1b}
setblock 29999985 0 43381 chain_command_block[facing=west]{"UpdateLastExecution":0b,auto:1b}
setblock 29999984 0 43381 chain_command_block[facing=up]{"UpdateLastExecution":0b,auto:1b}
setblock 29999985 2 43381 oak_wall_sign[facing=east]

#alias vector sign 29999985 2 43381
#alias vector cmd1 29999984 1 43381
#alias vector cmd2 29999985 1 43381
#alias vector cmd3 29999985 0 43381
#alias vector cmd4 29999984 0 43381
#alias vector repeat_cmd 29999984 2 43381

#define entity d718fdc0-dc29-44f3-9409-0012bde34e23
execute unless entity d718fdc0-dc29-44f3-9409-0012bde34e23 run summon marker 29999984 0 43381 {UUID:[I;-686228032,-601275149,-1811349486,-1109176797]}

#define entity f2f670c8-260b-4689-ae50-7f8de19a38de
execute unless entity f2f670c8-260b-4689-ae50-7f8de19a38de run summon marker 29999984 0 43381 {UUID:[I;-218730296,638273161,-1370456179,-509986594]}

data modify entity f2f670c8-260b-4689-ae50-7f8de19a38de Tags set value ['a','b','c']

#alias entity marker1 d718fdc0-dc29-44f3-9409-0012bde34e23
#alias entity marker2 f2f670c8-260b-4689-ae50-7f8de19a38de
