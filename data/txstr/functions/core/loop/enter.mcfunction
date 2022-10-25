# リピートコマブロから呼び出す処理

# ループ回数をリセット
data modify storage txstr loop.count set from storage txstr:io max_loop

# コマンド実行が無限ループするように設定
data modify block 29999984 1 43381 UpdateLastExecution set value 0b