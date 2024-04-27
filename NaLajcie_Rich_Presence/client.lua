Citizen.CreateThread(function()
    while true do
        local PlayerName = GetPlayerName(PlayerId())
        local id = GetPlayerServerId(PlayerId())

        SetDiscordAppId()                                 -- This is the Application ID (Replace this with you own)
        SetRichPresence(PlayerName.." ["..id.."]")        -- This will fetch the name and ID

        SetDiscordRichPresenceAsset('Icon')               -- Here you have to provide an image name for the "large" icon.

        SetDiscordRichPresenceAssetText('FiveM Roleplay') -- Here you can add hover text for the "large" icon. 

        --[[ 

         --   Here you can add buttons that will display in your Discord Status
         --   First paramater is the button index (0 or 1), second is the title and 
         --   last is the url (this has to start with "fivem://connect/" or "https://")

        ]]--

        SetDiscordRichPresenceAction(0, "Join discord", "fivem://connect/YourIpHere")

        --[[ 

        --   You can add more Natives Here 
        --   SetDiscordRichPresenceAction(1, "Example", "https://example.com")
        --   Updates every 1 minute

        ]]--

        Citizen.Wait(60000)
    end
end)
