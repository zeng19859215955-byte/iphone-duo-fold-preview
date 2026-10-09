# 本地运行与 GitHub Pages

本地地址：http://127.0.0.1:8766/

双击 `start-local.command`，或在项目目录运行 `bash start-local.command`。
终端关闭、进程退出或电脑重启后，本地服务会停止；重新运行即可。

首次准备资源：

```sh
python3 -m venv .venv
.venv/bin/python -m pip install -r requirements-assets.txt
.venv/bin/python scripts/prepare-assets.py
```

若 macOS Python 报缺少 CA 证书，可使用系统证书包：

```sh
SSL_CERT_FILE=/etc/ssl/cert.pem .venv/bin/python scripts/prepare-assets.py
```

## 公网部署

仓库：https://github.com/zeng19859215955-byte/iphone-duo-fold-preview

网站：https://zeng19859215955-byte.github.io/iphone-duo-fold-preview/

GitHub Pages 使用 `.github/workflows/pages.yml`。每次推送到 `main`，
工作流使用 Python 3.12 和原始资源脚本下载 Apple 资源、生成 USDC，再发布静态网页。
发布目录只包含网页、vendor、生成的模型、纹理和 UI；不包含虚拟环境、原始 USDZ 或本地配置。

应用源码来自 https://github.com/chuspeeism/iphone-duo ，保留原始动画实现及许可。
Apple 资源说明见 `THIRD_PARTY_NOTICES.md`。
