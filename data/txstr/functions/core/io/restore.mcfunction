# コールバック終了時に元に戻す

data modify storage txstr env.string set from storage txstr:io string
data modify storage txstr env.charset set from storage txstr:io charset
data modify storage txstr env.callback set from storage txstr:io callback
data modify storage txstr env.args set from storage txstr:io args
data modify storage txstr env.split set from storage txstr:io split

data modify storage txstr:io string set from storage txstr io.string
data modify storage txstr:io charset set from storage txstr io.charset
data modify storage txstr:io callback set from storage txstr io.callback
data modify storage txstr:io args set from storage txstr io.args
data modify storage txstr:io split set from storage txstr io.split
