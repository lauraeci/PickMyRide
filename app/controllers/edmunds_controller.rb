class EdmundsController < ApplicationController
	def show
	end
	
	def pull_car_makes
		require 'net/http'
		url = URL.parse('https://api.edmunds.com/api/vehicle/v2/makes?fmt=json&api_key={your API key}')
	end
end
