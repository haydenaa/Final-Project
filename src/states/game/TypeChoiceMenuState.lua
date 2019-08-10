TypeChoiceMenuState = Class{__includes = BaseState}

require 'src/states/game/ViewOpponentStatMenuState'
require 'src/states/game/ViewPlayerStatMenuState'

function TypeChoiceMenuState:init(player, type)
    local itemsTable = {}
    if type == 'opponent' then
    if #POKEMON[1] > 0 then
        table.insert(itemsTable, {
            text = 'Aardart',
            onSelect = function()
                gStateStack:pop()
                gStateStack:push(ViewOpponentStatMenuState('aardart'))
            end
        })
    end
    if #POKEMON[2] > 0 then
        table.insert(itemsTable, {
            text = 'Agnite',
            onSelect = function()
                gStateStack:pop()
                gStateStack:push(ViewOpponentStatMenuState('agnite'))
            end
        })
    end
    if #POKEMON[3] > 0 then
        table.insert(itemsTable, {
            text = 'Anoleaf',
            onSelect = function() 
                gStateStack:pop()
                gStateStack:push(ViewOpponentStatMenuState('anoleaf'))
            end
        })
    end
    if #POKEMON[4] > 0 then
        table.insert(itemsTable, {
            text = 'Bamboon',
            onSelect = function() 
                gStateStack:pop()
                gStateStack:push(ViewOpponentStatMenuState('bamboon'))
            end
        })
    end
    if #POKEMON[5] > 0 then
        table.insert(itemsTable, {
            text = 'Cardwing',
            onSelect = function()
                gStateStack:pop()
                gStateStack:push(ViewOpponentStatMenuState('cardiwing'))
            end
        })
    end
    end

    if type == 'viewPlayer' then
        table.insert(itemsTable, {
            text = 'Aardart',
            onSelect = function()
                gStateStack:pop()
                gStateStack:push(ViewPlayerStatMenuState(player, 1))
            end
        })
        if #POKEMON[2] > 0 then
        table.insert(itemsTable, {
            text = 'Agnite',
            onSelect = function()
                gStateStack:pop()
                gStateStack:push(ViewPlayerStatMenuState(player, 2))
            end
        })
        end
        if #POKEMON[3] > 0 then
        table.insert(itemsTable, {
            text = 'Anoleaf',
            onSelect = function()
                gStateStack:pop()
                gStateStack:push(ViewPlayerStatMenuState(player, 3))
            end
        })
        end
        if #POKEMON[4] > 0 then
        table.insert(itemsTable, {
            text = 'Bamboon',
            onSelect = function()
                gStateStack:pop()
                gStateStack:push(ViewPlayerStatMenuState(player, 4))
            end
        })
        end
        if #POKEMON[5] > 0 then
        table.insert(itemsTable, {
            text = 'Cardiwing',
            onSelect = function()
                gStateStack:pop()
                gStateStack:push(ViewPlayerStatMenuState(player, 5))
            end
        })
        end
    end 

    if type == 'selectPlayer' then
        table.insert(itemsTable, {
            text = 'Aardart',
            onSelect = function()
                gStateStack:pop()
                CURRENTLY_SELECTED = 1
            end
        })
        if #POKEMON[2] > 0 then
        table.insert(itemsTable, {
            text = 'Agnite',
            onSelect = function()
                gStateStack:pop()
                CURRENTLY_SELECTED = 2
            end
        })
        end
        if #POKEMON[3] > 0 then
        table.insert(itemsTable, {
            text = 'Anoleaf',
            onSelect = function()
                gStateStack:pop()
                CURRENTLY_SELECTED = 3
            end
        })
        end
        if #POKEMON[4] > 0 then
        table.insert(itemsTable, {
            text = 'Bamboon',
            onSelect = function()
                gStateStack:pop()
                CURRENTLY_SELECTED = 4
            end
        })
        end
        if #POKEMON[5] > 0 then
        table.insert(itemsTable, {
            text = 'Cardiwing',
            onSelect = function()
                gStateStack:pop()
                CURRENTLY_SELECTED = 5
            end
        })
        end
    end

    self.menu = Menu {
        x = 10,
        y = 0,
        width = 384,
        height = 30 * #itemsTable,
        cursor = true,
        items = itemsTable
    }
end

function TypeChoiceMenuState:update(dt)
    self.menu:update()
end

function TypeChoiceMenuState:render()
    self.menu:render()
end