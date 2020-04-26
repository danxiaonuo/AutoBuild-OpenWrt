# 路由器固件自动编译
 [![OpenWrt] 
## 支持设备与编译状态：

点击下表中蓝色 “√” 即可跳转到该设备固件下载页面。
| 支持设备/版本(内核) |                          Lean (4.x)                          |                        Offical (5.4)                         |                        Project (5.4)                         |
| :-----------------: | :----------------------------------------------------------: | :----------------------------------------------------------: | :----------------------------------------------------------: |
|    Hiwifi_Hc5962    | [√](https://github.com/danxiaonuo/AutoBuild-OpenWrt/actions?query=workflow%3A%22%E7%BC%96%E8%AF%91x86_64+Lean%27s%E7%9A%84OpenWrt%E5%9B%BA%E4%BB%B6%22) | [√](https://github.com/danxiaonuo/AutoBuild-OpenWrt/actions?query=workflow%3A%22%E7%BC%96%E8%AF%91x86_64+Offical%27s%E7%9A%84OpenWrt%E5%9B%BA%E4%BB%B6%22) | [√](https://github.com/danxiaonuo/AutoBuild-OpenWrt/actions?query=workflow%3A%22%E7%BC%96%E8%AF%91x86_64+Project%27s%E7%9A%84OpenWrt%E5%9B%BA%E4%BB%B6%22) |
|      Newifi_D2      | [√](https://github.com/danxiaonuo/AutoBuild-OpenWrt/actions?query=workflow%3A%22%E7%BC%96%E8%AF%91Newifi_D2+Lean%27s%E7%9A%84OpenWrt%E5%9B%BA%E4%BB%B6%22) | [√](https://github.com/danxiaonuo/AutoBuild-OpenWrt/actions?query=workflow%3A%22%E7%BC%96%E8%AF%91Newifi_D2+Offical%27s%E7%9A%84OpenWrt%E5%9B%BA%E4%BB%B6%22) | [√](https://github.com/danxiaonuo/AutoBuild-OpenWrt/actions?query=workflow%3A%22%E7%BC%96%E8%AF%91Newifi_D2+Project%27s%E7%9A%84OpenWrt%E5%9B%BA%E4%BB%B6%22) |
|     Phicomm-K3      | [√](https://github.com/danxiaonuo/AutoBuild-OpenWrt/actions?query=workflow%3A%22%E7%BC%96%E8%AF%91Phicomm-K3+Lean%27s%E7%9A%84OpenWrt%E5%9B%BA%E4%BB%B6%22) | [√](https://github.com/danxiaonuo/AutoBuild-OpenWrt/actions?query=workflow%3A%22%E7%BC%96%E8%AF%91Phicomm-K3+Offical%27s%E7%9A%84OpenWrt%E5%9B%BA%E4%BB%B6%22) | [√](https://github.com/danxiaonuo/AutoBuild-OpenWrt/actions?query=workflow%3A%22%E7%BC%96%E8%AF%91Phicomm-K3+Project%27s%E7%9A%84OpenWrt%E5%9B%BA%E4%BB%B6%22) |
|       X86_64        | [√](https://github.com/danxiaonuo/AutoBuild-OpenWrt/actions?query=workflow%3A%22%E7%BC%96%E8%AF%91x86_64+Lean%27s%E7%9A%84OpenWrt%E5%9B%BA%E4%BB%B6%22) | [√](https://github.com/danxiaonuo/AutoBuild-OpenWrt/actions?query=workflow%3A%22%E7%BC%96%E8%AF%91x86_64+Offical%27s%E7%9A%84OpenWrt%E5%9B%BA%E4%BB%B6%22) | [√](https://github.com/danxiaonuo/AutoBuild-OpenWrt/actions?query=workflow%3A%22%E7%BC%96%E8%AF%91x86_64+Project%27s%E7%9A%84OpenWrt%E5%9B%BA%E4%BB%B6%22) |

其中：

版本为 Lean 为基于 [Lean 大源码](https://github.com/coolsnowwolf/lede) 编译的固件 (Luci 采用 Lean 版 Luci 18.06 )；

版本为 Offical 为基于 [OpenWrt 官方源码](https://github.com/openwrt/openwrt/tree/master) Master 分支编译的固件 (Luci 采用官方版 Luci 19.07)；

版本为 Project 为基于 [Project-OpenWrt 源码](https://github.com/project-openwrt/openwrt/tree/openwrt-18.06) openwrt-18.06 分支编译的固件，目前在仍处于测试阶段 (Luci 采用 Lean 版 Luci 18.06 )。

## 注意事项：

1. 点击上表中蓝色 “√” 即可跳转到该设备固件下载页面。
2. 固件在每周三凌晨 03:00 拉取 OpenWrt 源码和第三方软件包项目自动编译，默认情况下固件每日编译一次 (config 文件更新时除外)，未逐一经过实机测试，故不保证 100% 可靠性。

## 文件说明:

除提供已编译好的固件外，本项目还提供以下文件:

1. 完整性校验文件: sha256sums
2. OpenWrt 编译配置: config.seed
3. 固件内已集成的软件包列表: openwrt-$target-$subtarget-$devices.manifest
4. OpenWrt 的软件包归档: packages.zip

以上文件可按需下载。

## 鸣谢：

OpenWrt Source Repository:

<https://github.com/openwrt/openwrt/>

Lean's OpenWrt source:

<https://github.com/coolsnowwolf/lede>

CTCGFW's Team:

<https://github.com/project-openwrt>
