local Tb = Instance.new("TextButton", game:GetService("CoreGui").SimpleSpy2)

Tb.Text = "+" Tb.TextScaled = true Tb.Font = Enum.Font.SourceSansBold Tb.Position = UDim2.new(0.2, 0, 0.2, 0) Tb.Size = UDim2.new(0, 60, 0, 60) Tb.Active = true Tb.Draggable = true Tb.BackgroundColor3 = Color3.fromRGB(20, 20, 20) Tb.BorderSizePixel = 2 Tb.BorderColor3 = Color3.fromRGB(255, 0, 0) Tb.TextColor3 = Color3.fromRGB(255, 255, 255) Tb.AutoButtonColor = true Tb.TextStrokeTransparency = 0.2 Tb.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)

local stroke = Instance.new("UIStroke", Tb) stroke.Thickness = 2 stroke.Color = Color3.fromRGB(255, 0, 0) stroke.Transparency = 0.3

local corner = Instance.new("UICorner", Tb) corner.CornerRadius = UDim.new(0.3, 0)

local shadow = Instance.new("UIGradient", Tb) shadow.Color = ColorSequence.new{ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255)) }

local isVisible = true

Tb.MouseButton1Down:Connect(function() isVisible = not isVisible local simpleSpy = game:GetService("CoreGui").SimpleSpy2 if simpleSpy and simpleSpy:FindFirstChild("Background") then simpleSpy.Background.Visible = isVisible end Tb.Text = isVisible and "+" or "-" Tb.BackgroundColor3 = isVisible and Color3.fromRGB(20, 20, 20) or Color3.fromRGB(100, 0, 0) end)

Tb.MouseEnter:Connect(function() Tb.BackgroundColor3 = Color3.fromRGB(40, 40, 40) end)

Tb.MouseLeave:Connect(function() Tb.BackgroundColor3 = isVisible and Color3.fromRGB(20, 20, 20) or Color3.fromRGB(100, 0, 0) end)

