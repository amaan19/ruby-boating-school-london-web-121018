class BoatingTest

  attr_accessor :status
  attr_reader :student, :instructor

  @@all = []

def initialize (student, name, status ="pending", instructor)
  @student = student
  @instructor = instructor
  @status = status
  @name = name
  @@all << self 
end

def self.all
  @@all
end



end
