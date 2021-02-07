#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default


# 添加 ssr plus 和passwall 支持源
sed -i '$a src-git kenzok8 https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git small  https://github.com/kenzok8/small' feeds.conf.default
sed -i '$a src-git OpenAppFilter https://github.com/OpenWrt-Actions/OpenAppFilter' feeds.conf.default

# 删除重复插件
rm -rf package/lean/ipt2socks
rm -rf package/lean/dns2socks
rm -rf package/lean/pdnsd-alt
rm -rf package/lean/shadowsocksr-libev
rm -rf package/lean/simple-obfs
rm -rf package/lean/v2ray-plugin
rm -rf package/lean/v2ray
rm -rf package/lean/microsocks
