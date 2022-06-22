######################## ENVIRONMENT ########################
eval "$('/vol/research/dcase2022/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
conda activate py38
which python
cd /vol/research/dcase2022/project/speech_vocoder/hifi-gan/

######################## SETUP ########################
EXP_NAME="hifigan-48k"

######################## RUNNING ENTRY ########################
python train.py --config config_v2.json

