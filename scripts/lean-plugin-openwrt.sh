
# 更改默认主题为Argon
rm -rf package/lean/luci-theme-argon
sed -i '/uci commit luci/i\uci set luci.main.mediaurlbase="/luci-static/argon"' package/lean/default-settings/files/zzz-default-settings
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon

#增加 lienol passwall
echo "src-git lienol https://github.com/chenshuo890/lienol-openwrt-package.git" >> feeds.conf.default

# smartdns
svn co https://github.com/pymumu/smartdns/trunk/package/openwrt package/mine/smartdns
svn co https://github.com/project-openwrt/openwrt/trunk/package/ntlf9t/luci-app-smartdns package/mine/luci-app-smartdns
#git clone https://github.com/ujincn/smartdns.git package/mine/smartdns
#git clone https://github.com/ujincn/luci-app-smartdns-compat.git package/mine/luci-app-smartdns-compat
#git clone https://github.com/pymumu/openwrt-smartdns.git package/mine/smartdns
#git clone --branch lede https://github.com/pymumu/luci-app-smartdns.git package/mine/luci-app-smartdns
#svn co https://github.com/kenzok8/openwrt-packages/tree/master/luci-app-smartdns package/mine/luci-app-smartdns

# 复杂的AdGuardHome的openwrt的luci界面
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/mine/luci-app-adguardhome

# 增加openwet常用软件包
#git clone https://github.com/kenzok8/openwrt-packages.git package/mine/

# DiskMan for LuCI (WIP)
# git clone https://github.com/lisaac/luci-app-diskman.git package/mine/luci-app-diskman
# mkdir -p package/mine/parted && cp -i package/mine/luci-app-diskman/Parted.Makefile package/mine/parted/Makefile

# KPR plus+
# git clone https://github.com/project-openwrt/luci-app-koolproxyR.git package/mine/luci-app-koolproxyR

# Server酱
#git clone https://github.com/tty228/luci-app-serverchan.git package/mine/luci-app-serverchan

# FileBrowser
# git clone https://github.com/project-openwrt/FileBrowser.git package/mine/FileBrowser

# 网易云音乐
# git clone https://github.com/project-openwrt/luci-app-unblockneteasemusic.git package/mine/luci-app-unblockneteasemusic

# OpenClash
#git clone https://github.com/vernesong/OpenClash.git package/mine/OpenClash

# 网易云音乐GoLang版本
# git clone https://github.com/project-openwrt/luci-app-unblockneteasemusic-go.git package/mine/luci-app-unblockneteasemusic-go

# 网易云音乐mini
# git clone https://github.com/project-openwrt/luci-app-unblockneteasemusic-mini.git package/mine/luci-app-unblockneteasemusic-mini

# disable usb3.0
# git clone https://github.com/rufengsuixing/luci-app-usb3disable.git package/mine/luci-app-usb3disable

# 管控上网行为
# git clone https://github.com/destan19/OpenAppFilter.git package/mine/OpenAppFilter

# Rclone-OpenWrt
# git clone https://github.com/ElonH/Rclone-OpenWrt.git package/mine/Rclone-OpenWrt
