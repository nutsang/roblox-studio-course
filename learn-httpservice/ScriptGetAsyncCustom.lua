local HttpService = game:GetService("HttpService")

local URL_PLAYER = "http://localhost:3001/api/show"

local response = nil

local data = nil

pcall(function()
	response = HttpService:GetAsync(URL_PLAYER)
	data = HttpService:JSONDecode(response)
end)

if response and data then
	if data.message == "success" then
		for index, player in pairs(data.player) do
			print("index: " .. index .. " Have uuid: " .. player.uuid .. " username: " .. player.username)
		end
	end
end