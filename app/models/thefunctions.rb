def Weather(spot)
	hasher = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/#{spot}")
	return hasher
end

def currenttemperature(weather_info)
	weather_info["currently"]["temperature"]
end


def currentsum(weather_info)
	weather_info["currently"]["summary"]
end

def hourlyinfo(weather_info)
	weather_info["hourly"]["data"]
end

def dailyinfo(weather_info)
	weather_info["daily"]["data"]
end