repeat wait() until game:IsLoaded()
local place = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

local noExec = 
{
    "World 1",
    "World 2",
    "World 3",
    "World 4",
    "World 5",
    "World 6",
    "World 7",
    "World 8",
    "World 9",
    "Market",
    "PvP Arena",
}

if (not table.find(noExec, place)) then
	getgenv().filler = false
	getgenv().perks = 
	{
		"boss of the boss 30",
		"crit stack 15",
		"attack up 8",
		"glass 100",
		--"damage reduction 8",
		--"untouchable 20",
		--"boss of the boss 29",
		--"crit stack 14",
		--"attack up 7",
		--"glass 99",
		--"untouchable 19",
		"mob boss 30",
		--"mob boss 29",
		--"life drain 6",
	}
	loadstring(game:HttpGet("https://pastebin.com/raw/Ci5SLBK3"))()
end

