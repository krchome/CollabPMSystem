# PowerShell Script: setup_CollabPMSystem.ps1
# Purpose: Automate layered ASP.NET Core project setup

Write-Host "Creating solution..."
dotnet new sln -n CollabPMSystem

Write-Host "Creating Core project..."
dotnet new classlib -n CollabPMSystem.Core -o src/CollabPMSystem.Core
dotnet sln add src/CollabPMSystem.Core/CollabPMSystem.Core.csproj

Write-Host "Creating Infrastructure project..."
dotnet new classlib -n CollabPMSystem.Infrastructure -o src/CollabPMSystem.Infrastructure
dotnet sln add src/CollabPMSystem.Infrastructure/CollabPMSystem.Infrastructure.csproj
dotnet add src/CollabPMSystem.Infrastructure/CollabPMSystem.Infrastructure.csproj reference src/CollabPMSystem.Core/CollabPMSystem.Core.csproj

Write-Host "Creating API project..."
dotnet new webapi -n CollabPMSystem.Api -o src/CollabPMSystem.Api
dotnet sln add src/CollabPMSystem.Api/CollabPMSystem.Api.csproj
dotnet add src/CollabPMSystem.Api/CollabPMSystem.Api.csproj reference src/CollabPMSystem.Core/CollabPMSystem.Core.csproj
dotnet add src/CollabPMSystem.Api/CollabPMSystem.Api.csproj reference src/CollabPMSystem.Infrastructure/CollabPMSystem.Infrastructure.csproj

Write-Host "Building solution..."
dotnet build

Write-Host "Opening solution in Visual Studio..."
Start-Process CollabPMSystem.sln

# SIG # Begin signature block
# MIIFggYJKoZIhvcNAQcCoIIFczCCBW8CAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQU8NwA7QeoNqjNpkJ6gKPLGOwG
# 8migggMWMIIDEjCCAfqgAwIBAgIQZQ6NwmgO055BVqbHqOCnUTANBgkqhkiG9w0B
# AQsFADAhMR8wHQYDVQQDDBZQb3dlclNoZWxsU2NyaXB0U2lnbmVyMB4XDTI1MDcy
# MDAxNDE0MFoXDTI2MDcyMDAyMDE0MFowITEfMB0GA1UEAwwWUG93ZXJTaGVsbFNj
# cmlwdFNpZ25lcjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALE0U73r
# rYX+k+hOqdKd4vZzp06DG13P8umqsrZewmoMoSdjIJ8OznY1vLmogEsQd42juu9v
# +s0bSxdovNdOUPYXVkeK+1o7Pimko2OdldCUwyBlByNOSm07HHEQYuBjkASjrzMy
# GKPAwuZ6lSlVGClglpbO65+ygc8+jpM4BG+Lt1mvrUig1UH3qCs58cJ7b2weDr06
# G8+IzbSxt0WY7dTWwsB6zxNci+V1UOUL2Jmn5/SbaOcT4x8iO9vKkZR7+1JGlZ0/
# qd0L4g12yiX6UqvK0jcGe1gdQyTAGX51lE3D9DBTA/N/xZNbOaCIn7asEYe9DIwJ
# tZsOhSEsV74y+y0CAwEAAaNGMEQwDgYDVR0PAQH/BAQDAgeAMBMGA1UdJQQMMAoG
# CCsGAQUFBwMDMB0GA1UdDgQWBBRY3ttGIzXXPZFta27Aj0rzXkZ7xjANBgkqhkiG
# 9w0BAQsFAAOCAQEAkwuoLMi2s6vSrOrQLi5tUmADGPmvBkzeW+0NFCK4WoDTuKe7
# lvHQ84MCtqBsK/pjdzxohzfcofINOL0LiQkhEWp4FZ4JssvKVTaaMoer/YlcLCmz
# HD8pMXYSHysHvHc83ii9U8DKEoVHJ2GeVNtTVn+T265FoyHDR5UZktgo5V9iZ9mv
# yriieMSwe7GWG328ZCtzkYustGhr79IjxPndGP1MJL3BkhJMyN3tRkYLgQqEvBOS
# QgN90fuhsEQ7+UcjqM72RXcwWNmVNUzdAz/70+8+SejQr7UbLnmdaMydYIBrAgKJ
# 6SXQveeYMjw2Jv7DL8JTaE+2Mk9fG+sapV4rrjGCAdYwggHSAgEBMDUwITEfMB0G
# A1UEAwwWUG93ZXJTaGVsbFNjcmlwdFNpZ25lcgIQZQ6NwmgO055BVqbHqOCnUTAJ
# BgUrDgMCGgUAoHgwGAYKKwYBBAGCNwIBDDEKMAigAoAAoQKAADAZBgkqhkiG9w0B
# CQMxDAYKKwYBBAGCNwIBBDAcBgorBgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAj
# BgkqhkiG9w0BCQQxFgQUgp5y8kGEKXBNCyCx6VGMBKdGeZswDQYJKoZIhvcNAQEB
# BQAEggEAmvTqBShzh8+ocbH0jo60iK0+HbDo8N1xbVOdRnJJDlb8PlEnG19FPckt
# tfaojV2VRxdz/1tP+OJCSXhMW+93h0Jea9oPEXS9ySQo7TePj2YhI0IwUDwZlqTC
# 0vuOKWAAtjX1LWR4RLFMqv7I3fM/SKKaU2jHn0qXiYevP1OCfnNjsyYiUJKG6dwc
# RCTyF8FQd6B3Pvmp3if/KRA370d+9lvOSuzjHI34uQ9JRIouv+PUPRa2UESsyb2X
# EWPQpdGKvyqb9dI4hmjvCDBKzql2xRu2GJEzMgF+oWzUGiBD5a7DjfuZjoLbPnHz
# 8uSOct97itCerzVEYe5nuY6WxQhLcA==
# SIG # End signature block
