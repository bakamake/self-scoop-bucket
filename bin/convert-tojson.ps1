#This tool convert psd1 manifest file
#The scripts in JSON manifests for Scoop are hard to manage on Windows cmd/pwsh env because something that like UNC path characters require escaping.
#PowerShell's .psd1 data format natively supports these characters, offering a cleaner alternative.
#This script can serialize .psd1 files into JSON, making manifest authoring much easier.
#这份脚本遵循scoop bucket bin 下其他脚本一致或类似的使用体验-直接调用该脚本,无需参数,自动为你bucket下的psd1 doc生成同名json manifest,但是各种命名标准有待统一



$bucketpath = Split-Path $PSScriptRoot | Join-Path -ChildPath "bucket"
Get-ChildItem $bucketpath *.psd1 | Convert-ToJson
function Convert-ToJson {
    [CmdletBinding(DefaultParameterSetName = 'Path')]
    [OutputType([string])]
    param(
        [Parameter(ParameterSetName = 'Path', Mandatory = $true, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true)]
        [ValidateScript({
            if (-not (Test-Path -Path $_ -PathType Leaf)) {
                throw " Cannot find path $_ because it does not exist. "
            }
            return $true
        })]
        [string[]]$Path,

        [Parameter(ParameterSetName = 'LiteralPath', Mandatory = $true, ValueFromPipelineByPropertyName = $true)]
        [ValidateScript({
            if (-not (Test-Path -LiteralPath $_ -PathType Leaf)) {
                throw " Cannot find path $_ because it does not exist. "
            }
            return $true
        })]
        [string[]]$LiteralPath,

        [Parameter()]
        [int]$Depth = 10
    )

    begin {
        Write-Verbose "Convert-ToJson ..."
    }

    process {
        # 根据参数集确定要处理的文件路径
        $filesToProcess = $PSBoundParameters.ContainsKey('Path') ? $Path : $LiteralPath

        foreach ($p in $filesToProcess) {
            try {
                Write-Output "正在处理文件: $p"
                
                # 使用 Import-PowerShellDataFile 安全地加载数据
                # 它会自动处理 Path 和 LiteralPath 的差异
                $data = Import-PowerShellDataFile -LiteralPath $p
                Write-Output "成功从 $p 导入数据。"

                # 将数据转换为 JSON
                $jsonOutput = $data | ConvertTo-Json -Depth $Depth
                Write-Output "已将 $p 的数据转换为 JSON。"

                # 输出 JSON 字符串
                Write-Output $jsonOutput
                $bucketpath = Split-Path $PSScriptRoot | Join-Path -ChildPath "bucket"
                $jsonOutput >  $bucketpath\
            }
            catch {
                # 捕获并处理在导入或转换过程中发生的错误
                Write-Error $($_.Exception.Message)
            }
        }
    }

    end {
        Write-Host Done -ForegroundColor Green
    }
}


