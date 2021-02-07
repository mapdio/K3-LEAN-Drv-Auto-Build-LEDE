#!/bin/bash

# Description: OpenWrt DIY script run after Update feeds

# 移除feed里重复组件

rm -rf feeds/packages/net/kcptun
rm -rf feeds/kenzok8/redsocks2

# 替换驱动

# mv -f $GITHUB_WORKSPACE/phicommk3-firmware-brcmfmac4366c-pcie.bin.69027 package/lean/k3-brcmfmac4366c-firmware/files/lib/firmware/brcm/brcmfmac4366c-pcie.bin
