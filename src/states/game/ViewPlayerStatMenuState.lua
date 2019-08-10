ViewPlayerStatMenuState = Class{__includes = BaseState}

function ViewPlayerStatMenuState:init(player, type)
    self.player = player
    self.pokemon = self.player.party.pokemon[type]
    self.menu = Menu {
        x = 0,
        y = 0,
        width = 384,
        height = VIRTUAL_HEIGHT / 2,
        cursor = false,
        items = {
            {
                text = " " .. tostring(self.pokemon.name) .. ' Level: ' .. tostring(self.pokemon.level) .. " HP: " .. 
                    tostring(self.pokemon.HP) .. " Attack: " .. tostring(self.pokemon.attack) 
                    .. " Defense: " .. tostring(self.pokemon.defense) .. " Speed: " .. tostring(self.pokemon.speed),
                onSelect = function()
                    gStateStack:pop()
                end
            }
        }
    }
end

function ViewPlayerStatMenuState:update(dt)
    self.menu:update()
end

function ViewPlayerStatMenuState:render()
    self.menu:render()
end