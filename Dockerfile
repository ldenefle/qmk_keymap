FROM ghcr.io/qmk/qmk_cli:latest

RUN mkdir qmk-keymap && \
    git clone https://github.com/qmk/qmk_firmware --recurse-submodules --branch 0.24.6 /qmk-firmware && \
    qmk setup -H /qmk-firmware && \
    qmk config user.qmk_home=/qmk-firmware

WORKDIR /qmk-keymap

CMD [ "qmk", "userspace-compile"]


