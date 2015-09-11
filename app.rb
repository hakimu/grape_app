require 'json'

class Baz < Grape::API
	def self.call(env)
		[200,{"Content-Type"=>"text/plain"},["hello"]]
	end
end

class Foo < Grape::API
	def self.call(env)
		[200,{"Content-Type"=>"text/plain"},["world"]]
	end
end



