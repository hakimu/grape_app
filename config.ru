require 'bundler'
Bundler.require

require './app'

map '/baz' do
	run Baz
end

run Foo
