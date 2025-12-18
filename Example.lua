-- First, get the library
local UILib = loadstring(game:HttpGet("https://raw.githubusercontent.com/YouRetard/AllianzUiLibrary/refs/heads/main/Source.lua"))()

-- Create the main UI window
local Window = UILib:Create("My Awesome Game")

-- Create tabs
local MainTab = Window:Tab("Main")
local CombatTab = Window:Tab("Combat")
local PlayerTab = Window:Tab("Player")
local VisualsTab = Window:Tab("Visuals")
local SettingsTab = Window:Tab("Settings")

-- Add elements to Main tab
MainTab:Label("Welcome to My Script!")
MainTab:Separator("Main Features")

-- Button example
MainTab:Button("Teleport to Spawn", function()
    print("Teleporting to spawn...")
    -- Your teleport code here
end)

-- Toggle example
local ESPEnabled = false
MainTab:Toggle("Enable ESP", false, function(state)
    ESPEnabled = state
    print("ESP:", state and "Enabled" or "Disabled")
    -- Your ESP toggle code here
end)

-- Slider example
MainTab:Slider("Walk Speed", 16, 100, 16, function(value)
    print("Walk Speed set to:", value)
    -- Your walk speed code here
end)

-- Add elements to Combat tab
CombatTab:Label("Combat Features")
CombatTab:Separator("Aimbot")

CombatTab:Toggle("Enable Aimbot", false, function(state)
    print("Aimbot:", state and "Enabled" or "Disabled")
end)

CombatTab:Toggle("Show FOV Circle", true, function(state)
    print("FOV Circle:", state and "Shown" or "Hidden")
end)

CombatTab:Slider("Aimbot FOV", 30, 360, 90, function(value)
    print("FOV set to:", value)
end)

CombatTab:Slider("Smoothness", 1, 20, 5, function(value)
    print("Smoothness set to:", value)
end)

-- Add elements to Player tab
PlayerTab:Label("Player Modifications")

PlayerTab:Toggle("Fly", false, function(state)
    print("Fly:", state and "Enabled" or "Disabled")
end)

PlayerTab:Toggle("Noclip", false, function(state)
    print("Noclip:", state and "Enabled" or "Disabled")
end)

PlayerTab:Toggle("Infinity Jump", true, function(state)
    print("Infinity Jump:", state and "Enabled" or "Disabled")
end)

PlayerTab:Slider("Jump Power", 50, 200, 50, function(value)
    print("Jump Power set to:", value)
end)

-- Keybind example
PlayerTab:KeyBind("Fly Toggle Key", Enum.KeyCode.F, function(key)
    print("Fly toggled with key:", key)
end)

-- Textbox example
PlayerTab:Textbox("Custom Name", "Enter name here", function(text)
    print("Custom name set to:", text)
end)

-- Dropdown example
local weapons = {"AK-47", "M4A1", "AWP", "Desert Eagle", "Knife"}
local selectedWeapon = "AK-47"

local dropdown = PlayerTab:Dropdown("Select Weapon", weapons, function(selected)
    selectedWeapon = selected
    print("Selected weapon:", selected)
end)

-- Later you can refresh the dropdown with new items
-- dropdown:RefreshDropdown({"New Item 1", "New Item 2", "New Item 3"})

-- Add elements to Visuals tab
VisualsTab:Label("Visual Settings")

VisualsTab:Toggle("Fullbright", false, function(state)
    print("Fullbright:", state and "Enabled" or "Disabled")
end)

VisualsTab:Toggle("Chams", true, function(state)
    print("Chams:", state and "Enabled" or "Disabled")
end)

VisualsTab:Toggle("Tracers", true, function(state)
    print("Tracers:", state and "Enabled" or "Disabled")
end)

VisualsTab:Slider("Field of View", 70, 120, 70, function(value)
    print("FOV set to:", value)
end)

-- Add elements to Settings tab
SettingsTab:Label("UI Settings")

SettingsTab:Button("Save Configuration", function()
    print("Configuration saved!")
end)

SettingsTab:Button("Load Configuration", function()
    print("Configuration loaded!")
end)

SettingsTab:Toggle("Auto Save", true, function(state)
    print("Auto Save:", state and "Enabled" or "Disabled")
end)

SettingsTab:Toggle("Show Watermark", true, function(state)
    print("Watermark:", state and "Shown" or "Hidden")
end)

-- Textbox for config name
SettingsTab:Textbox("Config Name", "default", function(text)
    print("Config name:", text)
end)

-- You can also use the toggle function to show/hide the UI
-- UILib:Toggle() -- This will toggle the UI visibility

-- Or destroy it completely
-- UILib:Destroy() -- This will remove the UI from the screen

-- Example of usage in a command
game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed then
        if input.KeyCode == Enum.KeyCode.RightShift then
            UILib:Toggle() -- Toggle UI with RightShift
        elseif input.KeyCode == Enum.KeyCode.Insert then
            UILib:Destroy() -- Destroy UI with Insert
            print("UI Destroyed!")
        end
    end
end)

print("UI Library loaded successfully!")
print("Press RightShift to toggle the UI")
print("Press Insert to destroy the UI")
