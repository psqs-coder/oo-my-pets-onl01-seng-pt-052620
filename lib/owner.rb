class Owner
  attr_reader :species, :name
  attr_accessor :cats, :dogs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @cats = []
    @dogs = []
    end
    
  def self.all 
    @@all
    end

  def self.count
    self.all.length
    end
    
  def say_species
    "I am a #{@species}."
    end
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    self.dogs.each {|dog| dog.mood = "happy"}
  end
  
  def feed_cats
    self.cats.each {|cat| cat.mood = "happy"}
  end
  
  def sell_pets
    sell.cats.each do |cat|
      self.cats.delete(cat)
      cat.mood = "nervous"
      cat.owner = nil
    end
    self.dogs.each do |dog|
      self.dogs.delete(dog)
      dog.owner = "nervous"
      dog.mood = nil    
    end
  end
  
  def list_pets
    number_of_dogs = self.dogs.count
    number_of_cats = self.cats.count
    "I have #{number_of_dogs} dog(s), and #{number_of_cats} cat(s)."
  end

  def self.reset_all
    self.all.clear
  end
end


    
    
  
