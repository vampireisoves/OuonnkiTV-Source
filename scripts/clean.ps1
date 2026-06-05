# 清理流水线产生的所有中间文件和输出
$root = Split-Path -Parent $PSScriptRoot

$paths = @(
  "$root\tv_source\LunaTV",
  "$root\tv_source\OuonnkiTV",
  "$root\log.txt"
)

foreach ($p in $paths) {
  if (Test-Path $p) {
    Remove-Item $p
    Write-Host "已删除: $p"
  }
}

Write-Host "`n清理完成"
