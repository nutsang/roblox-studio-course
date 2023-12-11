local HttpService = game:GetService("HttpService")

local URL_PLAYER = "http://localhost:3001/api/added"

local data = {
	uuid = HttpService:GenerateGUID(false),
	username = "Player"
}

local response = nil

pcall(function()
	response = HttpService:PostAsync(URL_PLAYER, HttpService:JSONEncode(data), Enum.HttpContentType.ApplicationJson, true, {["HttpRequestType"] = "Default"})	
end)

if response then
	print(HttpService:JSONDecode(response).message)
end