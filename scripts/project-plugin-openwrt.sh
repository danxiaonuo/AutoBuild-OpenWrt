# 增加 lienol passwall
echo "src-git lienol https://github.com/chenshuo890/lienol-openwrt-package.git" >> feeds.conf.default
# 增加 helloworld
echo "src-git helloworld https://github.com/fw876/helloworld" >> feeds.conf.default
# 增加 lede
echo "src-git lede https://github.com/coolsnowwolf/lede.git" >> feeds.conf.default
# 删除 r8168 driver
rm -rf package/ctcgfw/r8168
# 删除 phicomm-k3screenctrl
rm -rf package/zxlhhyccc/phicomm-k3screenctrl
# k3设置
git clone https://github.com/lwz322/luci-app-k3screenctrl.git package/k3/luci-app-k3screenctrl
git clone https://github.com/lwz322/k3screenctrl.git package/k3/k3screenctrl
git clone https://github.com/lwz322/k3screenctrl_build.git package/k3/k3screenctrl_build
