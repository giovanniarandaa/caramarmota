repeat wait() until game:IsLoaded()
local Venyx = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stefanuk12/Venyx-UI-Library/main/source2.lua"))()
local UI = Venyx.new({
  title = "Animal Simulator - By Pirator/Lucky"
})

local Main = UI:addPage({
  title = "Main",
  icon = 887262219
})

local Gameplaydiv = Main:addSection({
  title = "Gameplay"
})

local collecting = false

Gameplaydiv:addToggle({
title = "Collect Chests",
toggled = nil,
callback = function(value)
collecting = value
while wait(1) and collecting do
  game:GetService("ReplicatedStorage").TreasureEvent:FireServer(workspace.Treasures.Treasure5)
end
end})


UI:SelectPage({
  page = UI.pages[1],
  toggle = true
})