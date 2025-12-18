-- ts file was generated at discord.gg/25ms


local vu1 = {}
local vu2 = game:GetService("TweenService")
local vu3 = game:GetService("UserInputService")
local vu4 = game:GetService("UserInputService")
function vu1.DraggingEnabled(_, p5, p6)
    local vu7 = p6 or p5
    local vu8 = false
    local vu9 = nil
    local vu10 = nil
    local vu11 = nil
    p5.InputBegan:Connect(function(pu12)
        if pu12.UserInputType == Enum.UserInputType.MouseButton1 or pu12.UserInputType == Enum.UserInputType.Touch then
            vu8 = true
            vu10 = pu12.Position
            vu11 = vu7.Position
            pu12.Changed:Connect(function()
                if pu12.UserInputState == Enum.UserInputState.End then
                    vu8 = false
                end
            end)
        end
    end)
    p5.InputChanged:Connect(function(p13)
        if p13.UserInputType == Enum.UserInputType.MouseMovement or p13.UserInputType == Enum.UserInputType.Touch then
            vu9 = p13
        end
    end)
    vu4.InputChanged:Connect(function(p14)
        if p14 == vu9 and vu8 then
            local v15 = p14.Position - vu10
            vu7.Position = UDim2.new(vu11.X.Scale, vu11.X.Offset + v15.X, vu11.Y.Scale, vu11.Y.Offset + v15.Y)
        end
    end)
end
local vu16 = tostring(math.random(1, 100)) .. tostring(math.random(1, 50)) .. tostring(math.random(1, 100))
function vu1.Toggle(_)
    if game.CoreGui:FindFirstChild(vu16).Enabled then
        game.CoreGui:FindFirstChild(vu16).Enabled = false
    else
        game.CoreGui:FindFirstChild(vu16).Enabled = true
    end
