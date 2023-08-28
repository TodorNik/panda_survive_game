spawntimer = 2
currscr = 0
music = love.audio.newSource("Kevin MacLeod - Radio Martini.mp3", "stream") --stores game music provided by Free Music Archive and composed by Kevin MacLeod
music:setVolume(0.5)

--loads the game including player and enemy array
function love.load()
Object = require "classic"
require "player"
require "enemy"
music:play()
player = Player()
listOfEnemies = {}
listOfEnemies.proto = {
  x = 600,
  y = 0,
  speed = 100,
}
end

function love.update(dt)

  if not music:isPlaying( ) and player.died == false then
		love.audio.play( music )
  
  elseif player.died == true then
    music:stop()
	end
  
  scr = currscr
  --spawns the enemies after timer runs out and resets timer
  spawntimer = spawntimer - dt
  if spawntimer <= 0 then
    spawnEnemies()
    local leftover = math.abs(spawntimer)
    spawntimer = 1 - leftover
    spawntimer = 1
  end

  for i,v in ipairs(listOfEnemies) do
    --checks whether enemies collide with player
    if CheckCollision(v.x, v.y, v.width, v.height, player.x, player.y, player.width, player.height) then
		table.remove(listOfEnemies, i)
		listOfEnemies = {}
    player.died = true --failure state
	  end
    v:update(dt)
    if v.x < 0 then
      table.remove(listOfEnemies, i)
      currscr = currscr + 1
    end
  end
  if player.died == true and love.keyboard.isDown("r") then
    --restarts the game
    love.load()
    currscr = 0
  end
  player:update(dt)

end

function spawnEnemies() --method that spawns enemies and puts them at a random spot
  if player.died == false then
    local window_width = love.graphics.getHeight()
    table.insert(listOfEnemies, Enemy(600, love.math.random(window_width), love.math.random(150, 250)))
  end
end


function CheckCollision(x1,y1,w1,h1, x2,y2,w2,h2)--method calculates if enemy and player collide
  return x1 < x2+w2 and
         x2 < x1+w1 and
         y1 < y2+h2 and
         y2 < y1+h1
end

function love.draw()
  bimg = love.graphics.newImage("bsky1.png")--sets the background
  love.graphics.draw(bimg,0,0,0,1.2,1.2)

  if player.died == false then --if player is alive draw the game running
    local window_width = love.graphics.getWidth()
    player:draw()
    for i,v in ipairs(listOfEnemies) do
        v:draw()
    end
    love.graphics.print("Player Score: " ..currscr, 20, 50)
  else --if player dies load the game over screen
    finalscore = currscr
    love.graphics.print("GAME OVER", 400, 100)
    love.graphics.print("TOTAL SCORE: " ..finalscore, 400, 150)
    love.graphics.print("Press R to continue", 400,200)
  end
  end
