Player = Object:extend()

function Player:new()
    --initializes the player and all the required parameters
    self.image = love.graphics.newImage("panda.png")
    self.x = 5
    self.y = 200
    self.died = false
    self.speed = 300
    self.width = self.image:getWidth()*0.7
    self.height = self.image:getHeight()*0.7
end

function Player:update(dt)
    --listens for keys and updates the player location based on them
    if love.keyboard.isDown("up") then
        self.y = self.y - self.speed * dt
    elseif love.keyboard.isDown("down") then
        self.y = self.y + self.speed * dt
    elseif love.keyboard.isDown("left") and self.x > 0 then
        self.x = self.x - self.speed * dt
    elseif love.keyboard.isDown("right") then
        self.x = self.x + self.speed * dt
    end
    
    --dissalows player from moving above or below the screen's width
    local window_width = love.graphics.getHeight()
        if self.y +self.width > window_width then
        self.y = window_width - self.width
    elseif self.y < 0 then
        self.y = 0
    end
end

function Player:draw()
    --draws player using image and coordinates of the object
    love.graphics.draw(self.image, self.x, self.y,0,1,1,55,47)
end