end
function vu1.Create(_, p17)
    local vu18 = Instance.new("ScreenGui")
    local v19 = Instance.new("Frame")
    local v20 = Instance.new("UICorner")
    local v21 = Instance.new("ImageLabel")
    Instance.new("Frame")
    Instance.new("UICorner")
    Instance.new("Frame")
    Instance.new("UIListLayout")
    local v22 = Instance.new("Frame")
    local v23 = Instance.new("UICorner")
    local v24 = Instance.new("Frame")
    local v25 = Instance.new("Frame")
    local v26 = Instance.new("ImageLabel")
    local vu27 = Instance.new("ImageButton")
    local v28 = Instance.new("TextLabel")
    local vu29 = Instance.new("Frame")
    local v30 = Instance.new("UICorner")
    local v31 = Instance.new("UICorner")
    local vu32 = Instance.new("Frame")
    local v33 = Instance.new("UIListLayout")
    local v34 = Instance.new("UIPadding")
    local v35 = Instance.new("Frame")
    Instance.new("ImageButton")
    local v36 = Instance.new("Frame")
    vu1:DraggingEnabled(v35, v19)
    function vu1.Destroy(_)
        vu18:Destroy()
    end
    vu18.Name = vu16
    vu18.Parent = game.CoreGui
    vu18.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    v19.Name = "Main"
    v19.Parent = vu18
    v19.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    v19.BorderSizePixel = 0
    v19.Position = UDim2.new(0.377, 0, 0.368, 0)
    v19.Size = UDim2.new(0, 480, 0, 293)
    v19.Active = true
    v19.Selectable = true
    v19.Draggable = true
    v20.CornerRadius = UDim.new(0, 6)
    v20.Parent = v19
    v21.Name = "Shadow"
    v21.Parent = v19
    v21.AnchorPoint = Vector2.new(0.5, 0.5)
    v21.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v21.BackgroundTransparency = 1
    v21.Position = UDim2.new(0.5, 0, 0.5, 0)
    v21.Size = UDim2.new(1, 30, 1, 30)
    v21.ZIndex = 0
    v21.Image = "rbxassetid://5554236805"
    v21.ImageColor3 = Color3.fromRGB(0, 0, 0)
    v21.ScaleType = Enum.ScaleType.Slice
    v21.SliceCenter = Rect.new(23, 23, 277, 277)
    v35.Name = "tabs"
    v35.Parent = v19
    v35.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
    v35.BorderSizePixel = 0
    v35.Position = UDim2.new(0, 0, 0, 35)
    v35.Size = UDim2.new(0, 122, 1, - 35)
    v30.CornerRadius = UDim.new(0, 6)
    v30.Parent = v35
    v36.Name = "Cover"
    v36.Parent = v35
    v36.AnchorPoint = Vector2.new(1, 0.5)
    v36.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
    v36.BorderSizePixel = 0
    v36.Position = UDim2.new(1, 0, 0.5, 0)
    v36.Size = UDim2.new(0, 5, 1, 0)
    v30.Parent = v35
    v22.Name = "Top"
    v22.Parent = v19
    v22.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
    v22.BorderSizePixel = 0
    v22.Size = UDim2.new(1, 0, 0, 34)
    v23.CornerRadius = UDim.new(0, 6)
    v23.Parent = v22
    v24.Name = "Cover"
    v24.Parent = v22
    v24.AnchorPoint = Vector2.new(0.5, 1)
    v24.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
    v24.BorderSizePixel = 0
    v24.Position = UDim2.new(0.5, 0, 1, 0)
    v24.Size = UDim2.new(1, 0, 0, 4)
    v25.Name = "Line"
    v25.Parent = v22
    v25.AnchorPoint = Vector2.new(0.5, 1)
    v25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v25.BackgroundTransparency = 0.92
    v25.Position = UDim2.new(0.5, 0, 1, 1)
    v25.Size = UDim2.new(1, 0, 0, 1)
    v26.Name = "Logo"
    v26.Parent = v22
    v26.AnchorPoint = Vector2.new(0, 0.5)
    v26.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v26.BackgroundTransparency = 1
    v26.Position = UDim2.new(0, 4, 0.5, 0)
    v26.Size = UDim2.new(0, 26, 0, 25)
    v26.Image = "rbxassetid://17825568299"
    v26.ImageColor3 = Color3.fromRGB(0, 150, 255)
    vu27.Name = "Close"
    vu27.Parent = v22
    vu27.AnchorPoint = Vector2.new(1, 0.5)
    vu27.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    vu27.BackgroundTransparency = 1
    vu27.Position = UDim2.new(1, - 6, 0.5, 0)
    vu27.Size = UDim2.new(0, 20, 0, 20)
    vu27.Image = "http://www.roblox.com/asset/?id=7755372427"
    vu27.ImageColor3 = Color3.fromRGB(199, 199, 199)
    vu27.ScaleType = Enum.ScaleType.Crop
    vu27.MouseButton1Click:connect(function()
        vu18.Enabled = false
    end)
    vu27.MouseEnter:connect(function()
        vu2:Create(vu27, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            ImageColor3 = Color3.fromRGB(255, 255, 255)
        }, true):Play()
    end)
    vu27.MouseLeave:connect(function()
        vu2:Create(vu27, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            ImageColor3 = Color3.fromRGB(166, 166, 166)
        }, true):Play()
    end)
    v28.Name = "GameName"
    v28.Parent = v22
    v28.AnchorPoint = Vector2.new(0, 0.5)
    v28.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v28.BackgroundTransparency = 1
    v28.Position = UDim2.new(0, 32, 0.5, 0)
    v28.Size = UDim2.new(0, 165, 0, 22)
    v28.Font = Enum.Font.Gotham
    v28.Text = p17 or "Game Name"
    v28.TextColor3 = Color3.fromRGB(0, 150, 255)
    v28.TextSize = 14
    v28.TextXAlignment = Enum.TextXAlignment.Left
    vu29.Name = "Pages"
    vu29.Parent = v19
    vu29.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    vu29.BorderSizePixel = 0
    vu29.Position = UDim2.new(0, 130, 0, 42)
    vu29.Size = UDim2.new(1, - 138, 1, - 50)
    v35.Name = "tabs"
    v35.Parent = v19
    v35.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
    v35.BorderSizePixel = 0
    v35.Position = UDim2.new(0, 0, 0, 35)
    v35.Size = UDim2.new(0, 122, 1, - 35)
    vu32.Name = "TabsContainer"
    vu32.Parent = v35
    vu32.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    vu32.BackgroundTransparency = 1
    vu32.Size = UDim2.new(1, 0, 1, 0)
    v33.Name = "TabsList"
    v33.Parent = vu32
    v33.HorizontalAlignment = Enum.HorizontalAlignment.Center
    v33.SortOrder = Enum.SortOrder.LayoutOrder
    v33.Padding = UDim.new(0, 5)
    v34.Parent = vu32
    v34.PaddingTop = UDim.new(0, 5)
    v31.CornerRadius = UDim.new(0, 6)
    v31.Parent = v35
    v36.Name = "Cover"
    v36.Parent = v35
    v36.AnchorPoint = Vector2.new(1, 0.5)
    v36.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
    v36.BorderSizePixel = 0
    v36.Position = UDim2.new(1, 0, 0.5, 0)
    v36.Size = UDim2.new(0, 5, 1, 0)
    return {
        Tab = function(_, p37)
            local vu38 = Instance.new("UIListLayout")
            local vu39 = Instance.new("ScrollingFrame")
            local v40 = Instance.new("UICorner")
            local vu41 = Instance.new("TextButton")
            vu41.Name = "TabButton"
            vu41.Parent = vu32
            vu41.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
            vu41.BackgroundTransparency = 1
            vu41.Size = UDim2.new(1, - 12, 0, 30)
            vu41.AutoButtonColor = false
            vu41.Font = Enum.Font.Gotham
            vu41.Text = p37 or "Tab"
            vu41.TextColor3 = Color3.fromRGB(255, 255, 255)
            vu41.TextSize = 14
            v40.CornerRadius = UDim.new(0, 6)
            v40.Parent = vu41
            vu39.Name = "Page"
            vu39.Visible = false
            vu39.Parent = vu29
            vu39.Active = true
            vu39.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            vu39.BackgroundTransparency = 1
            vu39.BorderSizePixel = 0
            vu39.Size = UDim2.new(1, 0, 1, 0)
            vu39.CanvasPosition = Vector2.new(0, 0)
            vu39.ScrollBarThickness = 2
            vu39.ScrollBarImageColor3 = Color3.fromRGB(0, 150, 255)
            vu38.Parent = vu39
            vu38.HorizontalAlignment = Enum.HorizontalAlignment.Center
            vu38.SortOrder = Enum.SortOrder.LayoutOrder
            vu38.Padding = UDim.new(0, 5)
            vu38:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                vu39.CanvasSize = UDim2.new(0, 0, 0, vu38.AbsoluteContentSize.Y)
            end)
            vu41.MouseButton1Click:Connect(function()
                local v42 = next
                local v43, v44 = vu29:GetChildren()
                while true do
                    local v45
                    v44, v45 = v42(v43, v44)
                    if v44 == nil then
                        break
                    end
                    if v45:IsA("ScrollingFrame") then
                        v45.Visible = false
                    end
                    vu39.Visible = true
                end
                local v46 = next
                local v47, v48 = vu32:GetChildren()
                while true do
                    local v49
                    v48, v49 = v46(v47, v48)
                    if v48 == nil then
                        break
                    end
                    if v49.Name == "TabButton" then
                        vu2:Create(v49, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                            BackgroundTransparency = 1
                        }):Play()
                        vu2:Create(v49, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                            TextColor3 = Color3.fromRGB(72, 72, 72)
                        }):Play()
                        vu2:Create(vu41, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                            BackgroundTransparency = 0.5
                        }):Play()
                        vu2:Create(vu41, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                            TextColor3 = Color3.fromRGB(255, 255, 255)
                        }):Play()
                    end
                end
            end)
            return {
                Button = function(_, p50, p51)
                    local vu52 = Instance.new("TextButton")
                    local v53 = Instance.new("UICorner")
                    local vu54 = p51 or function()
                    end
                    vu52.Name = "Button"
                    vu52.Text = "  " .. p50 or "   Button"
                    vu52.Parent = vu39
                    vu52.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                    vu52.BorderSizePixel = 0
                    vu52.Size = UDim2.new(1, - 6, 0, 34)
                    vu52.Position = UDim2.new(0.198795184, 0, 0.0214592274, 0)
                    vu52.AutoButtonColor = false
                    vu52.Font = Enum.Font.Gotham
                    vu52.TextColor3 = Color3.fromRGB(255, 255, 255)
                    vu52.TextSize = 15
                    vu52.TextXAlignment = Enum.TextXAlignment.Left
                    v53.CornerRadius = UDim.new(0, 6)
                    v53.Parent = vu52
                    vu52.MouseEnter:Connect(function()
                        vu2:Create(vu52, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                            BackgroundColor3 = Color3.fromRGB(40, 40, 40)
                        }):Play()
                    end)
                    vu52.MouseLeave:Connect(function()
                        vu2:Create(vu52, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                            BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                        }):Play()
                    end)
                    vu52.MouseButton1Click:Connect(function()
                        vu54()
                    end)
                end,
                Toggle = function(_, p55, p56, pu57)
                    local vu58 = Instance.new("TextButton")
                    local v59 = Instance.new("UICorner")
                    local v60 = Instance.new("TextLabel")
                    local vu61 = Instance.new("Frame")
                    local v62 = Instance.new("UIStroke")
                    vu58.Name = "Toggle"
                    vu58.Parent = vu39
                    vu58.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                    vu58.Size = UDim2.new(1, - 6, 0, 34)
                    vu58.AutoButtonColor = false
                    vu58.Font = Enum.Font.SourceSans
                    vu58.Text = ""
                    vu58.TextColor3 = Color3.fromRGB(0, 0, 0)
                    vu58.TextSize = 15
                    v59.CornerRadius = UDim.new(0, 6)
                    v59.Parent = vu58
                    v60.Name = "Title"
                    v60.Parent = vu58
                    v60.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    v60.BackgroundTransparency = 1
                    v60.Position = UDim2.new(0, 8, 0, 0)
                    v60.Size = UDim2.new(1, - 6, 1, 0)
                    v60.Font = Enum.Font.Gotham
                    v60.Text = p55 or "Toggle"
                    v60.TextColor3 = Color3.fromRGB(255, 255, 255)
                    v60.TextSize = 15
                    v60.TextXAlignment = Enum.TextXAlignment.Left
                    vu61.Name = "Toggle"
                    vu61.Parent = vu58
                    vu61.AnchorPoint = Vector2.new(1, 0.5)
                    vu61.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
                    vu61.BackgroundTransparency = 1
                    vu61.BorderSizePixel = 0
                    vu61.Position = UDim2.new(1, - 8, 0.5, 0)
                    vu61.Size = UDim2.new(0, 14, 0, 14)
                    v62.Parent = vu61
                    v62.LineJoinMode = Enum.LineJoinMode.Round
                    v62.Thickness = 2
                    v62.Color = Color3.fromRGB(0, 150, 255)
                    vu58.MouseEnter:Connect(function()
                        vu2:Create(vu58, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                            BackgroundColor3 = Color3.fromRGB(40, 40, 40)
                        }, true):Play()
                    end)
                    vu58.MouseLeave:Connect(function()
                        vu2:Create(vu58, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
                            BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                        }, true):Play()
                    end)
                    local vu63 = p56 or false
                    if vu63 then
                        vu2:Create(vu61, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                            BackgroundTransparency = 0
                        }, true):Play()
                        pu57(vu63)
                    end
                    vu58.MouseButton1Click:Connect(function()
                        if vu63 then
                            vu63 = false
                            vu2:Create(vu61, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                BackgroundTransparency = 1
                            }, true):Play()
                        else
                            vu63 = true
                            vu2:Create(vu61, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                BackgroundTransparency = 0
                            }, true):Play()
                        end
                        pu57(vu63)
                    end)
                end,
                Label = function(_, p64)
                    local v65 = Instance.new("TextLabel")
                    local v66 = Instance.new("UICorner")
                    v65.Parent = vu39
                    v65.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
                    v65.BorderSizePixel = 0
                    v65.Position = UDim2.new(0.198795184, 0, 0.0214592274, 0)
                    v65.Size = UDim2.new(1, - 6, 0, 34)
                    v65.Font = Enum.Font.Gotham
                    v65.Text = "  " .. p64 or "   Label"
                    v65.TextColor3 = Color3.fromRGB(255, 255, 255)
                    v65.TextSize = 15
                    v65.TextXAlignment = Enum.TextXAlignment.Left
                    v66.CornerRadius = UDim.new(0, 6)
                    v66.Parent = v65
                end,
                Separator = function(_, p67)
                    local v68 = Instance.new("TextLabel")
                    local v69 = Instance.new("UICorner")
                    v68.Parent = vu39
                    v68.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
                    v68.BorderSizePixel = 0
                    v68.Position = UDim2.new(0.198795184, 0, 0.0214592274, 0)
                    v68.Size = UDim2.new(1, - 6, 0, 34)
                    v68.Font = Enum.Font.Gotham
                    v68.Text = p67 or "Separator"
                    v68.TextColor3 = Color3.fromRGB(255, 255, 255)
                    v68.TextSize = 15
                    v69.CornerRadius = UDim.new(0, 6)
                    v69.Parent = v68
                end,
                Slider = function(_, p70, pu71, pu72, p73, p74)
                    local vu75 = false
                    local vu76 = Instance.new("Frame")
                    local v77 = Instance.new("UICorner")
                    local v78 = Instance.new("TextLabel")
                    local v79 = Instance.new("TextButton")
                    local v80 = Instance.new("UICorner")
                    local vu81 = Instance.new("Frame")
                    local v82 = Instance.new("UICorner")
                    local vu83 = Instance.new("TextLabel")
                    vu76.Name = "Slider"
                    vu76.Parent = vu39
                    vu76.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                    vu76.Position = UDim2.new(0, 0, 0.515021443, 0)
                    vu76.Size = UDim2.new(1, - 6, 0, 48)
                    v77.CornerRadius = UDim.new(0, 6)
                    v77.Parent = vu76
                    v78.Name = "Title"
                    v78.Parent = vu76
                    v78.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    v78.BackgroundTransparency = 1
                    v78.Position = UDim2.new(0, 8, 0, 0)
                    v78.Size = UDim2.new(1, - 6, 0, 34)
                    v78.Font = Enum.Font.Gotham
                    v78.Text = p70 or "Slider"
                    v78.TextColor3 = Color3.fromRGB(255, 255, 255)
                    v78.TextSize = 15
                    v78.TextXAlignment = Enum.TextXAlignment.Left
                    v79.Name = "SliderClick"
                    v79.Parent = vu76
                    v79.AnchorPoint = Vector2.new(0.5, 1)
                    v79.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
                    v79.Position = UDim2.new(0.5, 0, 1, - 8)
                    v79.Size = UDim2.new(1, - 12, 0, 6)
                    v79.AutoButtonColor = false
                    v79.Text = ""
                    v80.CornerRadius = UDim.new(0, 6)
                    v80.Parent = v79
                    vu81.Name = "SliderDrag"
                    vu81.Parent = v79
                    vu81.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
                    vu81.Size = UDim2.new(0, 120, 1, 0)
                    v82.CornerRadius = UDim.new(0, 6)
                    v82.Parent = vu81
                    vu83.Name = "Value"
                    vu83.Parent = vu76
                    vu83.AnchorPoint = Vector2.new(1, 0)
                    vu83.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    vu83.BackgroundTransparency = 1
                    vu83.Position = UDim2.new(1, - 10, 0, 0)
                    vu83.Size = UDim2.new(1, 0, 0, 34)
                    vu83.Font = Enum.Font.Gotham
                    vu83.Text = tostring(p73)
                    vu83.TextColor3 = Color3.fromRGB(255, 255, 255)
                    vu83.TextSize = 15
                    vu83.TextXAlignment = Enum.TextXAlignment.Right
                    local vu84 = p74 or function()
                    end
                    local function vu88(p85)
                        local v86 = UDim2.new(math.clamp((p85.Position.X - vu76.AbsolutePosition.X) / vu76.AbsoluteSize.X, 0, 1), 0, 0, 6)
                        vu81:TweenSize(v86, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.15, true)
                        local v87 = math.floor(v86.X.Scale * pu72 / pu72 * (pu72 - pu71) + pu71)
                        vu83.Text = tostring(v87)
                        vu84(v87)
                    end
                    v79.InputBegan:Connect(function(p89)
                        if p89.UserInputType == Enum.UserInputType.MouseButton1 or Enum.UserInputType.Touch then
                            vu88(p89)
                            vu75 = true
                        end
                    end)
                    v79.InputEnded:Connect(function(p90)
                        if p90.UserInputType == Enum.UserInputType.MouseButton1 or Enum.UserInputType.Touch then
                            vu75 = false
                        end
                    end)
                    vu3.InputChanged:Connect(function(p91)
                        if vu75 and p91.UserInputType == Enum.UserInputType.MouseMovement then
                            vu88(p91)
                        end
                    end)
                end,
                KeyBind = function(_, p92, p93, p94)
                    local vu95 = p94 or function()
                    end
                    local vu96 = p93.Name
                    local v97 = Instance.new("TextButton")
                    local v98 = Instance.new("UICorner")
                    local v99 = Instance.new("TextLabel")
                    local vu100 = Instance.new("TextLabel")
                    local v101 = Instance.new("UICorner")
                    v97.Name = "KeyBind"
                    v97.Parent = vu39
                    v97.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                    v97.Size = UDim2.new(1, - 6, 0, 34)
                    v97.AutoButtonColor = false
                    v97.Font = Enum.Font.SourceSans
                    v97.Text = ""
                    v97.TextColor3 = Color3.fromRGB(0, 0, 0)
                    v97.TextSize = 15
                    v98.CornerRadius = UDim.new(0, 6)
                    v98.Parent = v97
                    v99.Name = "Title"
                    v99.Parent = v97
                    v99.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    v99.BackgroundTransparency = 1
                    v99.Position = UDim2.new(0, 8, 0, 0)
                    v99.Size = UDim2.new(1, - 6, 1, 0)
                    v99.Font = Enum.Font.Gotham
                    v99.Text = p92 or "KeyBind"
                    v99.TextColor3 = Color3.fromRGB(255, 255, 255)
                    v99.TextSize = 15
                    v99.TextXAlignment = Enum.TextXAlignment.Left
                    vu100.Name = "CurrentKey"
                    vu100.Parent = v97
                    vu100.AnchorPoint = Vector2.new(1, 0.5)
                    vu100.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
                    vu100.Position = UDim2.new(1, - 6, 0.5, 0)
                    vu100.Size = UDim2.new(0, 46, 0, 24)
                    vu100.Font = Enum.Font.Gotham
                    vu100.Text = vu96 or ". . ."
                    vu100.TextColor3 = Color3.fromRGB(255, 255, 255)
                    vu100.TextSize = 15
                    v101.CornerRadius = UDim.new(0, 4)
                    v101.Parent = vu100
                    v97.MouseButton1Click:Connect(function()
                        vu100.Text = ". . ."
                        local v102, _ = game:GetService("UserInputService").InputBegan:wait()
                        if v102.KeyCode.Name ~= "Unknown" then
                            vu100.Text = v102.KeyCode.Name
                            vu96 = v102.KeyCode.Name
                        end
                    end)
                    game:GetService("UserInputService").InputBegan:connect(function(p103, p104)
                        if not p104 and p103.KeyCode.Name == vu96 then
                            vu95(vu96)
                        end
                    end)
                end,
                Textbox = function(_, p105, p106, p107)
                    local v108 = p105 or "Textbox"
                    local vu109 = p107 or function()
                    end
                    local v110 = Instance.new("Frame")
                    local v111 = Instance.new("UICorner")
                    local v112 = Instance.new("TextLabel")
                    local v113 = Instance.new("UIPadding")
                    local vu114 = Instance.new("TextBox")
                    local v115 = Instance.new("UICorner")
                    v110.Name = tostring(v108) .. "_Textbox"
                    v110.Parent = vu39
                    v110.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                    v110.Size = UDim2.new(1, - 6, 0, 34)
                    v111.CornerRadius = UDim.new(0, 6)
                    v111.Parent = v110
                    v112.Name = "TextboxName"
                    v112.Parent = v110
                    v112.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    v112.BackgroundTransparency = 1
                    v112.BorderSizePixel = 0
                    v112.Size = UDim2.new(0, 235, 0, 35)
                    v112.Font = Enum.Font.Gotham
                    v112.Text = v108
                    v112.TextColor3 = Color3.fromRGB(255, 255, 255)
                    v112.TextSize = 15
                    v112.TextXAlignment = Enum.TextXAlignment.Left
                    v113.Name = "TextboxNamePadding"
                    v113.Parent = v112
                    v113.PaddingLeft = UDim.new(0, 10)
                    vu114.Name = "Textbox"
                    vu114.Parent = v110
                    vu114.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                    vu114.BorderSizePixel = 0
                    vu114.Position = UDim2.new(0.610294104, 0, 0.171428576, 0)
                    vu114.Size = UDim2.new(0, 130, 0, 23)
                    vu114.Font = Enum.Font.Gotham
                    vu114.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
                    vu114.PlaceholderText = p106 or ""
                    vu114.Text = ""
                    vu114.TextColor3 = Color3.fromRGB(255, 255, 255)
                    vu114.TextSize = 15
                    v115.CornerRadius = UDim.new(0, 4)
                    v115.Parent = vu114
                    vu114.Focused:Connect(function()
                        game:GetService("TweenService"):Create(vu114, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                            BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                        }):Play()
                    end)
                    vu114.FocusLost:Connect(function()
                        game:GetService("TweenService"):Create(vu114, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                            BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                        }):Play()
                        vu109(vu114.Text)
                    end)
                end,
                Dropdown = function(_, pu116, p117, p118)
                    local vu119 = Instance.new("Frame")
                    local vu120 = Instance.new("UIListLayout")
                    local v121 = Instance.new("Frame")
                    local v122 = Instance.new("UICorner")
                    local vu123 = Instance.new("TextLabel")
                    local vu124 = Instance.new("ImageButton")
                    local vu125 = Instance.new("Frame")
                    local v126 = Instance.new("UICorner")
                    local vu127 = Instance.new("UIListLayout")
                    local v128 = Instance.new("UIPadding")
                    vu119.Name = "Dropdown"
                    vu119.Parent = vu39
                    vu119.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    vu119.BackgroundTransparency = 1
                    vu119.BorderColor3 = Color3.fromRGB(27, 42, 53)
                    vu119.BorderSizePixel = 0
                    vu119.ClipsDescendants = true
                    vu119.Position = UDim2.new(0, 0, - 0.296137333, 0)
                    vu119.Size = UDim2.new(1, - 6, 0, 34)
                    vu120.Parent = vu119
                    vu120.HorizontalAlignment = Enum.HorizontalAlignment.Center
                    vu120.SortOrder = Enum.SortOrder.LayoutOrder
                    vu120.Padding = UDim.new(0, 5)
                    local vu129 = false
                    v121.Name = "Choose"
                    v121.Parent = vu119
                    v121.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                    v121.BorderSizePixel = 0
                    v121.Size = UDim2.new(1, 0, 0, 34)
                    v122.CornerRadius = UDim.new(0, 6)
                    v122.Parent = v121
                    vu123.Name = "Title"
                    vu123.Parent = v121
                    vu123.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    vu123.BackgroundTransparency = 1
                    vu123.Position = UDim2.new(0, 8, 0, 0)
                    vu123.Size = UDim2.new(1, - 6, 1, 0)
                    vu123.Font = Enum.Font.Gotham
                    vu123.Text = pu116 or "Dropdowm"
                    vu123.TextColor3 = Color3.fromRGB(255, 255, 255)
                    vu123.TextSize = 15
                    vu123.TextXAlignment = Enum.TextXAlignment.Left
                    vu124.Name = "arrow"
                    vu124.Parent = v121
                    vu124.AnchorPoint = Vector2.new(1, 0.5)
                    vu124.BackgroundTransparency = 1
                    vu124.LayoutOrder = 10
                    vu124.Position = UDim2.new(1, - 2, 0.5, 0)
                    vu124.Size = UDim2.new(0, 28, 0, 28)
                    vu124.ZIndex = 2
                    vu124.Image = "rbxassetid://3926307971"
                    vu124.ImageColor3 = Color3.fromRGB(0, 150, 255)
                    vu124.ImageRectOffset = Vector2.new(324, 524)
                    vu124.ImageRectSize = Vector2.new(36, 36)
                    vu124.ScaleType = Enum.ScaleType.Crop
                    vu125.Name = "OptionHolder"
                    vu125.Parent = vu119
                    vu125.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                    vu125.BorderSizePixel = 0
                    vu125.Size = UDim2.new(1, 0, 1, - 38)
                    v126.CornerRadius = UDim.new(0, 6)
                    v126.Parent = vu125
                    vu127.Name = "OptionList"
                    vu127.Parent = vu125
                    vu127.HorizontalAlignment = Enum.HorizontalAlignment.Center
                    vu127.SortOrder = Enum.SortOrder.LayoutOrder
                    vu127.Padding = UDim.new(0, 5)
                    v128.Parent = vu125
                    v128.PaddingTop = UDim.new(0, 8)
                    v121.InputBegan:Connect(function(p130)
                        if p130.UserInputType == Enum.UserInputType.MouseButton1 or Enum.UserInputType.Touch then
                            if vu129 then
                                vu2:Create(vu124, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                    Rotation = 0
                                }, true):Play()
                                vu119:TweenSize(UDim2.new(1, - 7, 0, 34), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.12)
                                vu129 = false
                            else
                                vu119:TweenSize(UDim2.new(1, - 7, 0, vu120.AbsoluteContentSize.Y), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.15, true)
                                vu2:Create(vu124, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                    Rotation = 180
                                }, true):Play()
                                vu129 = true
                            end
                        end
                    end)
                    local v131 = next
                    local v132 = p117 or {}
                    local v133 = nil
                    local vu134 = p118 or function()
                    end
                    while true do
                        local vu135
                        v133, vu135 = v131(v132, v133)
                        if v133 == nil then
                            break
                        end
                        local v136 = Instance.new("TextButton")
                        local v137 = Instance.new("UICorner")
                        v136.Name = "Option"
                        v136.Parent = vu125
                        v136.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                        v136.BorderSizePixel = 0
                        v136.Size = UDim2.new(1, - 16, 0, 30)
                        v136.AutoButtonColor = false
                        v136.Font = Enum.Font.Gotham
                        v136.Text = vu135
                        v136.TextColor3 = Color3.fromRGB(255, 255, 255)
                        v136.TextSize = 15
                        v137.CornerRadius = UDim.new(0, 6)
                        v137.Parent = v136
                        v136.MouseButton1Click:Connect(function()
                            vu134(vu135)
                            vu129 = false
                            vu2:Create(vu124, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                Rotation = 0
                            }):Play()
                            vu119:TweenSize(UDim2.new(1, - 5, 0, 34), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.15, true)
                            vu123.Text = pu116 .. ": " .. vu135
                        end)
                        vu125:TweenSize(UDim2.new(1, 0, 0, vu127.AbsoluteContentSize.Y + 15), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.15, true)
                    end
                    return {
                        RefreshDropdown = function(_, p138)
                            vu129 = false
                            vu2:Create(vu124, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                Rotation = 0
                            }):Play()
                            vu119:TweenSize(UDim2.new(1, - 5, 0, 34), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.15, true)
                            local v139 = next
                            local v140, v141 = vu125:GetChildren()
                            local v142 = p138 or {}
                            while true do
                                local v143
                                v141, v143 = v139(v140, v141)
                                if v141 == nil then
                                    break
                                end
                                if v143:IsA("TextButton") then
                                    v143:Destroy()
                                end
                            end
                            local v144 = next
                            local v145 = nil
                            while true do
                                local vu146
                                v145, vu146 = v144(v142, v145)
                                if v145 == nil then
                                    break
                                end
                                local v147 = Instance.new("TextButton")
                                local v148 = Instance.new("UICorner")
                                v147.Name = "Option"
                                v147.Parent = vu125
                                v147.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                                v147.BorderSizePixel = 0
                                v147.Size = UDim2.new(1, - 16, 0, 30)
                                v147.AutoButtonColor = false
                                v147.Font = Enum.Font.Gotham
                                v147.Text = vu146
                                v147.TextColor3 = Color3.fromRGB(255, 255, 255)
                                v147.TextSize = 15
                                v148.CornerRadius = UDim.new(0, 6)
                                v148.Parent = v147
                                v147.MouseButton1Click:Connect(function()
                                    vu134(vu146)
                                    vu129 = false
                                    vu2:Create(vu124, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                        Rotation = 0
                                    }):Play()
                                    vu119:TweenSize(UDim2.new(1, - 5, 0, 34), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.2, true)
                                    vu123.Text = pu116 .. ": " .. vu146
                                end)
                            end
                            vu125:TweenSize(UDim2.new(1, 0, 0, vu127.AbsoluteContentSize.Y + 15), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.15, true)
                        end
                    }
                end
            }
        end
    }
end
return vu1