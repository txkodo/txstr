#define storage txstr:io
#define storage txstr

#define objective txstr
scoreboard objectives add txstr dummy

#define score_holder $l
#define score_holder $m
#define score_holder $r

#define score_holder #2
scoreboard players set #2 txstr 2

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

setblock 0 2 0 repeating_command_block[facing=down]{"Command":"function txstr:core/loop/enter"}
setblock 0 1 0 chain_command_block[facing=east]{"UpdateLastExecution":0b,auto:1b,Command:"function txstr:core/loop/"}
setblock 1 1 0 chain_command_block[facing=down]{"UpdateLastExecution":0b,auto:1b}
setblock 1 0 0 chain_command_block[facing=west]{"UpdateLastExecution":0b,auto:1b}
setblock 0 0 0 chain_command_block[facing=up]{"UpdateLastExecution":0b,auto:1b}
setblock 1 2 0 oak_wall_sign[facing=east]

#alias vector sign 1 2 0
#alias vector cmd1 0 1 0
#alias vector cmd2 1 1 0
#alias vector cmd3 1 0 0
#alias vector cmd4 0 0 0
#alias vector repeat_cmd 0 2 0

#define entity d718fdc0-dc29-44f3-9409-0012bde34e23
execute unless entity d718fdc0-dc29-44f3-9409-0012bde34e23 run summon marker 0 0 0 {UUID:[I;-686228032,-601275149,-1811349486,-1109176797]}

#define entity f2f670c8-260b-4689-ae50-7f8de19a38de
execute unless entity f2f670c8-260b-4689-ae50-7f8de19a38de run summon marker 0 0 0 {UUID:[I;-218730296,638273161,-1370456179,-509986594]}

data modify entity f2f670c8-260b-4689-ae50-7f8de19a38de Tags set value ['a','b','c']

#alias entity marker1 d718fdc0-dc29-44f3-9409-0012bde34e23
#alias entity marker2 f2f670c8-260b-4689-ae50-7f8de19a38de