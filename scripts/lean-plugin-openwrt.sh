# 增加 lienol passwall
echo "src-git lienol https://github.com/chenshuo890/lienol-openwrt-package.git" >> feeds.conf.default

# 更改默认主题为Argon
rm -rf package/lean/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon

# smartdns
svn co https://github.com/pymumu/smartdns/trunk/package/openwrt package/danxiaonuo/smartdns
svn co https://github.com/project-openwrt/openwrt/trunk/package/ntlf9t/luci-app-smartdns package/danxiaonuo/luci-app-smartdns
#git clone https://github.com/ujincn/smartdns.git package/danxiaonuo/smartdns
#git clone https://github.com/ujincn/luci-app-smartdns-compat.git package/danxiaonuo/luci-app-smartdns-compat
#git clone https://github.com/pymumu/openwrt-smartdns.git package/danxiaonuo/smartdns
#git clone --branch lede https://github.com/pymumu/luci-app-smartdns.git package/danxiaonuo/luci-app-smartdns
#svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-smartdns package/danxiaonuo/luci-app-smartdns

# 复杂的AdGuardHome的openwrt的luci界面
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/danxiaonuo/luci-app-adguardhome

#Server酱
git clone https://github.com/tty228/luci-app-serverchan.git package/danxiaonuo/luci-app-serverchan

# 增加openwet常用软件包
#git clone https://github.com/kenzok8/openwrt-packages.git package/danxiaonuo/

# DiskMan for LuCI (WIP)
# git clone https://github.com/lisaac/luci-app-diskman.git package/danxiaonuo/luci-app-diskman
# mkdir -p package/danxiaonuo/parted && cp -i package/danxiaonuo/luci-app-diskman/Parted.Makefile package/danxiaonuo/parted/Makefile

# KPR plus+
# git clone https://github.com/project-openwrt/luci-app-koolproxyR.git package/danxiaonuo/luci-app-koolproxyR

# FileBrowser
# git clone https://github.com/project-openwrt/FileBrowser.git package/danxiaonuo/FileBrowser

# 网易云音乐
# git clone https://github.com/project-openwrt/luci-app-unblockneteasemusic.git package/danxiaonuo/luci-app-unblockneteasemusic

# OpenClash
#git clone https://github.com/vernesong/OpenClash.git package/danxiaonuo/OpenClash

# 网易云音乐GoLang版本
# git clone https://github.com/project-openwrt/luci-app-unblockneteasemusic-go.git package/danxiaonuo/luci-app-unblockneteasemusic-go

# 网易云音乐mini
# git clone https://github.com/project-openwrt/luci-app-unblockneteasemusic-mini.git package/danxiaonuo/luci-app-unblockneteasemusic-mini

# disable usb3.0
# git clone https://github.com/rufengsuixing/luci-app-usb3disable.git package/danxiaonuo/luci-app-usb3disable

# 管控上网行为
# git clone https://github.com/destan19/OpenAppFilter.git package/danxiaonuo/OpenAppFilter

# Rclone-OpenWrt
# git clone https://github.com/ElonH/Rclone-OpenWrt.git package/danxiaonuo/Rclone-OpenWrt

# k3设置
rm -rf package/lean/k3screenctrl
git clone https://github.com/lwz322/luci-app-k3screenctrl.git package/k3/luci-app-k3screenctrl
git clone https://github.com/lwz322/k3screenctrl.git package/k3/k3screenctrl
git clone https://github.com/lwz322/k3screenctrl_build.git package/k3/k3screenctrl_build

# 删除默认配置
rm -rf package/lean/default-settings
