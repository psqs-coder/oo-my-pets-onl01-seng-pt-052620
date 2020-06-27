class Owner
  attr_reader :species, :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
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
  
  
  def self.reset_all
    self.all.clear
    
    
  
