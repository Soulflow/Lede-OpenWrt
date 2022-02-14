#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

sed -i 's/192.168.1.1/192.168.6.5/g' package/base-files/files/bin/config_generate
sed -i 's/OpenWrt/SZ-MB/g' package/base-files/files/bin/config_generate
sed -i 's/ntp.aliyun.com/time.windows.com/g' package/base-files/files/bin/config_generate
sed -i 's/time1.cloud.tencent.com/time.cloudflare.com/g' package/base-files/files/bin/config_generate
sed -i 's/time.ustc.edu.cn/time1.google.com/g' package/base-files/files/bin/config_generate
sed -i 's/cn.pool.ntp.org/time.apple.com/g' package/base-files/files/bin/config_generate
sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap
cd lede/package/lean
rm -rf luci-theme-argon
rm -rf package/lean/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' ./feeds/luci/collections/luci/Makefile
