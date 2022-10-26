
data modify storage txstr queue append value {}
data modify storage txstr queue[-1].string set from storage txstr:io string
data modify storage txstr queue[-1].charset set from storage txstr:io charset
data modify storage txstr queue[-1].callback set from storage txstr:io callback
data modify storage txstr queue[-1].args set from storage txstr:io args
data modify storage txstr queue[-1].split set from storage txstr:io split

data modify storage txstr:io args set value {}
