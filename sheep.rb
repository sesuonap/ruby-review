class Sheep
    @@count = 0
  def initialize
    @name = "Dolly"
    @@count += 1
    @id = @@count

    @awake_percentage = 50
  end
  def id 
    @id 
  end
  def self.how_many # Public Class method
    puts "there are #{@@count} sheep"
  end
  def is_awake?
    awake_percentage > rand(0..100)
  end

  private # Anything below this line is a private method

  def awake_percentage
    @awake_percentage
  end 
end 

sheep_a = Sheep.new
p sheep_a.is_awake?