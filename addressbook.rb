require "./person.rb"

class AddressBook
  attr_reader :address_book

  def initialize
    @address_book = []
  end

  def add(*person)
    @address_book << person.fullname
  end
end
