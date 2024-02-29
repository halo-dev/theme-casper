## 介绍

一款适用于博客场景的 Halo 主题。

该主题移植自 [Ghost](https://github.com/TryGhost) 默认主题 Casper，非常感谢做出这么优秀的主题。

原主题地址：[https://github.com/TryGhost/Casper](https://github.com/TryGhost/Casper)

![index](./screenshot.jpeg)

[预览地址](https://demo.halo.run/?preview-theme=theme-casper)

## 使用方式

1. 手动从以下地址下载主题包并在 Console 的主题管理界面安装，安装方式可参考：<https://docs.halo.run/user-guide/themes>

    - https://www.halo.run/store/apps/app-rpcyT
    - https://github.com/halo-dev/theme-casper/releases

3. 如果安装了[应用市场](https://www.halo.run/store/apps/app-VYJbF)插件，可以直接在应用市场中搜索`Casper`并安装。

## 开发

```bash
git clone git@github.com:halo-dev/theme-casper.git ~/halo2-dev/themes/theme-casper
```

```bash
cd ~/halo2-dev/themes/theme-earth
```

```bash
pnpm install 
```

```bash
pnpm dev
```

主题开发文档可查阅：<https://docs.halo.run/2.0.0-SNAPSHOT/developer-guide/theme/prepare>

## 构建打包

```bash
pnpm build
pnpm zip
```

然后在 `dist` 目录可以看到 `zip` 格式的主题包，在 Halo 后台上传安装即可。

