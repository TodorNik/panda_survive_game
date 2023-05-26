Player = Object:extend()

function Player:new()
    self.image = love.graphics.newImage("panda.png")
    self.x = 5
    self.y = 200
    self.speed = 300
    self.width = self.image:getWidth()
    self.height = self.image:getHeight()
end

function Player:update(dt)
    if love.keyboard.isDown("up") then
        self.y = self.y - self.speed * dt
    elseif love.keyboard.isDown("down") then
        self.y = self.y + self.speed * dt
    end
    
    local window_width = love.graphics.getHeight()
        if self.y +self.width > window_width then
        self.y = window_width - self.width
    elseif self.y < 0 then
        self.y = 0
    end
end

function Player:draw()
    love.graphics.draw(self.image, self.x, self.y)
end
