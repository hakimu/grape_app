require 'bundler'
Bundler.require

require './app'

require 'new_relic/rack/agent_hooks'
use ::NewRelic::Rack::AgentHooks

run Foo::API
