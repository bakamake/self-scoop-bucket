# myAppSettings.psd1 - 示例 PowerShell 数据文件
@{
    # 应用程序基本信息
    Name        = "My Awesome App"
    Version     = "2.1.0"
    Enabled     = $true

    # 功能开关列表
    Features    = @(
        "UserAuthentication",
        "DataCaching",
        "AdvancedReporting"
    )

    # 嵌套的配置信息
    Database    = @{
        Server  = "sql.example.com"
        Port    = 1433
        Name    = "ProductionDB"
    }

    # 日志配置
    Logging     = @{
        Level   = "Information"
        Path    = "C:\Logs\MyApp.log"
    }
}