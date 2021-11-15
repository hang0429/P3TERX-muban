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

# Modify default IP
sed -i 's/192.168.1.1/192.168.9.1/g' package/base-files/files/bin/config_generate
ZZZ=package/lean/default-settings/files/zzz-default-settings

#设置密码admin
sed -i /$1$0CVWiweD$4Xsq83ZIZtPJe8PVLfqJH0:16357:0:99999:7:::/d $ZZZ


sed -i s/OpenWrt /by WX&QQ:187387176 compiled in $(TZ=UTC-8 date +%Y.%m.%d) @ OpenWrt /g $ZZZ

#修改默认主题为argon
sed -i s/luci-theme-bootstrap/luci-theme-argon/g feeds/luci/collections/luci/Makefile
