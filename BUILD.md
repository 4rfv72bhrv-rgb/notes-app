## 构建脚本

此脚本用于构建Windows版本的笔记应用。

### 使用方法

1. 确保已安装Flutter SDK和Visual Studio
2. 运行以下命令：

```bash
# 检查Flutter环境
flutter doctor

# 获取依赖
flutter pub get

# 构建Windows应用
flutter build windows

# 或者在调试模式下运行
flutter run -d windows
```

### 输出文件

构建完成后，可执行文件位于：
`build\windows\runner\Release\notes_app.exe`

### 注意事项

- 需要安装Visual Studio的C++桌面开发工具
- 首次构建可能需要较长时间下载依赖
- 确保Windows平台已启用：`flutter config --enable-windows-desktop`