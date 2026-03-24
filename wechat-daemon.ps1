# WeChat Claude Code Daemon - Windows
$env:ANTHROPIC_BASE_URL = "https://api.minimaxi.com/anthropic"
$env:ANTHROPIC_API_KEY = "sk-cp-0hNioAq78bEzP6-tNBEi7xkLmGjYjoMVNj4Ae4_O1mpTQRbI2UfHPqd9ecabjoD1oX0-OM49o9-RK6wygmeKlomWG6EGIrfFu_iXw0oM1qQAsttrmXLqkGM"
$projectDir = "D:\programs\myprojects\wechat-claude-code"
$logDir = "$env:USERPROFILE\.wechat-claude-code\logs"

New-Item -ItemType Directory -Path $logDir -Force | Out-Null

$host.UI.RawUI.WindowTitle = "WeChat Bot - MiniMax M2.7"
Write-Host "WeChat Claude Code Bot starting..." -ForegroundColor Cyan
Write-Host "Model: MiniMax-M2.7" -ForegroundColor Green
Write-Host "Project: $projectDir" -ForegroundColor Green
Write-Host "Logs: $logDir" -ForegroundColor Green
Write-Host ""

Set-Location $projectDir
node dist/main.js 2>&1 | Tee-Object -FilePath "$logDir\daemon.log" -Append
