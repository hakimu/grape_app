require 'json'

class Week
	def self.all
		['Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday']
	end
end

module Foo
	class API < Grape::API
		version 'v1', using: :header, vendor: 'myself'
		format :json
		prefix :api

		resource :days do
			desc "Lists the days of the week"
			get do
				Week.all
			end
		end
	end
end


