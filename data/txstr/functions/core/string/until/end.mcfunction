data modify storage txstr:io callback set from storage txstr:io args.callback
data modify storage txstr:io args set from storage txstr:io args.args

execute if data storage txstr string.until{fail:1b} run data modify storage txstr:io result set value -1