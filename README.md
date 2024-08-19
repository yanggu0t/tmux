# Tmux Catppuccin 主題安裝指南

本指南將幫助您安裝 Tmux 並配置 Catppuccin 主題。

## 步驟 0: 安裝 Tmux

根據您的操作系統，選擇適合的安裝方法：

### 使用 apt-get（適用於 Ubuntu 和 Debian 系統）:

```bash
sudo apt-get update
sudo apt-get install tmux
```

### 使用 Homebrew（適用於 macOS 或 Linux）:

如果您還沒有安裝 Homebrew，請先安裝它：

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

然後使用 Homebrew 安裝 Tmux：

```bash
brew install tmux
```

安裝完成後，您可以通過運行 `tmux --version` 來確認安裝是否成功。

## 步驟 1: 安裝 Tmux 包管理器 (TPM) 並複製配置文件

確保您已經安裝了 Tmux 包管理器 (TPM)。如果還沒有安裝，可以使用以下命令：

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

```bash
git clone https://github.com/yanggu0t/tmux
```

然後在 clone 下的目錄中，複製 Tmux 配置文件到您的主目錄：

```bash
cp .tmux.conf ~/.tmux.conf
```

## 步驟 2: 編輯 Tmux 配置文件

編輯您的 Tmux 配置文件：

```bash
vim ~/.tmux.conf
```

## 步驟 3: 添加配置

在您的 Tmux 配置文件中加入以下內容：

```tmux
# 插件
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'catppuccin/tmux'

# 其他設置...

# 初始化 TMUX 插件管理器（保持在配置文件的最底部）
run '~/.tmux/plugins/tpm/tpm'
```

## 步驟 4: 重新加載 Tmux 配置

保存並關閉配置文件後，重新加載 Tmux 配置：

1. 如果您在 Tmux 會話中，按 `prefix` + `I` (大寫 i) 來安裝插件。
2. 或者，您可以重新啟動 Tmux。

現在，您應該已經成功安裝了 Catppuccin 主題！享受您的新 Tmux 外觀吧！
