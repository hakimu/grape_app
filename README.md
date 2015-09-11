### Grape app using the Ruby agent.

```
bundle exec rackup
```

I've added the following to the `config.ru` to get around the issue with the Ruby agent and Puma 2.12.x.

```
require 'new_relic/rack/agent_hooks'
use ::NewRelic::Rack::AgentHooks
```
