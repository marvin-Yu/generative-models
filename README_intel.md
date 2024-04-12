# Generative Models by Stability AI

## Prepare the environment

```shell
# install required packages from pypi
conda create -n svd python=3.10
conda activate svd

conda install -y jemalloc
pip3 install -r requirements/pt2.txt
```

## Downlaod the model weight
模型文件放到: `checkpoints/svd_xt_1_1.safetensors` 中.

https://huggingface.co/stabilityai/stable-video-diffusion-img2vid-xt-1-1

## Start demo

```shell
bash run.sh

# 1. Model Version -> svd_xt
# 2. Input -> 选择图片 (忽略TypeError: randn_like(): argument 'input' (position 1) must be Tensor, not NoneType错误)
# 3. 点击 Sample 按钮
```

## Issues

- FileNotFoundError: [Errno 2] No such file or directory: 'outputs/demo/vid/svd_xt/samples/000001_h264.mp4'
    不影响输出, `sh: ffmpeg: command not found` 本地可能 ffmpeg没有安装.