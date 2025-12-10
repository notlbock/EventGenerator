local Flood = {}

function Flood.Main()
    -- Get tween service to tween the flood part
  local tweenService = game:GetService("TweenService")

  local floodTweenInfo = TweenInfo.new(
    100,-- 100 seconds until it stops
    Enum.EasingStyle.Linear,
    Enum.EasingDirection.In,
    0,
    false,
    2, -- delay
  )

  local floodGoals = {
    Size = script.FloodGoal

  }
  
  local FloodPart = script.FloodPart
  FloodPart.Parent = workspace

  local floodTween = tweenService:Create(FloodPart, floodTweenInfo, floodGoals)
  floodTween:Play()

  FloodPart.Touched:Connect(function(hit)

      local humanoid = hit.Parent:FindFirstChildOfClass("Humanoid")

      if humanoid then

        humanoid.Health = 0
        
      end
      
  end)
  
end

return Flood
