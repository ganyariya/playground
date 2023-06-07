#!/usr/bin/python3

import os
import sys
import mmap
from sys import byteorder

PAGE_SIZE = 4096

data = 1000
print("子プロセス生成前のデータの値: {}".format(data))

# MAP_SHARED
# 共有メモリを確保して、複数のプロセスから同じメモリを共有する
shared_memory = mmap.mmap(-1, PAGE_SIZE, flags=mmap.MAP_SHARED)

shared_memory[0:8] = data.to_bytes(8, byteorder)

pid = os.fork()
if pid < 0:
    print("fork()に失敗しました", file=os.stderr)
elif pid == 0:
    # 親プロセスが書き込んだ共有メモリから int として読み取って 2 倍する
    data = int.from_bytes(shared_memory[0:8], byteorder)
    data *= 2
    shared_memory[0:8] = data.to_bytes(8, byteorder)
    sys.exit(0)

os.wait()
data = int.from_bytes(shared_memory[0:8], byteorder)
print("子プロセス終了後のデータの値: {}".format(data))
