# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/mnt/bn/lqhaoheliu/miniconda/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/mnt/bn/lqhaoheliu/miniconda/etc/profile.d/conda.sh" ]; then
        . "/mnt/bn/lqhaoheliu/miniconda/etc/profile.d/conda.sh"
    else
        export PATH="/mnt/bn/lqhaoheliu/miniconda/bin:$PATH"
    fi
fi

unset __conda_setup
# <<< conda initialize <<<
conda activate bigvgan

export PATH=/mnt/bn/lqhaoheliu/miniconda/envs/bigvgan/bin:$PATH

which python

# cp -r /mnt/bn/lqhaoheliu/home_cache/* ~/.cache

python train.py --config config_v1.json 