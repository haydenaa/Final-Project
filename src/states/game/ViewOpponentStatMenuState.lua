ViewOpponentStatMenuState = Class{__includes = BaseState}

function ViewOpponentStatMenuState:init(type)

    local pokemons = {}

    if #POKEMON > 0 then
    if type == 'aardart' then
    for k, pokemon in pairs(POKEMON[1]) do
        if pokemon then
        local currentHP = pokemon.HP
        local currentAttack = pokemon.attack
        local currentDefense = pokemon.defense
        local currentSpeed = pokemon.speed

        table.insert(pokemons, {
            name = pokemon.name,
            hp = currentHP,
            attack = currentAttack,
            defense = currentDefense,
            speed = currentSpeed
        })
        end
    end
    end
    if type == 'agnite' then
    for k, pokemon in pairs(POKEMON[2]) do
        if pokemon then
        local currentHP = pokemon.HP
        local currentAttack = pokemon.attack
        local currentDefense = pokemon.defense
        local currentSpeed = pokemon.speed

        table.insert(pokemons, {
            name = pokemon.name,
            hp = currentHP,
            attack = currentAttack,
            defense = currentDefense,
            speed = currentSpeed
        })
        end
    end
    end
    if type == 'anoleaf' then
    for k, pokemon in pairs(POKEMON[3]) do
        if pokemon then
        local currentHP = pokemon.HP
        local currentAttack = pokemon.attack
        local currentDefense = pokemon.defense
        local currentSpeed = pokemon.speed

        table.insert(pokemons, {
            name = pokemon.name,
            hp = currentHP,
            attack = currentAttack,
            defense = currentDefense,
            speed = currentSpeed
        })
        end
    end
    end
    if type == 'bamboon' then
    for k, pokemon in pairs(POKEMON[4]) do
        if pokemon then
        local currentHP = pokemon.HP
        local currentAttack = pokemon.attack
        local currentDefense = pokemon.defense
        local currentSpeed = pokemon.speed

        table.insert(pokemons, {
            name = pokemon.name,
            hp = currentHP,
            attack = currentAttack,
            defense = currentDefense,
            speed = currentSpeed
        })
        end
    end
    end
    if type == 'cardiwing' then
    for k, pokemon in pairs(POKEMON[5]) do
        if pokemon then
        local currentHP = pokemon.HP
        local currentAttack = pokemon.attack
        local currentDefense = pokemon.defense
        local currentSpeed = pokemon.speed

        table.insert(pokemons, {
            name = pokemon.name,
            hp = currentHP,
            attack = currentAttack,
            defense = currentDefense,
            speed = currentSpeed
        })
        end
    end
    end
    else
        gStateStack:pop()
    end

    local pokemonItems = {}
    local pokemonName = type:gsub("^%l", string.upper)
    local pokemonHP = 0
    local pokemonAttack = 0
    local pokemonDefense = 0
    local pokemonSpeed = 0

    for k, pokemon in pairs(pokemons) do
        pokemonHP = pokemonHP + pokemon.hp
        pokemonAttack = pokemonAttack + pokemon.attack
        pokemonDefense = pokemonDefense + pokemon.defense
        pokemonSpeed = pokemonSpeed + pokemon.speed

        if k == #pokemons then
            pokemonHP = math.floor(pokemonHP / #pokemons)
            pokemonAttack = math.floor(pokemonAttack / #pokemons)
            pokemonDefense = math.floor(pokemonDefense / #pokemons)
            pokemonSpeed = math.floor(pokemonSpeed / #pokemons)
        end
    end

    table.insert(pokemonItems, {
        text = " Average " .. tostring(pokemonName) .. " HP: " .. tostring(pokemonHP) .. 
            " Attack: " .. tostring(pokemonAttack) .. " Defense: " .. tostring(pokemonDefense) .. " Speed: " .. tostring(pokemonSpeed),
        onSelect = function()
            gStateStack:pop()
        end
    })

    self.menu = Menu {
        x = 0,
        y = 0,
        width = 384,
        height = VIRTUAL_HEIGHT / 2,
        cursor = false,
        items = pokemonItems
    }
end

function ViewOpponentStatMenuState:update(dt)
    self.menu:update()
end

function ViewOpponentStatMenuState:render()
    self.menu:render()
end