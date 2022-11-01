data modify storage txstr version set value "1"

#define objective txstr
scoreboard objectives add txstr dummy

#define score_holder $l
#define score_holder $m
#define score_holder $r

#define score_holder #2
scoreboard players set #2 txstr 2

#alias vector sign 29999984 3 43383
setblock 29999984 3 43383 oak_sign

#define entity d718fdc0-dc29-44f3-9409-0012bde34e23
kill d718fdc0-dc29-44f3-9409-0012bde34e23
summon marker 29999984 3 43383 {UUID:[I;-686228032,-601275149,-1811349486,-1109176797]}

#define entity f2f670c8-260b-4689-ae50-7f8de19a38de
kill f2f670c8-260b-4689-ae50-7f8de19a38de
summon marker 29999984 3 43383 {UUID:[I;-218730296,638273161,-1370456179,-509986594]}

data modify entity f2f670c8-260b-4689-ae50-7f8de19a38de Tags set value ['a','b','c']

#alias entity marker1 d718fdc0-dc29-44f3-9409-0012bde34e23
#alias entity marker2 f2f670c8-260b-4689-ae50-7f8de19a38de
