#coding:utf8

import threading
import time
import random

import sample

print sample


def worker():
    st = time.time()
    ret = sample.ndf1_nogil()
    print time.time() - st, ret

sample.init_model(123)

threads = []
for i in xrange(10):
    t = threading.Thread(target=worker)
    t.start()
    threads.append(t)

for t in threads:
    t.join()
