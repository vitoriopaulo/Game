require 'gosu'
require './Ship_rev05.rb'

class MyWindow < Gosu::Window
	WIDTH = 1275
	HEIGHT = 750
  

  def initialize
   super(WIDTH, HEIGHT, false) #call initialize on parent 
   self.caption = 'HSpace Game!'
   @ship = Ship.new 
   @background_image = Gosu::Image.new("Ufogame_images/Space.jpg")
   @beep = Gosu::Sample.new("media/beep.wav")
   @asteroids = []
 end

  def update
  	@ship.update
    
    if rand(1..75) < 3
      @asteroids << Asteroid_01.new 
    end
    if rand(1..100) < 4
      @asteroids << Asteroid_02.new 
    end    
    if rand(1..75) < 4
      @asteroids << Asteroid_03.new 
    end


      @asteroids.each do |asteroid|
        if Gosu::distance(asteroid.x, asteroid.y, ship.x, ship.y) then
        @beep.play || 

        asteroid.update
    end
  end

  def draw
  	@ship.draw
    @background_image.draw(0,0,-1)
    @asteroids.each do |asteroid|
        asteroid.draw
    end
	end
end

window = MyWindow.new
window.show