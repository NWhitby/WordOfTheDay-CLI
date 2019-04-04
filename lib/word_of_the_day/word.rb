class WordOfTheDay::Word

  attr_accessor :name, :date, :part_of_speech,  :pronunciation, :definition, :did_you_know,  :example_1, :example_2

  @@all = []

  def initialize(attr_hash)
    attr_hash.each {|key, value| send("#{key}=", value)}
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end
  
end
