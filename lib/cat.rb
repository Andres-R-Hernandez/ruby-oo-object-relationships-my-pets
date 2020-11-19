class Cat
  # code goes here
  attr_accessor :mood, :owner
  attr_reader :name

  @@all = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all[self.all.find_index { |inst| inst.name == name }]
  end

  def self.create
  end

end
