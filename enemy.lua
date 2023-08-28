Enemy = Object:extend()

function Enemy:new(x, y, z)
    --constructs an enemy object from given arguments
    self.image = love.graphics.newImage("snake.png")
    self.x = x
    self.y = y
    self.speed = z
    self.width = self.image:getWidth()*0.7
    self.height = self.image:getHeight()*0.7
end

function Enemy:update(dt)
    --makes the enemy move across the X axis
    self.x = self.x - self.speed * dt
end

function Enemy:draw()
    --draws enemies at its desired position
    love.graphics.draw(self.image, self.x , self.y,0,1,1,47,53)
end
