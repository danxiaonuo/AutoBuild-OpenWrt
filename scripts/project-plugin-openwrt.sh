# 增加 luci-theme-argon
git clone https://github.com/jerrykuku/luci-theme-argon.git package/danxiaonuo/luci-theme-argon
# 删除 r8168 driver
rm -rf package/ctcgfw/r8168
# 删除 phicomm-k3screenctrl
rm -rf package/zxlhhyccc/phicomm-k3screenctrl
# k3设置
git clone https://github.com/lwz322/luci-app-k3screenctrl.git package/k3/luci-app-k3screenctrl
git clone https://github.com/lwz322/k3screenctrl.git package/k3/k3screenctrl
git clone https://github.com/lwz322/k3screenctrl_build.git package/k3/k3screenctrl_build
