require "httparty"
require "pry"

require_relative "thegoodies.rb"

time = Time.new

presentday = time.strftime("%A")
presenthour = time.strftime("%I %p")

days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
hours = ["01 AM", "02 AM", "03 AM", "04 AM", "05 AM", "06 AM", "07 AM", "08 AM", "09 AM", "10 AM", "11 AM", "12 AM", "01 PM", "02 PM", "03 PM", "04 PM", "05 PM", "06 PM", "07 PM", "08 PM", "09 PM", "10 PM", "11 PM", "12 PM"]

thedayspot = days.index(presentday)
thetimespot = hours.index(presenthour)




MyApp.get "/" do
  erb :"home"
end

MyApp.get "/example" do
  erb :"weather"
end

MyApp.get "/SanFran" do
@days = days
@hours = hours
@nowday = presentday
@nowhour = presenthour
@spotday = thedayspot
@spothour = thetimespot
@place = "San Francisco"
@weather_info = Weather("37.7749, -122.4194")

@currenttemp = currenttemperature(@weather_info)
@currentsum = currentsum(@weather_info)
@hourlyinfo = hourlyinfo(@weather_info)
@dailyinfo = dailyinfo(@weather_info)
	erb :"weatherfill"
end

MyApp.get "/Omaha" do
@days = days
@hours = hours
@nowday = presentday
@nowhour = presenthour
@spotday = thedayspot
@spothour = thetimespot
@place = "Omaha"
@weather_info = HTTParty.get('https://api.forecast.io/forecast/#{API_KEY]/41.2524,-95.9980')

@currenttemp = currenttemperature(@weather_info)
@currentsum = currentsum(@weather_info)
@hourlyinfo = hourlyinfo(@weather_info)
@dailyinfo = dailyinfo(@weather_info)

	erb :"weatherfill"
end

MyApp.get "/Mumbai" do
@days = days
@hours = hours
@nowday = presentday
@nowhour = presenthour
@spotday = thedayspot
@spothour = thetimespot
@place = "Mumbai"
@weather_info = HTTParty.get('https://api.forecast.io/forecast/#{API_KEY}/19.0760,72.8777')

@currenttemp = currenttemperature(@weather_info)
@currentsum = currentsum(@weather_info)
@hourlyinfo = hourlyinfo(@weather_info)
@dailyinfo = dailyinfo(@weather_info)

	erb :"weatherfill"
end

