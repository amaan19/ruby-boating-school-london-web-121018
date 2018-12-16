require 'pry'
class Student

  attr_reader :first_name

  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(name, status, instructor)
    BoatingTest.new(self, name, status, instructor)
end

  def self.find_student(name)
    @@all.find {|student| student.first_name == name}
  end

  def tests
    BoatingTest.all.select {|test| test.student == self}
  end

  def grade_percentage
    passed_tests = 0
    self.tests.each {|test|
      if test.status == "passed"
      passed_tests += 1
    end
    }
    (passed_tests.to_f/self.tests.length)*100
end
  end
