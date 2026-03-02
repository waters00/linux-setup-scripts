# Ubuntu 开发环境一键配置脚本

一个用于快速配置 Ubuntu 开发环境的 Shell 脚本，自动安装常用的开发工具和软件，助你快速搭建开发环境。

## 📑 目录

- [功能特性](#-功能特性)
- [环境要求](#-环境要求)
- [快速开始](#-快速开始)
- [注意事项](#️-注意事项)
- [安装清单详情](#-安装清单详情)
- [自定义](#-自定义)
- [常见问题](#-常见问题)

## ✨ 功能特性

本脚本将自动安装并配置以下工具：

| 类别 | 工具 | 说明 |
|------|------|------|
| **Python** | python3-dev, pip, setuptools | Python 开发环境 |
| **终端** | zsh, Oh My Zsh, tree | 增强型终端体验 |
| **编辑器** | SpaceVim | 现代化 Vim 配置 |
| **容器** | Docker, docker-compose, Portainer | 容器化开发环境 |
| **开发工具** | Jupyter, httpie, thefuck | 数据科学、API 测试、命令纠错 |
| **工具** | unzip, git aliases | 压缩解压、Git 别名配置 |

## 📋 环境要求

- **系统**：Ubuntu / Debian 及其衍生版
- **权限**：需要 root 或 sudo 权限
- **网络**：需要可访问互联网

## 🚀 快速开始

### 方式一：直接执行（需要 root 权限）

```bash
sudo bash ubuntu.sh
```

### 方式二：使用 sudo

```bash
chmod +x ubuntu.sh
sudo ./ubuntu.sh
```

## ⚠️ 注意事项

1. **交互式安装**：部分安装（如 Oh My Zsh、SpaceVim）会提示交互，需要根据提示完成
2. **Portainer**：脚本会启动 Portainer 容器，默认访问地址为 `http://localhost:9000`
3. **系统更新**：建议先执行 `sudo apt update` 再运行脚本
4. **执行时间**：完整安装可能需要数分钟，取决于网络速度

## 📦 安装清单详情

- **Python 环境**：python3-dev, pip3, setuptools
- **Oh My Zsh**：来自 [robbyrussell/oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
- **SpaceVim**：来自 [SpaceVim](https://spacevim.org/)
- **Docker 生态**：docker, docker-compose, Portainer（Web 管理界面）
- **Git 别名**：`co`(checkout), `br`(branch), `ci`(commit), `st`(status) 等

## 🔧 自定义

如需修改或跳过某些安装步骤，可编辑 `ubuntu.sh` 文件，注释掉不需要的部分：

```bash
# 例如跳过 Portainer 安装，注释以下行：
# docker run -d -p 9000:9000 ...
```

## ❓ 常见问题

**Q: 脚本执行失败怎么办？**  
A: 建议先单独执行 `sudo apt update`，确保网络正常后再运行脚本。

**Q: Oh My Zsh 或 SpaceVim 安装卡住？**  
A: 这两者会弹出交互式提示，按照屏幕说明操作即可。

**Q: Portainer 已存在如何重新安装？**  
A: 先执行 `docker stop portainer && docker rm portainer` 再运行脚本，或注释掉脚本中的 Portainer 相关行。

## 📄 许可

MIT License
