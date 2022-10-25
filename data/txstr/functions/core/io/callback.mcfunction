# コールバック用にtxstr:ioの内容を書き換える


data modify storage txstr io.string set from storage txstr:io string
data modify storage txstr io.charset set from storage txstr:io charset
data modify storage txstr io.callback set from storage txstr:io callback
data modify storage txstr io.args set from storage txstr:io args
data modify storage txstr io.split set from storage txstr:io split

data modify storage txstr:io string set from storage txstr env.string
data modify storage txstr:io charset set from storage txstr env.charset
data modify storage txstr:io callback set value ""
data modify storage txstr:io args set from storage txstr env.args
data modify storage txstr:io split set from storage txstr env.split
data modify storage txstr:io result set from storage txstr env.result
