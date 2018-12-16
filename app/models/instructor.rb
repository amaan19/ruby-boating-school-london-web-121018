class Instructor

  @@all = []

  attr_reader :name

  def initialize (name)
    @name = name
    @@all << self
  end

  def pass_student(student_name, test_name)
    BoatingTest.all.each  {|test|
      if test.name == test_name && test.student == student_name
        test.status = "passed"
        return test
      else new_test = BoatingTest.new(Student.new("student_name"), test_name, "passed", self)
        return new_test
      end }
    end

    def fail_student(student_name, test_name)
      BoatingTest.all.each  {|test|
        if test.name == test_name && test.student == student_name
          test.status = "failed"
          return test
        else new_test = BoatingTest.new(Student.new("student_name"), test_name, "failed", self)
          return new_test
        end }
      end


end
