--[[
    GD50
    Pokemon

    Author: Colton Ogden
    cogden@cs50.harvard.edu
]]

PlayState = Class{__includes = BaseState}

require 'src/states/game/EnterViewStatState'

function PlayState:init()
    self.level = Level()

    gSounds['field-music']:setLooping(true)
    gSounds['field-music']:play()

    self.dialogueOpened = false
end

function PlayState:update(dt)
    if not self.dialogueOpened and love.keyboard.wasPressed('p') then
        
        -- heal player pokemon
        gSounds['heal']:play()
        self.level.player.party.pokemon[CURRENTLY_SELECTED].currentHP = self.level.player.party.pokemon[CURRENTLY_SELECTED].HP
        
        -- show a dialogue for it, allowing us to do so again when closed
        gStateStack:push(DialogueState('Your ' .. self.level.player.party.pokemon[CURRENTLY_SELECTED].name .. ' has been healed!',
    
        function()
            self.dialogueOpened = false
        end))
    end

    if love.keyboard.wasPressed('k') and HAS_BATTLED == true then
        gStateStack:push(EnterViewStatState(self.level.player))
    end

    self.level:update(dt)
end

function PlayState:render()
    self.level:render()
end