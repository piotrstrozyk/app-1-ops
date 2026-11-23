$ErrorActionPreference = "Stop"
$appid = 570

$url = "https://api.steampowered.com/ISteamNews/GetNewsForApp/v2/?appid=$appid&count=1&maxlength=300&feeds=steam_community_announcements"

$response = Invoke-RestMethod -Uri $url -UseBasicParsing -TimeoutSec 20

Write-Output "Identyfikator gry: $appid"
Write-Output "Liczba graczy online: $($response.response.player_count)"
