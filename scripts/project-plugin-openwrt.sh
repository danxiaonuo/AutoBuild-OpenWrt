# 增加 luci-theme-argon
git clone https://github.com/jerrykuku/luci-theme-argon.git package/danxiaonuo/luci-theme-argon
# smartdns
svn co https://github.com/pymumu/smartdns/trunk/package/openwrt package/danxiaonuo/smartdns
svn co https://github.com/project-openwrt/openwrt/trunk/package/ntlf9t/luci-app-smartdns package/danxiaonuo/luci-app-smartdns
# Server酱
rm -rf package/ctcgfw/luci-app-serverchan
git clone https://github.com/tty228/luci-app-serverchan.git package/danxiaonuo/luci-app-serverchan
# 删除 r8168 driver
rm -rf package/ctcgfw/r8168
# 删除 phicomm-k3screenctrl
rm -rf package/zxlhhyccc/phicomm-k3screenctrl
# k3设置
git clone https://github.com/lwz322/luci-app-k3screenctrl.git package/k3/luci-app-k3screenctrl
git clone https://github.com/lwz322/k3screenctrl.git package/k3/k3screenctrl
git clone https://github.com/lwz322/k3screenctrl_build.git package/k3/k3screenctrl_build
# 删除默认配置
rm -rf package/lean/default-settings
rm -rf package/ntlf9t/smartdns
rm -rf package/ntlf9t/luci-app-smartdns
