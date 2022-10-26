# queueから取り出し、必要なデータを整理する
data modify storage txstr env set from storage txstr queue[0]
data remove storage txstr queue[0]

# tellraw @a {"storage":"txstr","nbt":"env"}