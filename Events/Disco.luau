local Disco = {}

function Disco.Main()

  local colorEffect = Instance.new("ColorCorrectionEffect", game.Lighting)
  local DiscoMusic = script.FindFirstChild("Music")

  while task.wait(1) do
    colorEffect.TintColor = Color3.fromRGB(math.random(1,255), math.random(1, 255), math.random(1, 255))
  end

  DiscoMusic:Play()

end

return Disco
