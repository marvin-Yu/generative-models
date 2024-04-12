ENV_PATH=~/.conda/envs/svd
#
#export ONEDNN_VERBOSE=1
#export MKL_VERBOSE=0
export KMP_BLOCKTIME=1
export KMP_AFFINITY=granularity=fine,compact,1,0
##export LD_PRELOAD=/usr/lib64/libtcmalloc.so:${LD_PRELOAD}
##export LD_PRELOAD=/usr/local/lib/libiomp5.so:${LD_PRELOAD}
#
export LD_PRELOAD=$ENV_PATH/lib/libiomp5.so
export LD_PRELOAD=$ENV_PATH/lib/libjemalloc.so:$LD_PRELOAD
export MALLOC_CONF="oversize_threshold:1,background_thread:true,metadata_thp:auto,dirty_decay_ms:9000000000,muzzy_decay_ms:9000000000"


HF_ENDPOINT=https://hf-mirror.com HF_HUB_ENABLE_HF_TRANSFER=1 numactl -C 0-47 -l streamlit run scripts/demo/video_sampling.py

