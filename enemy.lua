Enemy = Object:extend()

function Enemy:new(x, y, z)
    self.image = love.graphics.newImage("snake.png")
    local window_width = love.graphics.getWidth()
    self.x = x
    self.y = y
    self.speed = z
    self.width = self.image:getWidth()
    self.height = self.image:getHeight()
end

function Enemy:update(dt)
    self.x = self.x - self.speed * dt
end

function Enemy:draw()
    love.graphics.draw(self.image, self.x, self.y)
end
