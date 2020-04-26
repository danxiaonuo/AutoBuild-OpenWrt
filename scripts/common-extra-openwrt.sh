# 增加自定义配置
svn co https://github.com/danxiaonuo/AutoBuild-OpenWrt/trunk/server/default-settings package/danxiaonuo/default-settings
# 增加IPV6
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoBuild-OpenWrt/master/server/etc/99-ipv6 > package/base-files/files/etc/hotplug.d/99-ipv6
sed -i '/exit 0/i\mv /etc/hotplug.d/99-ipv6 /etc/hotplug.d/iface/99-ipv6' package/danxiaonuo/default-settings/files/zzz-default-settings
sed -i '/99-ipv6/a\chmod u+x /etc/hotplug.d/iface/99-ipv6' package/danxiaonuo/default-settings/files/zzz-default-settings
# 修改smartdns配置
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoBuild-OpenWrt/master/server/smartdns/newsmartdns > package/base-files/files/etc/newsmartdns
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoBuild-OpenWrt/master/server/smartdns/smartdns.conf > package/base-files/files/etc/smartdns.conf
sed -i '/exit 0/i\# 修改smartdns配置\nmv /etc/newsmartdns /etc/config/smartdns\nmv /etc/smartdns.conf /var/etc/smartdns/smartdns.conf' package/danxiaonuo/default-settings/files/zzz-default-settings
# 修改系统欢迎词
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoBuild-OpenWrt/master/server/etc/banner > package/base-files/files/etc/banner
# 修改系统内核参数
curl -fsSL https://raw.githubusercontent.com/danxiaonuo/AutoBuild-OpenWrt/master/server/etc/sysctl.conf > package/base-files/files/etc/sysctl.conf
