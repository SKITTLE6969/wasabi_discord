-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------

local seconds = 1000
Config = {}

Config.checkForUpdates = true -- Check for updates?

Config.DiscordInfo = {
    botToken = 'BOT_TOKEN_HERE', -- Your Discord bot token here
    guildID = '700354720488751184', -- Your Discord's server ID here(Aka Guild ID)
}

Config.DiscordWhitelist = { -- Restrict if someone can fly in if they lack specific Discord role(s)
    enabled = false, -- Enable?
    deniedMessage = 'https://discord.gg/895cQZg76N : Join our Discord server and verify to play!', -- Message for those who lack whitelisted role(s)
    whitelistedRoles = {
      --'ROLE_ID_HERE',  
        '1086528072121061489', -- Maybe like a civilian role or whitelisted role(can add multiple to table)
    }
}

Config.DiscordQueue = {
    enabled = true, -- Enable? Requires
    refreshTime = 2.5 * seconds, -- How long between queue refreshes(Default: 2.5 * seconds)
    maxConnections = GetConvar("sv_maxclients", 64), -- How many slots do you have avaliable in total for server
    title = 'Urban City Sri Lanka', -- Maybe server name here?

    image = { -- Image shown on adaptive card
        link = 'https://cdn.discordapp.com/attachments/1059759872276697198/1087286372441804800/standard_2.gif', -- Link to image, maybe like a server logo?
        width = '512px', -- Width of image(would not go much higher than this)
        height = '300px' -- Height
    },

    currentQueueText = 'Current Queue', -- Title above queue but below image

    currentSpotText = 'Current Queue: %s | Total Online: %s/%s', -- Current queue place text

    footerText = 'Visit our web store to reserve a priority queue!', -- The text right above the buttons on the adaptive card

    overflowQueueText = 'And %s more players!\n',

    buttons = { -- The little buttons at the bottom of the screen
        button1 = { -- Webstore button config
            title = 'Webstore',
            iconUrl = 'https://i.imgur.com/8msLEGN.png', -- Little button icon image link
            url = 'https://www.urbancity.lk/' -- Link button goes to
        },
        button2 = {
            title = 'Discord',
            iconUrl = 'https://i.imgur.com/4a1Rdgf.png',
            url = 'https://discord.gg/895cQZg76N'
        }
    },
    roles = {

        { -- This ones provided by default are purely for example
            name = 'Citizen', -- Name you want displayed as role on queue card
            roleId = '1086528072121061489', -- Role ID of role
            points = 0 -- Points to add to queue(Higher the number, higher the queue)
        },

        {
            name = 'Premium Citizen',
            roleId = '1086882319866019930',
            points = 10
        },

        {
            name = 'Staff',
            roleId = '1086528072163020831',
            points = 60
        },
    }
}

strings = {
    verifyConnection = '[wasabi_discord] Verifying connection...',
    verifyLauncher = '[wasabi_discord] Verifying Launcher...',
    verifyDiscord = '[wasabi_discord] Verifying Discord...',
    verifyQueue = '[wasabi_discord] Adding to queue...',
    notInDiscord = '[wasabi_discord] You must join the discord: https://discord.gg/ to fly in!',
    noDiscord = '[wasabi_discord] You must have Discord downloaded, installed, and running to connect!',
    error = '[wasabi_discord] An error has occured, please try again!'
}
