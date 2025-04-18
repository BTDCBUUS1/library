return function(cframe)
    local targetCFrame = cframe
    local hrp = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
    
    local horizontalDistance =
        (Vector3.new(targetCFrame.X, 0, targetCFrame.Z) -
        Vector3.new(hrp.Position.X, 0, hrp.Position.Z)).Magnitude

    local horizontalDuration = math.max(1, horizontalDistance / 13)

    local horizontalTween =
        game:GetService("TweenService"):Create(
        hrp,
        TweenInfo.new(horizontalDuration, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
        {CFrame = targetCFrame}
    )
    horizontalTween:Play()
    horizontalTween.Completed:Wait()
end
