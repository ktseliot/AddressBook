class Person
  attr_accessor :first_name, :surname, :fullname, :dob
  attr_reader :emails, :phone_numbers

  def initialize(first_name, surname, dob=nil)
    @first_name = first_name
    @surname = surname
    @dob = dob
    @emails = []
    @phone_numbers = []
  end

  def emails
    @emails
  end

  def add_email(string)
    @emails << string
  end

  def remove_email(val)
    @emails.delete_at(val)
  end

  def add_phone(string)
    @phone_numbers << string
  end

  def remove_phone(val)
    @phone_numbers.delete_at(val)
  end
end
