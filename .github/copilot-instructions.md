# Copilot Instructions for self-scoop-bucket

## 项目结构与架构
- `bucket/`：存放所有 Scoop manifest（如 `draw.io.json`），每个文件描述一个软件的安装元数据。
- `bin/`：PowerShell 辅助脚本（如 `checkver.ps1`、`formatjson.ps1`、`checkhashes.ps1`），用于格式化、校验、自动检测更新等。
- `config/`：注册表脚本、说明文档等辅助文件，不直接参与 Scoop 安装流程。

## Manifest 约定
- 每个 manifest 为独立 JSON 文件，命名为 `<app>.json`，放在 `bucket/` 下。
- 字段需遵循 Scoop 官方规范，常见字段有：
  - `version`、`description`、`homepage`、`license`
  - `architecture`（支持多架构，需指定 `url`、`hash` 等）
  - `bin`（主程序可执行文件名）、`shortcuts`（开始菜单快捷方式）
  - `checkver`、`autoupdate`（自动检测/更新版本）
- 如需特殊安装/卸载逻辑，可用 `pre_install`、`post_install`、`uninstaller` 字段，建议用 PowerShell 语法。

## 关键开发/维护流程
- 新增或更新 manifest 后，建议依次运行：
  1. `bin/formatjson.ps1` 格式化 JSON
  2. `bin/checkver.ps1` 检查版本
  3. `bin/checkhashes.ps1` 校验 hash
  4. `bin/checkurls.ps1` 检查下载链接
- 所有脚本均为 PowerShell 脚本，需在 Windows 环境下运行。
- 建议通过 Pull Request 协作，保持 manifest 规范和一致性。

## 典型文件示例
- Manifest 示例：`bucket/draw.io.json`
- 辅助脚本：`bin/checkver.ps1`、`bin/formatjson.ps1`

## 其他约定
- `config/` 下内容仅供参考，不直接参与 Scoop 流程。
- 遵循 Scoop 社区最佳实践，避免非必要的自定义行为。

---
如有不明确之处，请反馈以便进一步完善说明。
