local Tb = Instance.new('TextButton', game:GetService("CoreGui").SimpleSpy2)

Tb.Text = "+"
Tb.TextScaled = true
Tb.Position = UDim2.new(0.2, 0, 0.2, 0)
Tb.Size = UDim2.new(0, 45, 0, 45)
Tb.Active = true
Tb.Draggable = true

Tb.MouseClick1Down:Connect(function()
        game:GetService("CoreGui").SimpleSpy2.Background.Visible = false
        Tb.Text = "-"
    else
        game:GetService("CoreGui").SimpleSpy2.Background.Visible = true
        Tb.Text = "+"
end)
