Citizen.CreateThread(function()
    while true do
        local PlayerName = GetPlayerName(PlayerId())
        local id = GetPlayerServerId(PlayerId())

        SetDiscordAppId()                                 -- To jest identyfikator aplikacji (zastąp go własnym) | This is the Application ID (Replace this with you own)
        SetRichPresence(PlayerName.." ["..id.."]")        -- Spowoduje to pobranie nazwy gracza i identyfikatora | This will fetch the name and ID

        SetDiscordRichPresenceAsset('Icon')               -- Tutaj musisz podać nazwę obrazu dla „dużej” ikony.  | Here you have to provide an image name for the "large" icon.

        SetDiscordRichPresenceAssetText('FiveM Roleplay') -- Here you can add hover text for the "large" icon.   | Tutaj możesz dodać tekst po najechaniu kursorem na „dużą” ikonę.

        --[[ 

         --   Here you can add buttons that will display in your Discord Status,         | Tutaj możesz dodać przyciski, które będą wyświetlane w Twoim statusie na Discordzie,
         --   First paramater is the button index (0 or 1), second is the title and      | Pierwszy parametr to indeks przycisku (0 lub 1), drugi to tytuł i
         --   last is the url (this has to start with "fivem://connect/" or "https://")  | ostatni to adres URL (musi zaczynać się od „fivem://connect/” lub „https://”)

        ]]--

        SetDiscordRichPresenceAction(0, "Join discord", "fivem://connect/YourIpHere")

        --[[ 

        --   You can add more Natives Here vvv                                  | Możesz dodać więcej tubylców tutaj vvv
        --   SetDiscordRichPresenceAction(1, "Example", "https://example.com")  | SetDiscordRichPresenceAction(1, "Przykład", "https://example.com")
        --   Updates every 1 minute                                             |  Aktualizacje co 1 minutę

        ]]--

        Citizen.Wait(60000)
    end
end)