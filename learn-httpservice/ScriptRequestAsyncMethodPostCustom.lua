local HttpService = game:GetService("HttpService")

local response = nil

local data = {
	uuid = HttpService:GenerateGUID(false),
	username = "Player"
}

local requestOptions = {
	Url = "http://localhost:3001/api/added",
	Method = "POST",
	Headers = {
		["Content-Type"] = "application/json"
	},
	Body = HttpService:JSONEncode(data)
}

pcall(function()
	response = HttpService:RequestAsync(requestOptions)
end)

if response then
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
	if response then
		print(HttpService:JSONDecode(response.Body).message)
	end
end