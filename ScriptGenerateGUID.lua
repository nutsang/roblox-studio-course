local HttpService = game:GetService("HttpService")
local resultOfWarpInCurlyBracesTrue = HttpService:GenerateGUID(true)
local resultOfWarpInCurlyBracesFalse = HttpService:GenerateGUID(false)

print("resultOfWarpInCurlyBracesTrue: " .. resultOfWarpInCurlyBracesTrue)
print("resultOfWarpInCurlyBracesFalse: " .. resultOfWarpInCurlyBracesFalse)