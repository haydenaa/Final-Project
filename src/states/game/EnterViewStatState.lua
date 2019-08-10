EnterViewStatState = Class{__includes = BaseState}

require 'src/states/game/TypeChoiceMenuState'
require 'src/states/game/ViewPlayerStatMenuState'

function EnterViewStatState:init(player)
    self.menu = Menu {
        x = 10,
        y = 0,
        width = 384,
        height = VIRTUAL_HEIGHT / 2,
        cursor = true,
        items = {
            {
                text = 'Select Current Pokemon',
                onSelect = function() 
                    gStateStack:pop()
                    gStateStack:push(TypeChoiceMenuState(player, 'selectPlayer'))
                end    
            },
            {
                text = 'View Player Pokemon Stats',
                onSelect = function()
                    gStateStack:pop()
                    gStateStack:push(TypeChoiceMenuState(player, 'viewPlayer'))
                end
            },
            {
                text = 'View Opponent Pokemon Average Stats',
                onSelect = function()
                    gStateStack:pop()
                    gStateStack:push(TypeChoiceMenuState(player, 'opponent'))
                end
            }
        }
    }
end

function EnterViewStatState:update(dt)
    self.menu:update()
end

function EnterViewStatState:render()
    self.menu:render()
end