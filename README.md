## Flutter Windows 笔记应用

一个简单的桌面笔记应用，使用Flutter开发，支持Windows平台。

### 功能特性

- ✅ **笔记管理** - 创建、编辑、删除笔记
- ✅ **搜索功能** - 支持按标题和内容搜索
- ✅ **数据持久化** - 使用Hive数据库本地存储
- ✅ **响应式UI** - 适配桌面使用体验
- ✅ **日期时间** - 自动记录创建和修改时间

### 项目结构

```
notes_app/
├── lib/
│   ├── models/
│   │   ├── note.dart          # 笔记数据模型
│   │   └── note_adapter.dart  # Hive适配器
│   ├── services/
│   │   └── notes_repository.dart # 数据存储服务
│   ├── ui/
│   │   ├── notes_list_page.dart  # 笔记列表页面
│   │   └── note_edit_page.dart   # 笔记编辑页面
│   └── main.dart              # 应用入口
├── pubspec.yaml              # 依赖配置
└── windows/                  # Windows平台配置
```

### 技术栈

- **Flutter 3.0+** - 跨平台UI框架
- **Hive** - 轻量级NoSQL数据库
- **Material Design 3** - 现代化UI设计

### 运行要求

- Windows 10或更高版本
- Flutter SDK
- Visual Studio (用于Windows开发)

### 构建说明

```bash
# 启用Windows平台
flutter create --platforms=windows .

# 运行应用
flutter run -d windows

# 构建发布版本
flutter build windows
```

### 使用说明

1. 启动应用后显示笔记列表
2. 点击右下角"+"按钮创建新笔记
3. 点击现有笔记进行编辑
4. 长按笔记可删除
5. 使用搜索图标进行笔记搜索

### 数据存储

笔记数据存储在本地文件系统中：
- Windows: `%APPDATA%\notes_app`
- 使用Hive数据库格式，数据自动加密