spawntimer = 2
currscr = 0

function love.load()
Object = require "classic"
require "player"
require "enemy"
player = Player()
listOfEnemies = {}
listOfEnemies.proto = {
  x = 600,
  y = 0,
  speed = 100,
}
end

function love.update(dt)
    player:update(dt)
    spawntimer = spawntimer - dt
  if spawntimer <= 0 then
    spawnEnemies()
    local leftover = math.abs(spawntimer)
    spawntimer = 1 - leftover
    spawntimer = 1
  end

  for i,v in ipairs(listOfEnemies) do
    if CheckCollision(v.x, v.y, v.image:getWidth(), v.image:getHeight(), player.x, player.y, player.image:getWidth(), player.image:getHeight()) then
		table.remove(listOfEnemies, i)
		listOfEnemies = {}
    currscr = 0
    love.load()
	  end
    v:update(dt)
    if v.x < 0 then
      table.remove(listOfEnemies, i)
      currscr = currscr + 1
    end
  end
end

function spawnEnemies()
    local window_width = love.graphics.getHeight()
    table.insert(listOfEnemies, Enemy(600, love.math.random(window_width), love.math.random(150, 350)))
end

function CheckCollision(x1,y1,w1,h1, x2,y2,w2,h2)
  return x1 < x2+w2 and
         x2 < x1+w1 and
         y1 < y2+h2 and
         y2 < y1+h1
end

function love.draw()
    local window_width = love.graphics.getWidth()
    love.graphics.rectangle("fill", 0, 0, window_width, 20)
    love.graphics.rectangle("fill", 0, 580, window_width, 20)
    player:draw()
    for i,v in ipairs(listOfEnemies) do
        v:draw()
    end
    love.graphics.print("Player Score: " ..currscr, 20, 50)
end