# 路由器固件自动编译
[![OpenWrt](https://img.shields.io/badge/From-danxiaonuo-blue.svg?style=for-the-badge&logo=appveyor)](https://github.com/danxiaonuo/AutoBuild-OpenWrt)
>固件来源：
[![Lean](https://img.shields.io/badge/Lede-Lean-red.svg?style=flat&logo=appveyor)](https://github.com/coolsnowwolf/lede) 
 [![Lienol](https://img.shields.io/badge/Package-Lienol-blueviolet.svg?style=flat&logo=appveyor)](https://github.com/Lienol/openwrt-package)  [![CTCGFW](https://img.shields.io/badge/OpenWrt-CTCGFW-orange.svg?style=flat&logo=appveyor)](https://github.com/project-openwrt/openwrt) [![UOLA](https://img.shields.io/badge/OpenWrt-UOLA-orange.svg?style=flat&logo=appveyor)](https://github.com/danxiaonuo/uola)
 
 ## 简介：
- 自用 OpenWrt 定制项目
- 若 Fork 项目，请修改代码中自己的 TOKEN ( 项目 Settings/Secrets )

| TOKEN | 释义 |
| :--- | :--- |
| -- EMAIL  | Github用户邮箱 |
| -- TMP_LINK_TOKEN| TMP.link命令行上传文件-生成上传命令到剪贴板-token=xxxxxx |
| -- SCKEY | Server酱SCKEY |
| -- RELEASE_TOKEN | 个人 Settings/Developer settings/Personal access tokens新建获取 |

## 功能：
- 可以支持两种种编译模式
  1. 编译Lean源码(含Lienol Package)
  2. 编译CTCGFW源码(含Lean & Lienol & CTCGFW & Ntlf9t & Zxlhhyccc Package)
  3. 编译UOLA源码
- 自动上传固件
- 自动发布固件
- 自动创建分支
- 自动上传到TMP.link
- 自动上传到奶牛快传

## 变量：

| 变量名 | 释义 |
| :--- | :--- |
| -- REPO_URL: https://github.com/coolsnowwolf/lede.git  | 定义源码 |
| -- REPO_BRANCH: master | 定义分支 |
| -- DIY_P1_SH: scripts/common-extra-openwrt.sh  | 定义脚本文件 |
| -- DIY_P2_SH: scripts/lean-plugin-openwrt.sh  | 定义脚本文件 |
| -- SSH_ACTION: false |是否打开 SSH |
| -- UPLOAD_BRANCH: true | 是否创建分支来存放编译固件及Package |
| -- BRANCH: Newifi_D2-Lean | 分支名称 |
| -- GITHUB_USER_NAME: danxiaonuo | 定义Github用户名 |
| -- GITHUB_USER_EMAIL: ${{ secrets.EMAIL }} |定义Github用户邮箱 |
| -- GITHUB: github.com/danxiaonuo/AutoBuild-OpenWrt.git | 定义上传分支 |
| -- UPLOAD_FIRMWARE: true | 是否上传固件| 
| -- UPLOAD_COWTRANSFER: true | 是否上传固件到奶牛快传 |
| -- UPLOAD_TMP_LINK: true| 上传到TMP.link |
| -- TARGET: ramips | 定义TARGET |
| -- SUBTARGET: mt7621 | 定义SUBTARGET |
| -- CREATE_RELEASE: true | 是否创建发行版本 Release |
| -- BUILD_USER: danxiaonuo | 定义编译者 | 
| -- SEND_WECHAT_MSG: true | 是否微信通知 | 

##  默认配置
### 默认登录IP地址:10.8.1.1
###           用户:root       (路由 & SSH)
###           密码:admin      (路由 & SSH)
###       Wifi密码:password


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

版本为 Project 为基于 [Project-OpenWrt 源码](https://github.com/project-openwrt/openwrt/tree/master) Master 分支编译的固件，目前在仍处于测试阶段 (Luci 采用 Lean 版 Luci 19.07 )。

## 注意事项：

1. 点击上表中蓝色 “√” 即可跳转到该设备固件下载页面。
2. 固件在每周三凌晨 03:00 拉取 OpenWrt 源码和第三方软件包项目自动编译，默认情况下固件每日编译一次 (config 文件更新时除外)，未逐一经过实机测试，故不保证 100% 可靠性。

## 文件说明:

除提供已编译好的固件外，本项目还提供以下文件:

1. 完整性校验文件: sha256sums
2. OpenWrt 编译配置: config.seed
3. 固件内已集成的软件包列表: manifest

以上文件可按需下载。

## 鸣谢：

OpenWrt Source Repository:

<https://github.com/openwrt/openwrt/>

Lean's OpenWrt source:

<https://github.com/coolsnowwolf/lede>

CTCGFW's Team:

<https://github.com/project-openwrt>
