# 增加 lienol passwall
echo "src-git lienol https://github.com/chenshuo890/lienol-openwrt-package.git" >> feeds.conf.default
# 增加 helloworld
echo "src-git helloworld https://github.com/fw876/helloworld" >> feeds.conf.default
# Add luci-theme-argon
git clone https://github.com/jerrykuku/luci-theme-argon package/danxiaonuo/luci-theme-argon
# smartdns
svn co https://github.com/pymumu/smartdns/trunk/package/openwrt package/danxiaonuo/smartdns
svn co https://github.com/project-openwrt/openwrt/trunk/package/ntlf9t/luci-app-smartdns package/danxiaonuo/luci-app-smartdns
# 复杂的AdGuardHome的openwrt的luci界面
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/danxiaonuo/luci-app-adguardhome
# k3设置
git clone https://github.com/lwz322/luci-app-k3screenctrl.git package/k3/luci-app-k3screenctrl
git clone https://github.com/lwz322/k3screenctrl.git package/k3/k3screenctrl
git clone https://github.com/lwz322/k3screenctrl_build.git package/k3/k3screenctrl_build



