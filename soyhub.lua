repeat wait() until game:IsLoaded()
if not game:IsLoaded() then return end

pcall(function()
    game.StarterGui:SetCore("SendNotification", {
        Title = "SOY HUB",
        Text = "Iniciando o script...",
        Duration = 5
    })
end)

local success, result = pcall(function()
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/SOYHUBBF/SOY-SCRIPT/main/soyhub.lua"))()
end)

if not success then
    warn("Erro ao carregar o script:", result)
    pcall(function()
        game.StarterGui:SetCore("SendNotification", {
            Title = "SOY HUB",
            Text = "Falha ao carregar funções principais.",
            Duration = 6
        })
    end)
end
