
local connect = {
	{
		["color"] = Config.Color,
		["title"] = Config.Tit,
		["description"] = Config.Desc,
	}
}
PerformHttpRequest(Config.Webhook, function(err, text, headers) end, 'POST', json.encode({username = Config.Name,  avatar_url = Config.Avatar,embeds = connect}), { ['Content-Type'] = 'application/json' })

PerformHttpRequest(Config.Webhook, function(Error, Content, Head) end, 'POST', json.encode({username = Config.Name, avatar_url = Config.Avatar, content = Config.Message}), { ['Content-Type'] = 'application/json' })

