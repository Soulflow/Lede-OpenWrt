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

sed -i 's/zh_cn/auto/g' package/lean/default-settings/files/zzz-default-settings
sed -i 's/Shanghai/Taipei/g' package/lean/default-settings/files/zzz-default-settings
sed -i 's/zh_cn/auto/g' feeds/luci/modules/luci-base/root/etc/uci-defaults/luci-base
sed -i 's/192.168.1.1/192.168.6.5/g' package/base-files/files/bin/config_generate
sed -i 's/OpenWrt/Github_SZ-MB/g' package/base-files/files/bin/config_generate
sed -i 's/ntp.aliyun.com/time.windows.com/g' package/base-files/files/bin/config_generate
sed -i 's/time1.cloud.tencent.com/time.cloudflare.com/g' package/base-files/files/bin/config_generate
sed -i 's/time.ustc.edu.cn/time1.google.com/g' package/base-files/files/bin/config_generate
sed -i 's/cn.pool.ntp.org/time.apple.com/g' package/base-files/files/bin/config_generate
sed -i 's/luci-theme-bootstrap/luci-theme-argonne/g' feeds/luci/collections/luci/Makefile
sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap
sed -i 's/luci-theme-bootstrap/luci-theme-argonne/g' ./feeds/luci/collections/luci/Makefile
