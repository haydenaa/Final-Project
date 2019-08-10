StatMenuState = Class{__includes = BaseState}

function StatMenuState:init(pokemon)

    self.pokemon = pokemon

    self.currentHP = pokemon.HP
    self.currentAttack = pokemon.attack
    self.currentDefense = pokemon.defense
    self.currentSpeed = pokemon.speed
    self.hpIncrease, self.attackIncrease, self.defenseIncrease, self.speedIncrease = self.pokemon:statsLevelUp()

    self.menu = Menu {
        x = VIRTUAL_WIDTH - 192,
        y = VIRTUAL_HEIGHT - 160,
        width = 192,
        height = 160,
        cursor = false,
        items = {
            {
                text = 'HP: ' .. tostring(self.currentHP) .. " + " .. tostring(self.hpIncrease) .. " = " .. tostring(self.currentHP + self.hpIncrease),
                onSelect = function()
                    gStateStack:pop()
                    TakeTurnState:fadeOutWhite()
                end
            },
            {
                text = 'Attack: ' .. tostring(self.currentAttack) .. " + " .. tostring(self.attackIncrease) .. " = " .. tostring(self.currentAttack + self.attackIncrease),
                onSelect = function()
                    gStateStack:pop()
                    TakeTurnState:fadeOutWhite()
                end
            },
            {
                text = 'Defense: ' .. tostring(self.currentDefense) .. " + " .. tostring(self.defenseIncrease) .. " = " .. tostring(self.currentDefense + self.defenseIncrease),
                onSelect = function()
                    gStateStack:pop()
                    TakeTurnState:fadeOutWhite()
                end
            },
            {
                text = 'Speed: ' .. tostring(self.currentSpeed) .. " + " .. tostring(self.speedIncrease) .. " = " .. tostring(self.currentSpeed + self.speedIncrease),
                onSelect = function()
                    gStateStack:pop()
                    TakeTurnState:fadeOutWhite()
                end
            }
        }
    }
end

function StatMenuState:update(dt)
    self.menu:update()
end

function StatMenuState:render()
    self.menu:render()
end

