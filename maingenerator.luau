local Events = {
  "Disco",
  "Flood"
}
local Event = Events[math.random(1,#Events)]
local EventModule = require(script.Parent.Events:FindFirstChild(Event))

EventModule.main()
