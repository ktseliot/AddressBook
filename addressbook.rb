require "./person.rb"

class AddressBook
  attr_reader :address_book

  def initialize
    @address_book = []
  end

  def add(*person)
    @address_book << person.fullname
  end

  def load_yaml(file)
    data["people"].each do |person|
      counter = 0
      @address_book << Person.new person["first_name"], person["surname"], person["dob"]
      person["emails"].each do |email|
        @address_book[counter].add_email(email)
      end
      person["phone_numbers"].each do |phone|
        @address_book[counter].add_phone(phone)
      end
      counter +=1
    end
  end
end
