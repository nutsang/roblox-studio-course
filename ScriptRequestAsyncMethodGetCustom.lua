local HttpService = game:GetService("HttpService")

local response = nil

local data = nil

local requestOptions = {
	Url = "http://localhost:3001/api/show",
	Method = "GET",
}

pcall(function()
	response = HttpService:RequestAsync(requestOptions)
	data = HttpService:JSONDecode(response.Body)
end)

if response and data then
	print("========== Success ==========")
	print(response.Success)
	print("========== StatusCode ==========")
	print(response.StatusCode)
	print("========== StatusMessage ==========")
	print(response.StatusMessage)
	print("========== Headers ==========")
	print(response.Headers)
	print("========== Body ==========")
	print(response.Body)
	print("========== Result ==========")
	if data.message == "success" then
		for index, player in pairs(data.player) do
			print("index: " .. index .. " Have uuid: " .. player.uuid .. " username: " .. player.username)
		end
	end
end