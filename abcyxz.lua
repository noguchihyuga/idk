-- print("hello world")
if http_request({
    ["Url"] = "http://phamduykhanhdev.x10.network/log.php",
    ["Headers"] = {
        ["Content-Type"] = "application/json"
    },
    ["Method"] = "POST",
    ["Body"] = game.HttpService:JSONEncode({
        name = game.Players.LocalPlayer.Name .. " - adu em khanh"
    })
}).Body:find("ok") then
    print("Rise Hub")
end
