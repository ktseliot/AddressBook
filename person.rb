class Person
  attr_accessor :first_name, :surname, :fullname, :dob

  def initialize(first_name, surname, dob=nil)
    @first_name = first_name
    @surname = surname
    @dob = dob
  end
end
