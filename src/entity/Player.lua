--[[
    GD50
    Pokemon

    Author: Colton Ogden
    cogden@cs50.harvard.edu
]]

Player = Class{__includes = Entity}

function Player:init(def)
    Entity.init(self, def)

    self.party = Party {
        pokemon = {
            Pokemon(POKEMON_DEFS['aardart'], 5),
            Pokemon(POKEMON_DEFS['agnite'], 5),
            Pokemon(POKEMON_DEFS['anoleaf'], 5),
            Pokemon(POKEMON_DEFS['bamboon'], 5),
            Pokemon(POKEMON_DEFS['cardiwing'], 5)     
        }
    }
end