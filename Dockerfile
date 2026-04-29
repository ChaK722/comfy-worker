# 1. 采用官方提供的 Serverless 基础镜像 (请确认最新版本号)
FROM runpod/worker-comfyui:5.1.0-base

# 2. 安装你列表中所有的自定义节点
RUN comfy-node-install \
    https://github.com/Comfy-Org/ComfyUI-Manager \
    https://github.com/ltdrdata/ComfyUI-Impact-Pack \
    https://github.com/ltdrdata/ComfyUI-Impact-Subpack \
    https://github.com/yolain/ComfyUI-Easy-Use \
    https://github.com/ssitu/ComfyUI_UltimateSDUpscale \
    https://github.com/rgthree/rgthree-comfy \
    https://github.com/alexopus/ComfyUI-Image-Saver \
    https://github.com/kijai/ComfyUI-KJNodes \
    https://github.com/willmiao/ComfyUI-Lora-Manager \
    https://github.com/pythongosssss/ComfyUI-Custom-Scripts \
    https://github.com/Miosp/ComfyUI-FBCNN \
    https://github.com/Fannovel16/comfyui_controlnet_aux \
    https://github.com/cubiq/ComfyUI_IPAdapter_plus \
    https://github.com/KohakuBlueleaf/z-tipo-extension \
    https://github.com/pamparamm/ComfyUI-ppm \
    https://github.com/1038lab/ComfyUI-QwenVL

# 3. 清理安装过程中产生的缓存，缩减最终镜像的体积
RUN rm -rf /root/.cache/pip
