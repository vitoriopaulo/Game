class Ship
	def initialize
		@image = Gosu::Image.new("Ufogame_images/ufo.png")
		@x = MyWindow::WIDTH/2
		@y = MyWindow::HEIGHT - @image.height 
		@z = 0
	end

	def update
		if Gosu::button_down? Gosu::KbLeft
			@x -= 5

		elsif Gosu::button_down? Gosu::KbRight
			@x += 5

		elsif Gosu::button_down? Gosu::KbUp
			@y -= 5
		elsif Gosu::button_down? Gosu::KbDown
			@y += 5
		end
	end

	def draw
		@image.draw(@x,@y,@z)
	end
end


class Asteroid_01
	def initialize
		@image = Gosu::Image.new("Ufogame_images/Asteroid_01.png")
		@x = MyWindow::WIDTH/2
		@y = 0
		@z = 3
		@speed = rand(5..7)
	end

	def update
			@y += @speed
	end


	def draw 
		@image.draw(@x,@y,@z)
	end 
end


class Asteroid_02
	def initialize
		@image = Gosu::Image.new("Ufogame_images/Asteroid_02.png")
		@x = MyWindow::WIDTH/5
		@y = 0
		@z = 5
		@speed = rand(5..12)
	end

	def update
			@y += @speed
	end

	def draw
		@image.draw(@x,@y,@z)
	end
end


class Asteroid_03
	def initialize
		@image = Gosu::Image.new("Ufogame_images/Asteroid_03.png")
		@x = MyWindow::WIDTH/1.25
		@y = 0
		@z = 2
		@speed = rand(3..7)
	end

	def update
			@y += @speed
	end

	def draw
		@image.draw(@x,@y,@z)
	end
end

