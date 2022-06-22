import os
import numpy as np

VAL_FILES = 1500
VAL = []
TRAIN = []

def write_list(list, fname):
    with open(fname,'w') as f:
        for word in list:
            f.write(word)
            f.write('\n')

with open("/vol/research/dcase2022/project/speech_vocoder/hifi-gan/LJSpeech-1.1/training.txt","r") as f:
    content = f.readlines()

for line in content:
    line = line.strip()
    TRAIN.append(line)

for i in range(VAL_FILES):
    file = np.random.choice(list(range(len(TRAIN))))
    VAL.append(TRAIN[file])
    TRAIN = TRAIN[:file]+TRAIN[file+1:]

write_list(TRAIN, "train.lst")
write_list(VAL, "val.lst")
