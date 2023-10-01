######################## ENVIRONMENT ########################
eval "$('/mnt/fast/nobackup/users/hl01486/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
conda activate fs2
which python

######################## SETUP ########################
EXP_NAME="hifigan-48k"

######################## RUNNING ENTRY ########################
cd /mnt/fast/nobackup/scratch4weeks/hl01486/project/hifi-gan/
python train.py --config config_v1.json

