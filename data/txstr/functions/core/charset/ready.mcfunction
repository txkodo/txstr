# env.charsetを二分探索できるように整理する
data modify storage txstr charset.forward set from storage txstr env.charset
data modify storage txstr charset.backward set value []

execute store result score $m txstr store result score $r txstr run data get storage txstr charset.forward
scoreboard players set $l txstr 0

# txstr:core/charset/middleで上書きするためのダミー要素
data modify storage txstr env.split append value ""

function txstr:core/charset/middle