# callsign-website

This is for the website we use to allow people to request callsigns and store them. We will be adding fuctionality to make this more inclusive to other things later in time.

Web Service will have different operation that can be called based on the discord id stored in a database relational with the Vatsim Id of the user

- GetVatsimRatingInfo(DiscordId)      [Pull all the Rating information for a user based on the Discord Id in our database]
- GetVatsimHrsInfo(DiscordId)         [Pull the hours for a user as controller/pilot based on Discord Id]
- GetLatestFlighPlan(DiscordId)       [Pull latest flight plan  for a pilot based on the Discord Id]
- GetAllFlighPlans(DiscordId)         [Pull all the flights plan filed by a pilot based on the Discord Id]
- GetOnlineControllers                [Pull all the areas that are online at the moment on VATSIM]
- GetAllATCSessions(DiscordId)        [Pull the all ATC session from a user based on the Discord Id]
- GetLatestATCSessions(DiscordId)     [Pull the latest ATC session from a user based on the Discord Id]
- GetVasimCurrentFlights              [All the flights currently on Vatsim network]
