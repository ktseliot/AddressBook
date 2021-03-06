require 'date'

class Person
  attr_accessor :first_name, :surname, :fullname, :dob
  attr_reader :emails, :phone_numbers

  def initialize(first_name, surname, dob=nil)
    @first_name = first_name
    @surname = surname
    @dob = Date.parse(dob) if dob
    @emails = []
    @phone_numbers = []
  end

  def fullname
    @first_name + ' ' + @surname
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

  def phone_numbers
    @phone_numbers
  end

  def add_phone(string)
    @phone_numbers << string
  end

  def remove_phone(val)
    @phone_numbers.delete_at(val)
  end

  def to_s
    "#{@first_name} #{@surname} was born on #{@dob}.\n
    Their email addresses are: #{@emails}.\n
    Their phone numbers are #{@phone_numbers}."
  end

  def print_details
    puts ""
    puts "#{fullname}"
    puts "-" * fullname.length
    puts "Date of Birth: #{@dob}"
    puts "Email Addresses:\n"
    @emails.each do |email|
      puts "- #{email}"
    end
    "\nPhone Numbers:\n"
    @phone_numbers.each do |num|
      puts "- " + num
    end
  end
end

class FamilyMember < Person
  attr_accessor :relationship

  def initialize(first_name, surname, dob=nil, relationship=nil)
    @relationship = relationship
  end
end
